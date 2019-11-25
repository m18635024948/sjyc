/*********************************************
 * ウォッシャブルGILET用JS
 *********************************************/
//--------------------------------------------
// 読み込み時
//--------------------------------------------
function initOptionGiletWashable() {

	// GILETモデル
	jQuery('#wg_giletModel').change(function(){
		// 選択中のGILETモデルを取得
		var giletModel = jQuery('#wg_giletModel').val();

		if (giletModel == "選択" || !giletModelDefaultList[giletModel]) {
			// 未選択状態、または想定外の場合はスルー
			return;
		}

		var productFabricNo = jQuery("#productFabricNo").val();
		var itemCode = "";
		var item = jQuery("#item").val();
		var subItemCode = "04"
		if(item == "01"){
			itemCode = "01"
		}else if(item == "04"){
			itemCode = "04"
		}
		
		//生地チェクフラッグ
		var fabricCheckValue = jQuery("#fabricFlag").val();
		//fabricCheckValue[0]:0 or 1 or 2 
		//fabricCheckValue[1]:エラーメッセージ 
		fabricCheckValue = fabricCheckValue.split("*");
		
		//生地チェク成功の場合
		if((fabricCheckValue[0]=="0"||fabricCheckValue[0]=="2")&&isNotEmpty(productFabricNo)){
			//モデルチェク
			var checkResult = modelCheck(giletModel,productFabricNo,orderPattern,itemCode,subItemCode);
			if(checkResult == "true"){
				//0はモデルチェク成功の場合
				jQuery("#glModelFlag").val("0");
				jQuery("#wg_giletModelCheck").empty();
				jQuery("#fabricMsg").empty();
			}else if(checkResult == "false"){
				//2はモデルチェク失敗の場合
				jQuery("#glModelFlag").val("1"+"*"+getMsgByOneArg('msg065','GILET'));
				setAlert('wg_giletModelCheck',getMsgByOneArg('msg065','GILET'));
			}
		}
		
		// GILETモデルに基づき、各項目をデフォルトへ変更
		// 胸ポケット
		var beforeBreastPkt = jQuery('input[name="coOptionGiletWashableInfo.wgBreastPkt"]:checked').val();
		jQuery('input[name="coOptionGiletWashableInfo.wgBreastPkt"]').val([giletModelDefaultList[giletModel]["og_breastPkt"]]);

		// 腰ポケット
		var beforeWaistPkt = jQuery('input[name="coOptionGiletWashableInfo.wgWaistPkt"]:checked').val();
		jQuery('input[name="coOptionGiletWashableInfo.wgWaistPkt"]').val([giletModelDefaultList[giletModel]["og_waistPkt"]]);

		// 腰ポケット形状
		var beforeWaistPktSpec = jQuery('input[name="coOptionGiletWashableInfo.wgWaistPktSpec"]:checked').val();
		jQuery('input[name="coOptionGiletWashableInfo.wgWaistPktSpec"]').val([giletModelDefaultList[giletModel]["og_waistPktSpec"]]);

		// ステッチ箇所変更
		if (ogStitchModifyList[giletModel]) {
			// 定義がある場合、モデルに基づくチェック状態にする
			jQuery('input[id^="wg_stitchModifyPlace_id"]').val(ogStitchModifyList[giletModel]);
			jQuery('input[id^="wg_dStitchModifyPlace_id"]').val(ogStitchModifyList[giletModel]);
		} else {
			// 想定外のGiletモデルの場合はすべて変更不可＆チェックなし
			jQuery('input[id^="wg_stitchModifyPlace_id"]').each(function() {
				jQuery(this).prop("disabled", true);
				jQuery(this).prop("checked", false);
			});
		}
		ctrlWgDStitchPlace();

		// バックベルト
		var beforeBackBelt = jQuery('#wg_backBelt').val();
		jQuery('#wg_backBelt').val(giletModelDefaultList[giletModel]["backBelt"]);

		// ボタンホール色指定箇所の有効/無効を制御
		ctrlWgBhColorPlace();

		// ボタン付け糸指定箇所の有効/無効を制御
		ctrlWgByColorPlace();

		// AMF色指定の有効/無効を制御する
		ctrlWgAmfColor();
		

		// 別モデルに変更された場合はアラート表示
		if (tmpWgGiletModel != '選択' && giletModel != tmpWgGiletModel) {
//		    appendAlert('wg_giletModelMsg', "モデルが変更されました。選択項目の見直しを行ってください。");
		    setAlert('wg_giletModelMsg', "モデルが変更されました。選択項目の見直しを行ってください。");
		}
		// 一時保存のモデルを更新
		tmpWgGiletModel = giletModel;
	});

	// 腰ポケット
	jQuery('input[name="coOptionGiletWashableInfo.wgWaistPkt"]').each(function() {
		jQuery(this).change(function(){
			// 選択中の腰ポケット
			var waistPkt = jQuery('input[name="coOptionGiletWashableInfo.wgWaistPkt"]:checked').val();
			if (waistPkt == "0000201") {
				// 腰ポケットが有りの場合は腰ポケット形状を表示する
				jQuery('#wg_waistPkt_yes_area').show();
			} else {
				// 腰ポケットが有りの場合は腰ポケット形状を非表示にする
				jQuery('#wg_waistPkt_yes_area').hide();
			}
		});
	});

	// AMFステッチ
	jQuery('input[name="coOptionGiletWashableInfo.wgStitch"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のAMFステッチ
			var stitchValue = jQuery('input[name="coOptionGiletWashableInfo.wgStitch"]:checked').val();

			if (stitchValue != "0000503") {
				// 有りの場合、関連する項目を有効化
				// ステッチ箇所変更
				jQuery('input[name="coOptionGiletWashableInfo.wgStitchModify"]').prop("disabled", false);
				//jQuery('#wg_stitchModifyPlace').show();
				
				// ダブルステッチ
				jQuery('input[name="coOptionGiletWashableInfo.wgDStitchModify"]').prop("disabled", false);
				//jQuery('#wg_dStitchModifyPlace').show();

				// AMF色指定
				jQuery('input[name="coOptionGiletWashableInfo.wgAmfColor"]').prop("disabled", false);
			} else {
				// 無しの場合、関連する項目を無効化・値変更
				// ステッチ箇所変更
				jQuery('input[name="coOptionGiletWashableInfo.wgStitchModify"]').prop("disabled", true);
				jQuery('#wg_stitchModify_id1').prop("checked", true);
				jQuery('#wg_stitchModify_id1').change();
				jQuery('#wg_stitchModifyPlace').hide();

				// ダブルステッチ
				jQuery('input[name="coOptionGiletWashableInfo.wgDStitchModify"]').prop("disabled", true);
				jQuery('#wg_dStitchModify_id1').prop("checked", true);
				jQuery('#wg_dStitchModify_id1').change();
				jQuery('#wg_dStitchModifyPlace').hide();

				// AMF色指定
				jQuery('input[name="coOptionGiletWashableInfo.wgAmfColor"]').prop("disabled", true);
				jQuery('#wg_amfColor_id1').prop("checked", true);
				jQuery('#wg_amfColor_id1').change();
			}
		});
	});
	jQuery('#wg_stitch_id1').change();

	// ステッチ箇所変更
	jQuery('input[name="coOptionGiletWashableInfo.wgStitchModify"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のステッチ箇所変更
			var stitchModifyValue = jQuery('input[name="coOptionGiletWashableInfo.wgStitchModify"]:checked').val();

			if (stitchModifyValue == "0000601") {
				// 無しの場合は全て無効化
				jQuery('input[id^="wg_stitchModifyPlace_id"]').prop("disabled", true);
				jQuery('#btn_as_wg_stitchModifyPlace').prop("disabled", true);
				jQuery('#btn_ar_wg_stitchModifyPlace').prop("disabled", true);
				jQuery('#wg_stitchModifyPlace').hide();
			} else {
				// 有りの場合は全て有効化
				jQuery('input[id^="wg_stitchModifyPlace_id"]').prop("disabled", false);
				jQuery('#btn_as_wg_stitchModifyPlace').prop("disabled", false);
				jQuery('#btn_ar_wg_stitchModifyPlace').prop("disabled", false);
				jQuery('#wg_stitchModifyPlace').show();
			}
			ctrlWgAmfColor();
			ctrlWgDStitchPlace();
		});
	});
	jQuery('#wg_stitchModify_id1').change();

	// ステッチ箇所(選択肢)
	jQuery('input[id^="wg_stitchModifyPlace_id"]').each(function() {
		jQuery(this).change(function(){
			ctrlWgAmfColor();
			ctrlWgDStitchPlace();
		});
	});

	// ステッチ箇所変更
	jQuery('input[name="coOptionGiletWashableInfo.wgDStitchModify"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のステッチ箇所変更
			var stitchModifyValue = jQuery('input[name="coOptionGiletWashableInfo.wgDStitchModify"]:checked').val();

			if (stitchModifyValue == "0002601") {
				// 無しの場合は全て無効化
				jQuery('input[name="wg_dStitchModifyPlace"]').prop("disabled", true);
				jQuery('#btn_as_wg_dStitchModifyPlace').prop("disabled", true);
				jQuery('#btn_ar_wg_dStitchModifyPlace').prop("disabled", true);
				jQuery('#wg_dStitchModifyPlace').hide();
			} else {
				// 有りの場合は全て有効化
				jQuery('input[name="wg_dStitchModifyPlace"]').prop("disabled", false);
				jQuery('#btn_as_wg_dStitchModifyPlace').prop("disabled", false);
				jQuery('#btn_ar_wg_dStitchModifyPlace').prop("disabled", false);
				jQuery('#wg_dStitchModifyPlace').show();
			}
			ctrlWgAmfColor();
			ctrlWgDStitchPlace();
		});
	});
	jQuery('#wg_dStitchModify_id1').change();

	// AMF色指定(有り/無し)
	jQuery('input[id^="wg_amfColor_"]').each(function() {
		jQuery(this).change(function(){
			ctrlWgAmfColor();
		});
	});
	ctrlWgAmfColor();

	// AMF色指定(全選択)
	jQuery('#btn_as_wg_amfColorPlace').click(function(){
		// 全選択する色を取得
		var allColor = jQuery('#wg_amfColorPlaceAll').val();

		jQuery('#wg_amfColor_div input[type="radio"]').each(function(index, elem){
			elem = jQuery(elem);
			if (elem.val() == allColor) elem.prop('checked', true);
		});
	});

	// AMF色指定箇所
	jQuery('input[id^="wg_amfColorPlace_"]').each(function() {
		jQuery(this).change(function(){
			if (jQuery(this).prop("checked")) {
				// 選択されているの場合、色指定エリアを表示
				jQuery('#'+this.id+'_div').show();
			} else {
				// 選択されていない場合、色指定エリアを非表示
				jQuery('#'+this.id+'_div').hide();
			}
		});
	});

	// ボタンホール色指定(有り/無し)
	jQuery('input[name="coOptionGiletWashableInfo.wgBhColor"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のボタンホール色指定を取得
			var bhColor = jQuery('input[name="coOptionGiletWashableInfo.wgBhColor"]:checked').val();

			if (bhColor == '0001101') {
				// 無しの場合は操作不可
				jQuery('input[id^="wg_bhColorPlace_"]').each(function() {
					jQuery(this).prop("disabled", true);
					jQuery(this).prop("checked", false);
					jQuery('#'+this.id+'_div').hide();
				});
				jQuery('#wg_bhColorPlaceAll').prop("disabled", true);
				jQuery('#btn_as_wg_bhColorPlace').prop("disabled", true);

				// 無しの場合は2階層目を表示しない
				jQuery('#wg_bhColor_div').hide();
			} else {
				// 有りの場合は操作可能
				ctrlWgBhColorPlace();
				jQuery('input[id^="wg_bhColorPlace_"]').each(function() {
//					jQuery(this).prop("disabled", false);
					if (jQuery(this).prop("checked")) {
						// 選択されているの場合、色指定エリアを表示
						jQuery('#'+this.id+'_div').show();
					}
				});
				jQuery('#wg_bhColorPlaceAll').prop("disabled", false);
				jQuery('#btn_as_wg_bhColorPlace').prop("disabled", false);

				// 有りの場合は2階層目を表示
				jQuery('#wg_bhColor_div').show();
			}
		});
	});
	jQuery('#wg_bhColor_id1').change();

	// ボタンホール色指定(全選択)
	jQuery('#btn_as_wg_bhColorPlace').click(function(){
		// 全選択する色を取得
		var allColor = jQuery('#wg_bhColorPlaceAll').val();

		jQuery('#wg_bhColor_div input[type="radio"]').each(function(index, elem){
			elem = jQuery(elem);
			if (elem.val() == allColor) elem.prop('checked', true);
		});
	});

	// ボタンホール色指定箇所
	jQuery('input[id^="wg_bhColorPlace_"]').each(function() {
		jQuery(this).change(function(){
			if (jQuery(this).prop("checked")) {
				// 選択されているの場合、色指定エリアを表示
				jQuery('#'+this.id+'_div').show();
			} else {
				// 選択されていない場合、色指定エリアを非表示
				jQuery('#'+this.id+'_div').hide();
			}
		});
	});
	// ボタンホール色指定箇所の制御
	ctrlWgBhColorPlace();

	// ボタン付け糸指定(有り/無し)
	jQuery('input[name="coOptionGiletWashableInfo.wgByColor"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のボタンホール色指定を取得
			var byColor = jQuery('input[name="coOptionGiletWashableInfo.wgByColor"]:checked').val();

			if (byColor == '0001401') {
				// 無しの場合は操作不可
				jQuery('input[id^="wg_byColorPlace_"]').each(function() {
					jQuery(this).prop("disabled", true);
					jQuery(this).prop("checked", false);
					jQuery('#'+this.id+'_div').hide();
				});
				jQuery('#wg_byColorPlaceAll').prop("disabled", true);
				jQuery('#btn_as_wg_byColorPlace').prop("disabled", true);

				// 無しの場合は2階層目を表示しない
				jQuery('#wg_byColor_div').hide();
			} else {
				// ボタン付け糸指定箇所の有効/無効を制御
				ctrlWgByColorPlace();

				jQuery('input[id^="wg_bhColorPlace_"]').each(function() {
					if (jQuery(this).prop("checked")) {
						// 選択されているの場合、色指定エリアを表示
						jQuery('#'+this.id+'_div').show();
					}
				});
				jQuery('#wg_byColorPlaceAll').prop("disabled", false);
				jQuery('#btn_as_wg_byColorPlace').prop("disabled", false);

				// 有りの場合は2階層目を表示
				jQuery('#wg_byColor_div').show();
			}
		});
	});
	jQuery('#wg_byColor_id1').change();

	// ボタン付け糸指定(全選択)
	jQuery('#btn_as_wg_byColorPlace').click(function(){
		// 全選択する色を取得
		var allColor = jQuery('#wg_byColorPlaceAll').val();

		jQuery('#wg_byColor_div input[type="radio"]').each(function(index, elem){
			elem = jQuery(elem);
			if (elem.val() == allColor) elem.prop('checked', true);
		});
	});
	// ボタン付け糸指定箇所の有効/無効を制御
	ctrlWgByColorPlace();

	// ボタン付け糸指定箇所
	jQuery('input[id^="wg_byColorPlace_"]').each(function() {
		jQuery(this).change(function(){
			if (jQuery(this).prop("checked")) {
				// 選択されているの場合、色指定エリアを表示
				jQuery('#'+this.id+'_div').show();
			} else {
				// 選択されていない場合、色指定エリアを非表示
				jQuery('#'+this.id+'_div').hide();
			}
		});
	});

	// 背裏地素材
	jQuery('#wg_backLiningMate').change(function (){
		var bodyBackMate = jQuery('#wg_backLiningMate').val();

		// 背裏地品番
		var bodyBackMateStkNoElem = jQuery('#wg_backLiningMateStkNo');

		// 選択肢をクリア
		bodyBackMateStkNoElem.empty();

		if (bodyBackMateStkNoList[bodyBackMate]) {
			// 定義が存在する場合は品番を選択肢にセット
			for (var i = 0; i < bodyBackMateStkNoList[bodyBackMate].length; i++) {
				bodyBackMateStkNoElem.append(jQuery('<option />').val(bodyBackMateStkNoList[bodyBackMate][i]).text(bodyBackMateStkNoList[bodyBackMate][i]));
			}
			bodyBackMateStkNoElem.prop("disabled", false);
			jQuery('#btn_wg_insideLiningMate').prop("disabled", false);
		} else if (bodyBackMate == "1000400") {
			// 表地仕様の場合は品番選択不可
			bodyBackMateStkNoElem.prop("disabled", true);
			jQuery('#btn_wg_insideLiningMate').prop("disabled", true);
		}

		// バックベルト
		var backBeltElem = jQuery('#wg_backBelt');
		var selectedBackBelt = backBeltElem.val();

		// 選択肢をクリア
		backBeltElem.empty();

		if (bodyBackMate == "1000400") {
			// 背裏素材「表地」選択時、バックベルトは「無し」か「537-5K」のみ
			backBeltElem.append(jQuery('<option />').val("0002302").text("546-20（尾錠型）"));
//			backBeltElem.append(jQuery('<option />').val("0002301").text("537-5K（2×1型）"));
			backBeltElem.append(jQuery('<option />').val("0002303").text("無し"));
/*
			if (selectedBackBelt == "546-20") {
				// 元々「546-20」が選ばれていた場合は「537-5K」を選択状態に
				backBeltElem.val("537-5K");
*/
			if (selectedBackBelt == "0002301") {
				backBeltElem.val("0002302");
			} else {
				backBeltElem.val(selectedBackBelt);
			}
		} else {
			backBeltElem.append(jQuery('<option />').val("0002302").text("546-20（尾錠型）"));
			backBeltElem.append(jQuery('<option />').val("0002301").text("537-5K（2×1型）"));
			backBeltElem.append(jQuery('<option />').val("0002303").text("無し"));
			backBeltElem.val(selectedBackBelt);
		}
	
	});
	jQuery('#wg_backLiningMate').change();

	// 背裏地素材（上着と同じ）
	jQuery('#btn_wg_backLiningMate').click(function() {
		// JACKET胴裏素材
		var bodyBackMate = jQuery('#wj_bodyBackMate').val();
		// JACKET胴裏品番
		var bodyBackMateStkNo = jQuery('#wj_bodyBackMateStkNo').val();

		// 背裏地素材への反映
		jQuery('#wg_backLiningMate').val(bodyBackMate);
		jQuery('#wg_backLiningMate').change();
		jQuery('#wg_backLiningMateStkNo').val(bodyBackMateStkNo);
	});

	// 内側裏地素材
	jQuery('#wg_insideLiningMate').change(function (){
		var bodyBackMate = jQuery('#wg_insideLiningMate').val();

		// 内側裏地品番
		var bodyBackMateStkNoElem = jQuery('#wg_insideLiningMateStkNo');

		// 選択肢をクリア
		bodyBackMateStkNoElem.empty();

		if (bodyBackMateStkNoList[bodyBackMate]) {
			// 定義が存在する場合は品番を選択肢にセット
			for (var i = 0; i < bodyBackMateStkNoList[bodyBackMate].length; i++) {
				bodyBackMateStkNoElem.append(jQuery('<option />').val(bodyBackMateStkNoList[bodyBackMate][i]).text(bodyBackMateStkNoList[bodyBackMate][i]));
			}
		}
	});
	jQuery('#wg_insideLiningMate').change();

	// 内側裏地素材（背裏地と同じ）
	jQuery('#btn_wg_insideLiningMate').click(function() {
		// 背裏地素材
		var backLiningMate = jQuery('#wg_backLiningMate').val();
		// 背裏地品番
		var backLiningMateStkNo = jQuery('#wg_backLiningMateStkNo').val();

		// 背裏地素材への反映
		jQuery('#wg_insideLiningMate').val(backLiningMate);
		jQuery('#wg_insideLiningMate').change();
		jQuery('#wg_insideLiningMateStkNo').val(backLiningMateStkNo);
	});

	// フロント釦
	jQuery('#wg_frontBtnMate').change(function (){
		var btnMate = jQuery('#wg_frontBtnMate').val();

		// フロント釦品番
		var btnMateStkNoElem = jQuery('#wg_frontBtnMateStkNo');

		// 選択肢をクリア
		btnMateStkNoElem.empty();

		// 定義が存在する場合は品番を選択肢にセット
		/*for (var i = 0; i < btnMateStkNoList[btnMate].length; i++) {
			btnMateStkNoElem.append(jQuery('<option />').val(btnMateStkNoList[btnMate][i]).text(btnMateStkNoList[btnMate][i]));
		}*/
	});
	jQuery('#wg_frontBtnMate').change();

	// フロント釦（上着と同じ）
	jQuery('#btn_wg_frontBtnMate').click(function() {
		// JACKET釦素材
		var btnMate = jQuery('#wj_btnMate').val();
		// JACKET釦品番
		var btnMateStkNo = jQuery('#wj_btnMateStkNo').val();

		// フロント釦への反映
		jQuery('#wg_frontBtnMate').val(btnMate);
		jQuery('#wg_frontBtnMate').change();
		jQuery('#wg_frontBtnMateStkNo').val(btnMateStkNo);
	});
}

//--------------------------------------------
// 部品
//--------------------------------------------
//ボタンホール色指定箇所の有効/無効を制御する
function ctrlWgBhColorPlace() {

	// 選択中のボタンホール色指定
	var bhColor = jQuery('input[name="coOptionGiletWashableInfo.wgBhColor"]:checked').val();

	// 選択中のGILETモデル
	var giletModel = jQuery('#wg_giletModel').val();

	// ボタンホール色指定箇所の有効/無効を制御
	jQuery('#wg_bhColor_div input[type="checkbox"]').each(function(index, elem){
		elem = jQuery(elem);

		elem = jQuery(elem);

		if (bhColor == "0001102" && giletModelBtnMap[giletModel]) {
			// 有りの場合はモデルに基づいて項目ごとに判定
			if (giletModelBtnMap[giletModel].bh[elem.val()]) {
				// 有効な場合
				elem.prop("disabled", false);
			} else {
				// 無効な場合
				elem.prop("disabled", true);
			}

			// 判定結果が無効の場合、チェックを外す
			if (elem.prop("disabled")) {
				elem.prop("checked", false);
				elem.change();
			}
		} else {
			// 無しの場合、または、想定外のモデルの場合は全て無効化
			elem.prop("disabled", true);
		}
	});
}

// ボタン付け糸指定箇所の有効/無効を制御する
function ctrlWgByColorPlace() {

	// 選択中のボタン付け糸指定
	var byColor = jQuery('input[name="coOptionGiletWashableInfo.wgByColor"]:checked').val();

	// 選択中のGILETモデル
	var giletModel = jQuery('#wg_giletModel').val();

	// ボタン付け糸指定箇所の有効/無効を制御
	jQuery('#wg_byColor_div input[type="checkbox"]').each(function(index, elem){
		elem = jQuery(elem);

		if (byColor == "0001402" && giletModelBtnMap[giletModel]) {
			// 有りの場合はモデルに基づいて項目ごとに判定
			if (giletModelBtnMap[giletModel].by[elem.val()]) {
				// 有効な場合
				elem.prop("disabled", false);
			} else {
				// 無効な場合
				elem.prop("disabled", true);
			}

			// 判定結果が無効の場合、チェックを外す
			if (elem.prop("disabled")) {
				elem.prop("checked", false);
				elem.change();
			}
		} else {
			// 無しの場合、または、想定外のモデルの場合は全て無効化
			elem.prop("disabled", true);
		}
	});
}

// ダブルステッチ変更箇所の設定
function ctrlWgDStitchPlace() {
	
	var sParentBase = "wg_stitchModify";
	var sChildBase  = "wg_dStitchModify";
	
	// チェックボックスのリスト
	var aryCheckList = ["id1", "id2", "id3"];
	
/*
	// ステッチ箇所変更が無しの場合は以降処理なし
	if (jQuery('#' + sHeaderBase).val() == "無し") return;
*/	

	aryCheckList.forEach(function (value) {
		// 対象のステッチ箇所変更のチェックによりダブルステッチの状態を変更する
		if (jQuery('#' + sParentBase + 'Place_' + value).prop('checked') == true) {
			// ON ：ダブルステッチは有効 ※チェック状態は連動しない
			jQuery('#' + sChildBase + 'Place_' + value).prop('disabled', false);
		} else {
			// OFF：ダブルステッチは無効 ※チェックはOFFにする
			jQuery('#' + sChildBase + 'Place_' + value).prop('checked', false);
			jQuery('#' + sChildBase + 'Place_' + value).prop('disabled', true);
		}
	});
}

	//AMF色指定の有効/無効を制御する
function ctrlWgAmfColor() {
	// 選択中のステッチ箇所変更
	var amfColorValue = jQuery('input[name="coOptionGiletWashableInfo.wgAmfColor"]:checked').val();

	if (amfColorValue == "0000802") {
		jQuery('#wg_amfColor_div').show();
	} else {
		jQuery('#wg_amfColor_div').hide();
	}

	// AMF色指定の有効/無効設定
	jQuery('input[id^="wg_amfColorPlace_"]').each(function() {
		if (amfColorValue == "0000802") {
			// 有りの場合はステッチ箇所変更に基づく
			var id = this.id;
			id = id.replace("wg_amfColorPlace_", "wg_stitchModifyPlace_id");
			if (jQuery('#'+id).prop("checked")) {
				jQuery(this).prop("disabled", false);
			} else {
				jQuery(this).prop("disabled", true);
				jQuery(this).prop("checked", false);
			}
		} else {
			// 無しの場合は変更不可
			jQuery(this).prop("disabled", true);
			jQuery(this).prop("checked", false);
		}
		jQuery(this).change();
	});
}