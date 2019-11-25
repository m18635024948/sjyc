/*********************************************
 * タキシードPANTS2用JS
 *********************************************/
//--------------------------------------------
// 読み込み時
//--------------------------------------------
function initOptionPants2Tuxedo() {
	jQuery('#tp2_pantsModel').attr("oldTpPants2Model",jQuery('#tp2_pantsModel').val());
	// PANTSモデル
	jQuery('#tp2_pantsModel').change(function() {
		// 選択されたPantsモデルを取得
		var pantsModel = jQuery(this).val();

		var pantsoldModel = jQuery('#tp2_pantsModel').attr("oldTpPants2Model");
		if (pantsModel != pantsoldModel) {
			jQuery("#pants2Flag").val("0");
		}else{
			jQuery("#pants2Flag").val("1");
		}
		jQuery('#tp2_pantsModel').attr("oldTpPants2Model",jQuery('#tp2_pantsModel').val());
		var pantsFlag = jQuery("#pants2Flag").val();
		if(pantsFlag == "0"){
			// 選択されたJacketモデルを取得
			if (pantsModel == '') {
				// 未選択時は何もしない
				return;
			}

		// 選択中のタック
		var tackElem = jQuery('#tp2_tack');
		var selectedTack = tackElem.val();

		// タックの選択肢更新
		tackElem.empty();
		var tmpTack = null;
		for (tmpTack of tackList[pantsModel].activeList) {
			tackElem.append(jQuery('<option />').val(tmpTack.val).text(tmpTack.text));
		}
		// デフォルトを選択
		tackElem.val(tackList[pantsModel].defaultValue);

		// フロント仕様設定
		var sFrontSpec = defaultFrontSpec[pantsModel];
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2FrontSpec"]').val([sFrontSpec]);

		// パンチェリーナ特殊制御
		tp2PancherinaSpecialController();

		// 選択中のアジャスター仕様
		var selectedAdjuster = jQuery('input[name="coOptionPants2TuxedoInfo.tp2Adjuster"]:checked').val();

		// アジャスター仕様の選択肢制御
		jQuery('input[id^="tp2_adjuster_"]').each(function() {
			var tmpTp2AdjusterElem = jQuery(this);
			var value = tmpTp2AdjusterElem.val();

			if (adjusterList[pantsModel].activeList.indexOf(value) != -1) {
				// 有効なアジャスター仕様の場合、有効化
				tmpTp2AdjusterElem.prop("disabled", false);
			} else {
				// 有効なアジャスター仕様ではない場合、無効化
				tmpTp2AdjusterElem.prop("disabled", true);
			}
		});
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2Adjuster"]').val([adjusterList[pantsModel].defaultValue]);

		// 選択中のベルトループ
		var selectedBeltLoop = jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]:checked').val();

		// ベルトループの選択肢制御
		jQuery('input[id^="tp2_beltLotp2_"]').each(function() {
			var tmpTp2BeltLoopElem = jQuery(this);
			var value = tmpTp2BeltLoopElem.val();

			if (beltLoopList[pantsModel].activeList.indexOf(value) != -1) {
				// 有効なベルトループの場合、有効化
				tmpTp2BeltLoopElem.prop("disabled", false);
			} else {
				// 有効なベルトループではない場合、無効化
				tmpTp2BeltLoopElem.prop("disabled", true);
			}
		});
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]').val([beltLoopList[pantsModel].defaultValue]);
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]').change();

		// ベルトループ変更時処理
		tp2ChangedBeltLoop();

		// 選択中の脇ポケット
		var sidePktElem = jQuery('input[name="coOptionPants2TuxedoInfo.tp2SidePkt"]:checked');
		var selectedSidePkt = sidePktElem.val();

		// モデルに基づくデフォルトの脇ポケット
		var modelSidePkt = pantsModelDefaultList[pantsModel].op_sidePkt;
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2SidePkt"]').val([modelSidePkt]);

		// 選択中の忍びポケット
		var sinobiPktElem = jQuery('input[name="coOptionPants2TuxedoInfo.tp2SinobiPkt"]:checked');
		var selectedSinobiPkt = sinobiPktElem.val();

		// モデルに基づくデフォルトの忍びポケット
		var modelSinobiPkt = pantsModelDefaultList[pantsModel].op_sinobiPkt;
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2SinobiPkt"]').val([modelSinobiPkt]);

		// モデルに基づくデフォルトのコインポケット
		var modelCoinPkt = pantsModelDefaultList[pantsModel].op_coinPkt;
		// デフォルトを選択
		jQuery('#tp2_coinPkt').val([modelCoinPkt]);
		jQuery('#tp2_coinPkt').change();

		// 選択中の上前ピスポケット
		var pisPktUf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]:checked');
		var selectedPisPktUf = pisPktUf.val();

		// モデルに基づくデフォルトの上前ピスポケット
		var modelPisPktUf = pantsModelDefaultList[pantsModel].op_pisPktUf;
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]').val([modelPisPktUf]);
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]').change();

		// 選択中の下前ピスポケット
		var pisPktDf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]:checked');
		var selectedPisPktDf = pisPktDf.val();

		// モデルに基づくデフォルトの下前ピスポケット
		var modelPisPktDf = pantsModelDefaultList[pantsModel].op_pisPktDf;
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]').val([modelPisPktDf]);
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]').change();

		// 選択中のVカット
		var vCut = jQuery('input[name="coOptionPants2TuxedoInfo.tp2VCut"]:checked');
		var selectedVCut = vCut.val();

		// モデルに基づくデフォルトのVカット
		var modelVCut = pantsModelDefaultList[pantsModel].op_vCut;
		// デフォルトを選択
		jQuery('input[name="coOptionPants2TuxedoInfo.tp2VCut"]').val([modelVCut]);

		// ステッチ箇所変更
		if (opStitchModifyList[pantsModel]) {
			// 定義がある場合、モデルに基づくチェック状態にする
			jQuery('input[name="tp2_stitchModifyPlace"]').val(opStitchModifyList[pantsModel]);
		} else {
			// 想定外のPANTSモデルの場合はすべて変更不可＆チェックなし
			jQuery('input[name="tp2_stitchModifyPlace"]').each(function() {
				jQuery(this).prop("disabled", true);
				jQuery(this).prop("checked", false);
			});
		}

		// 別モデルに変更された場合はアラート表示
		if ((tmpTp2PantsModel != '' || tmpTp2PantsModel != null) && pantsModel != tmpTp2PantsModel) {
//		    appendAlert('tp2_pantsModelMsg', "モデルが変更されました。選択項目の見直しを行ってください。");
		    setAlert('tp2_pantsModelMsg', "モデルが変更されました。選択項目の見直しを行ってください。");
		}
		// 一時保存のモデルを更新
		tmpTp2PantsModel = pantsModel;
		}
	});

	// 膝裏
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2KneeBack"]').each(function() {
		jQuery(this).change(function(){

			// 現在の膝裏を取得
			var selectedKneeBack = jQuery('input[name="coOptionPants2TuxedoInfo.tp2KneeBack"]:checked').val();
			var disabledFlg = false;

			if (selectedKneeBack == '0000202') {
				disabledFlg = true;
				jQuery('#tp2_kneeBackMate_div').hide();
			} else {
				jQuery('#tp2_kneeBackMate_div').show();
			}

			// 膝裏が無しの場合は膝裏素材を全て選択不可
			jQuery('input[id^="tp2_kneeBackMate_"]').each(function() {
				var tmpKneeBackMateElem = jQuery(this);
				tmpKneeBackMateElem.prop("disabled", disabledFlg);
			});
		});
	});

	// フロント仕様
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2FrontSpec"]').each(function() {
		jQuery(this).change(function(){
			// パンチェリーナ特殊制御
			tp2PancherinaSpecialController();
		});
	});
	jQuery('#tp2_frontSpec_id1').change();

	// ベルトループ
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]').each(function() {
		jQuery(this).change(function(){
			// ベルトループ変更時処理
			tp2ChangedBeltLoop();
		});
	});
	tp2ChangedBeltLoop();

	// フラップ付コインポケット
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2FlapCoinPkt"]').each(function() {
		jQuery(this).change(function(){
			// ボタンホール色指定箇所の制御
			ctrlTp2BhColorPlace();
			// ボタン付け糸指定箇所の制御
			ctrlTp2ByColorPlace();
	    });
	});

	// 上前ピスポケット
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]').each(function() {
		jQuery(this).change(function(){
			// ボタンホール色指定箇所の制御
			ctrlTp2BhColorPlace();
			// ボタン付け糸指定箇所の制御
			ctrlTp2ByColorPlace();
		});
	});
	jQuery('#tp2_pisPktUf_id1').change();

	// 下前ピスポケット
	jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]').each(function() {
		jQuery(this).change(function(){
			// ボタンホール色指定箇所の制御
			ctrlTp2BhColorPlace();
			// ボタン付け糸指定箇所の制御
			ctrlTp2ByColorPlace();
		});
	});
	jQuery('#tp2_pisPktDf_id1').change();

	// 裾上げ
	jQuery('#tp2_hemUp').change(function() {

		// 現在の裾上げを取得
		var selectedHemUp = jQuery('#tp2_hemUp').val();

		// ダブルがつくもの以外は非表示にする
		//if (selectedHemUp == 'ダブル糸' || selectedHemUp == 'ダブルスナップ' || selectedHemUp == 'ダブルモーニングカット') {
		if (selectedHemUp == '0001702' || selectedHemUp == '0001703') {
			jQuery('#tp2_doubleWide_div').show();
		} else {
			jQuery('#tp2_doubleWide_div').hide();
			jQuery('input[id="tp2_doubleWide"]').prop("disabled",true);
		}
	});

	// AMFステッチ
//	jQuery('input[name="tp2_stitch"]').each(function() {
//		jQuery(this).change(function(){
//			// 選択中のAMFステッチ
//			var stitchValue = jQuery('input[name="tp2_stitch"]:checked').val();
//
//			if (stitchValue == "有り") {
//				// 有りの場合、関連する項目を有効化
//				// ステッチ箇所変更
//				jQuery('input[name="tp2_stitchModify"]').prop("disabled", false);
//
//				// ダブルステッチ
//				jQuery('input[name="tp2_dStitch"]').prop("disabled", false);
//
//				// AMF色指定
//				jQuery('input[name="tp2_amfColor"]').prop("disabled", false);
//			} else {
//				// 無しの場合、関連する項目を無効化・値変更
//				// ステッチ箇所変更
//				jQuery('input[name="tp2_stitchModify"]').prop("disabled", true);
//				jQuery('#tp2_stitchModify_no').prop("checked", true);
//				jQuery('#tp2_stitchModify_no').change();
//
//				// ダブルステッチ
//				jQuery('input[name="tp2_dStitch"]').prop("disabled", true);
//				jQuery('#tp2_dStitch_no').prop("checked", true);
//				jQuery('#tp2_dStitch_no').change();
//
//				// AMF色指定
//				jQuery('input[name="tp2_amfColor"]').prop("disabled", true);
//				jQuery('#tp2_amfColor_no').prop("checked", true);
//				jQuery('#tp2_amfColor_no').change();
//			}
//
//			// ダブルステッチの特殊制御
//			tp2DStichSpecialController();
//		});
//	});
//
//	// ステッチ箇所変更
//	jQuery('input[name="tp2_stitchModify"]').each(function() {
//		jQuery(this).change(function(){
//			// 選択中のステッチ箇所変更
//			var stitchModifyValue = jQuery('input[name="tp2_stitchModify"]:checked').val();
//
//			if (stitchModifyValue == "無し") {
//				// 無しの場合は全て無効化
//				jQuery('input[name="tp2_stitchModifyPlace"]').prop("disabled", true);
//				jQuery('#btn_as_tp2_stitchModifyPlace').prop("disabled", true);
//				jQuery('#btn_ar_tp2_stitchModifyPlace').prop("disabled", true);
//			} else {
//				// 有りの場合は全て有効化
//				jQuery('input[name="tp2_stitchModifyPlace"]').prop("disabled", false);
//				jQuery('#btn_as_tp2_stitchModifyPlace').prop("disabled", false);
//				jQuery('#btn_ar_tp2_stitchModifyPlace').prop("disabled", false);
//			}
//		});
//	});
//	jQuery('#tp2_stitchModify_no').change();
//
//	// AMF色指定(有り/無し)
//	jQuery('input[name="tp2_amfColor"]').each(function() {
//		jQuery(this).change(function(){
//			// 選択中のAMF色指定を取得
//			var amfColor = jQuery('input[name="tp2_amfColor"]:checked').val();
//
//			if (amfColor == '無し') {
//				// 無しの場合は操作不可
//				jQuery('input[name="tp2_amfColorPlace"]').each(function() {
//					jQuery(this).prop("disabled", true);
//					jQuery(this).prop("checked", false);
//					jQuery('#'+this.id+'_div').hide();
//				});
//				jQuery('#tp2_amfColorPlaceAll').prop("disabled", true);
//				jQuery('#btn_as_tp2_amfColorPlace').prop("disabled", true);
//
//				// 無しの場合は2階層目以降を非表示
//				jQuery('#tp2_amfColor_div').hide();
//			} else {
//				// 有りの場合は操作可能
//				jQuery('input[name="tp2_amfColorPlace"]').each(function() {
//					jQuery(this).prop("disabled", false);
//					if (jQuery(this).prop("checked")) {
//						// 選択されているの場合、色指定エリアを表示
//						jQuery('#'+this.id+'_div').show();
//					}
//				});
//				jQuery('#tp2_amfColorPlaceAll').prop("disabled", false);
//				jQuery('#btn_as_tp2_amfColorPlace').prop("disabled", false);
//
//				// 有りの場合は2階層目以降を表示
//				jQuery('#tp2_amfColor_div').show();
//			}
//		});
//	});
//
//	// AMF色指定(全選択)
//	jQuery('#btn_as_tp2_amfColorPlace').click(function(){
//		// 全選択する色を取得
//		var allColor = jQuery('#tp2_amfColorPlaceAll').val();
//
//		jQuery('#tp2_amfColor_div input[type="radio"]').each(function(index, elem){
//			elem = jQuery(elem);
//			if (elem.val() == allColor) elem.prop('checked', true);
//		});
//	});
//
//	// AMF色指定箇所
//	jQuery('input[name="tp2_amfColorPlace"]').each(function() {
//		jQuery(this).change(function(){
//			if (jQuery(this).prop("checked")) {
//				// 選択されているの場合、色指定エリアを表示
//				jQuery('#'+this.id+'_div').show();
//			} else {
//				// 選択されていない場合、色指定エリアを非表示
//				jQuery('#'+this.id+'_div').hide();
//			}
//		});
//	});

	// ボタンホール色指定(有り/無し)
	jQuery('input[id^="tp2_bhColor_"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のボタンホール色指定を取得
			var tp2_bhColor = jQuery('input[name="coOptionPants2TuxedoInfo.tp2BhColor"]:checked').val();

			if (tp2_bhColor == '0002701') {
				// 無しの場合は操作不可
				jQuery('input[id^="tp2_bhColorPlace_"]').each(function() {
					jQuery(this).prop("disabled", true);
					jQuery(this).prop("checked", false);
					jQuery('#'+this.id+'_div').hide();
				});
				jQuery('#tp2_bhColorPlaceAll').prop("disabled", true);
				jQuery('#btn_as_tp2_bhColorPlace').prop("disabled", true);

				// 無しの場合は2階層目を表示しない
				jQuery('#tp2_bhColor_div').hide();
			} else {
				// 有りの場合は操作可能

				// ボタンホール色指定箇所の制御
				ctrlTp2BhColorPlace();
				jQuery('input[id^="tp2_bhColorPlace_"]').each(function() {
//					jQuery(this).prop("disabled", false);
					if (jQuery(this).prop("checked")) {
						// 選択されているの場合、色指定エリアを表示
						jQuery('#'+this.id+'_div').show();
					}
				});
				jQuery('#tp2_bhColorPlaceAll').prop("disabled", false);
				jQuery('#btn_as_tp2_bhColorPlace').prop("disabled", false);

				// 有りの場合は2階層目を表示
				jQuery('#tp2_bhColor_div').show();
			}
		});
	});
	jQuery('#tp2_bhColor_id1').change();

	// ボタンホール色指定(全選択)
	jQuery('#btn_as_tp2_bhColorPlace').click(function(){
		// 全選択する色を取得
		var allColor = jQuery('#tp2_bhColorPlaceAll').val();

		jQuery('#tp2_bhColor_div input[type="radio"]').each(function(index, elem){
			elem = jQuery(elem);
			if (elem.val() == allColor) elem.prop('checked', true);
		});
	});

	// ボタンホール色指定箇所
	jQuery('input[id^="tp2_bhColorPlace_"]').each(function() {
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
	ctrlTp2BhColorPlace();

	// ボタン付け糸指定(有り/無し)
	jQuery('input[id^="tp2_byColor_"]').each(function() {
		jQuery(this).change(function(){
			// 選択中のボタンホール色指定を取得
			var tp2_byColor = jQuery('input[name="coOptionPants2TuxedoInfo.tp2ByColor"]:checked').val();

			if (tp2_byColor == '0003001') {
				// 無しの場合は操作不可
				jQuery('input[id^="tp2_byColorPlace_"]').each(function() {
					jQuery(this).prop("disabled", true);
					jQuery(this).prop("checked", false);
					jQuery('#'+this.id+'_div').hide();
				});
				jQuery('#tp2_byColorPlaceAll').prop("disabled", true);
				jQuery('#btn_as_tp2_byColorPlace').prop("disabled", true);

				// 無しの場合は2階層目を表示しない
				jQuery('#tp2_byColor_div').hide();
			} else {
				// 有りの場合は操作可能

				// ボタン付け糸指定箇所の制御
				ctrlTp2ByColorPlace();
				jQuery('input[id^="tp2_byColorPlace_"]').each(function() {
//					jQuery(this).prop("disabled", false);
					if (jQuery(this).prop("checked")) {
						// 選択されているの場合、色指定エリアを表示
						jQuery('#'+this.id+'_div').show();
					}
				});
				jQuery('#tp2_byColorPlaceAll').prop("disabled", false);
				jQuery('#btn_as_tp2_byColorPlace').prop("disabled", false);

				// 有りの場合は2階層目を表示
				jQuery('#tp2_byColor_div').show();
			}
		});
	});
	jQuery('#tp2_byColor_id1').change();

	// ボタン付け糸指定(全選択)
	jQuery('#btn_as_tp2_byColorPlace').click(function(){
		// 全選択する色を取得
		var allColor = jQuery('#tp2_byColorPlaceAll').val();

		jQuery('#tp2_byColor_div input[type="radio"]').each(function(index, elem){
			elem = jQuery(elem);
			if (elem.val() == allColor) elem.prop('checked', true);
		});
	});

	// ボタン付け糸指定箇所
	jQuery('input[id^="tp2_byColorPlace_"]').each(function() {
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
	// ボタン付け糸指定箇所の制御
	ctrlTp2ByColorPlace();

	// 釦素材
//	jQuery('#tp2_button').change(function (){
//		var btnMate = jQuery('#tp2_button').val();
//
//		// 釦品番
//		var btnMateStkNoElem = jQuery('#tp2_btnMateStkNo');
//
//		// 選択肢をクリア
//		btnMateStkNoElem.empty();
//
//		if (btnMate == '包み') {
//			jQuery('#tp2_frontBtnMateStkNo').hide();
//			jQuery('#tp2_frontBtnMateStkNo').prop('disabled', true);
//		} else if (btnMateStkNoList[btnMate]) {
//			jQuery('#tp2_frontBtnMateStkNo').show();
//			jQuery('#tp2_frontBtnMateStkNo').prop('disabled', false);
//			// 定義が存在する場合は品番を選択肢にセット
//			for (var i = 0; i < btnMateStkNoList[btnMate].length; i++) {
//				btnMateStkNoElem.append(jQuery('<option />').val(btnMateStkNoList[btnMate][i]).text(btnMateStkNoList[btnMate][i]));
//			}
//		}
//	});
//	jQuery('#tp2_button').change();

	// JKと同じボタン
	jQuery('#tp2_sameJacketBtn').click(function(){

		// JACKETの釦素材を取得
		var jacketBtnMate = jQuery('#tj_btnMate').val();

		// JACKETの釦素材をPANTSの釦素材にコピー
		jQuery('#tp2_button').val(jacketBtnMate);
		// 釦素材変更処理
		jQuery('#tp2_button').change();

		// JACKETの釦品番を取得
		var jacketBtnMateStkNo = jQuery('#tj_btnMateStkNo').val();
		// JACKETの釦品番をPANTSの釦品番にコピー
		jQuery('#tp2_btnMateStkNo').val(jacketBtnMateStkNo);
	});

	// 側章
	jQuery('input[id^="tp2_sideStripe_"]').each(function() {
		jQuery(this).change(function(){

			// 選択中の側章
			var sideStripe = jQuery('input[name="coOptionPants2TuxedoInfo.tp2SideStripe"]:checked').val();
			if (sideStripe == '0003902') {
				// 側章が有りの場合は側章幅を表示する
				jQuery('#tp2_sideStripe_yes_area').show();
			} else {
				// 側章が無しの場合は側章幅を非表示にする
				jQuery('#tp2_sideStripe_yes_area').hide();
			}
		});
	});
}

//--------------------------------------------
// 部品
//--------------------------------------------
//ボタンホール色指定箇所の有効/無効を制御する
function ctrlTp2BhColorPlace() {

	// 選択中のボタンホール色指定
	var tp2_bhColor = jQuery('input[name="coOptionPants2TuxedoInfo.tp2BhColor"]:checked').val();

	// 選択中の上前ピスポケット
	var selectedPisPktUf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]:checked').val();
	// 選択中の下前ピスポケット
	var selectedPisPktDf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]:checked').val();
	// 選択中のフラップ付コインポケット
	var selectedFlapCoinPkt = jQuery('input[name="coOptionPants2TuxedoInfo.tp2FlapCoinPkt"]:checked').val();

	// ボタンホール色指定箇所の有効/無効を制御
	jQuery('#tp2_bhColor_div input[type="checkbox"]').each(function(index, elem){
		elem = jQuery(elem);

		if (tp2_bhColor == "0002702") {
			// 有りの場合は一旦有効化し、項目ごとに無効判定
			elem.prop("disabled", false);

			if (elem.val() == "0002902") {
				if (selectedPisPktUf == "0001404" || selectedPisPktUf == "0001405" || selectedPisPktUf == "0001406") {
					elem.prop("disabled", true);
				}
			} else if (elem.val() == "0002903") {
				if (selectedPisPktDf == "0001504" || selectedPisPktDf == '0001505' || selectedPisPktDf == '0001506') {
					elem.prop("disabled", true);
				}
			} else if (elem.val() == "0002904") {
				if (selectedFlapCoinPkt == '0001301') {
					elem.prop("disabled", true);
				}
			}

			// 判定結果が無効の場合、チェックを外す
			if (elem.prop("disabled")) {
				elem.prop("checked", false);
				elem.change();
			}
		} else {
			// 無しの場合は全て無効化
			elem.prop("disabled", true);
		}
	});

}

//ボタン付け糸指定箇所の有効/無効を制御する
function ctrlTp2ByColorPlace() {

	// 選択中のボタン付け糸指定
	var tp2_byColor = jQuery('input[name="coOptionPants2TuxedoInfo.tp2ByColor"]:checked').val();

	// 選択中の上前ピスポケット
	var selectedPisPktUf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktUf"]:checked').val();
	// 選択中の下前ピスポケット
	var selectedPisPktDf = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PisPktDf"]:checked').val();
	// 選択中のフラップ付コインポケット
	var selectedFlapCoinPkt = jQuery('input[name="coOptionPants2TuxedoInfo.tp2FlapCoinPkt"]:checked').val();

	// ボタンホール色指定箇所の有効/無効を制御
	jQuery('#tp2_byColor_div input[type="checkbox"]').each(function(index, elem){
		elem = jQuery(elem);

		if (tp2_byColor == "0003002") {
			// 有りの場合は一旦有効化し、項目ごとに無効判定
			elem.prop("disabled", false);

			if (elem.val() == "0003202") {
				if (selectedPisPktUf == "0001404" || selectedPisPktUf == "0001405" || selectedPisPktUf == "0001406") {
					elem.prop("disabled", true);
				}
			} else if (elem.val() == "0003203") {
				if (selectedPisPktDf == "0001504" || selectedPisPktDf == '0001505'  || selectedPisPktDf == '0001506') {
					elem.prop("disabled", true);
				}
			} else if (elem.val() == "0003204") {
				if (selectedFlapCoinPkt == '0001301') {
					elem.prop("disabled", true);
				}
			}

			// 判定結果が無効の場合、チェックを外す
			if (elem.prop("disabled")) {
				elem.prop("checked", false);
				elem.change();
			}
		} else {
			// 無しの場合は全て無効化
			elem.prop("disabled", true);
		}
	});
}

//パンチェリーナの特殊制御
function tp2PancherinaSpecialController() {

	// 現在選択中のPANTSモデル
	var selectedPantsModel = jQuery('#tp2_pantsModel').val();

	// 現在選択中のパンチェリーナ
	var selectedPancherina = jQuery('input[name="coOptionPants2TuxedoInfo.tp2Pancherina"]:checked').val();

	// 特定のモデル以外はパンチェリーナ選択不可
	if (selectedPantsModel != 'TR02'
			&& selectedPantsModel != 'CH14'
			&& selectedPantsModel != 'NZ01'
			&& selectedPantsModel != 'JW21'
			&& selectedPantsModel != 'AY01') {

		jQuery('#tp2_pancherina_id1').prop("disabled", true);
		jQuery('#tp2_pancherina_id1').prop("checked", true);
		jQuery('#tp2_pancherina_id1').change();
		jQuery('#tp2_pancherina_id2').prop("disabled", true);

	} else {

		// 後続処理のために一旦パンチェリーナの選択肢を活性化させる
		jQuery('#tp2_pancherina_id1').prop("disabled", false);
		jQuery('#tp2_pancherina_id2').prop("disabled", false);

		// 現在のフロント仕様を取得
		var selectedFrontSpec = jQuery('input[name="coOptionPants2TuxedoInfo.tp2FrontSpec"]:checked').val();

		// フロント仕様がホック留めの場合はパンチェリーナは無し固定
		if (selectedFrontSpec == '0000401') {
			jQuery('#tp2_pancherina_id2').prop('disabled', true);
			jQuery('#tp2_pancherina_id1').prop('checked', true);
		}
	}

	// 処理後のパンチェリーナ
	var changedPancherina = jQuery('input[name="coOptionPants2TuxedoInfo.tp2Pancherina"]:checked').val();
}

//ベルトループ変更時処理
function tp2ChangedBeltLoop() {

	// 選択中のベルトループ
	var selectedBeltLoop = jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]:checked').val();
	var disabledFlg = false;

	if (selectedBeltLoop == '0000701') {
		// 表示
		jQuery('#tp2_beltLoopPlace').show();
	} else {
		// 非表示
		jQuery('#tp2_beltLoopPlace').hide();
		disabledFlg = true;
	}

	// ベルトループ項目の活性/非活性
	jQuery('input[id^="tp2_beltLoopPlace_"]').each(function() {
		var tmpBeltLoopElem = jQuery(this);
		tmpBeltLoopElem.prop("disabled", disabledFlg);
		if (!disabledFlg) {
			tmpBeltLoopElem.prop("checked", true);
		}
	});

	// ピンループ設定 ※アジャスター仕様が小でベルトループ有の場合に無しに設定する
	if (selectedBeltLoop == '0000701') {
		if (jQuery('input[name="tp2_adjuster"]:checked').val() == '0000603') {
			jQuery('#tp2_pinLoop_id2').prop('checked', 'true');
		}
	}	

	// フラシループ設定
	var frsAreaElem = jQuery('#tp2_beltLoopPlace_id17');
	if (jQuery('#tp2_pantsModel').val() == 'NZ01') {
		// 表示
		frsAreaElem.show();
	} else {
		jQuery("#tp2_beltLoopPlace_id7").prop("checked", false);
		// 非表示
		frsAreaElem.hide();
	}

	// ピンループ特殊制御
	tp2PinLoopSpecialController();
}

//ピンループ特殊制御
function tp2PinLoopSpecialController() {

	// 選択中のベルトループ
	var selectedBeltLoop = jQuery('input[name="coOptionPants2TuxedoInfo.tp2BeltLoop"]:checked').val();
	// 選択中のピンループ
	var selectedPinLoop = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PinLoop"]:checked').val();

	if (selectedBeltLoop == '0000702') {
		// ベルトループ無しの場合はピンループ無し固定
		jQuery('input[id="tp2_pinLoop_id1"]').prop("disabled", true);
		jQuery('input[id="tp2_pinLoop_id2"]').prop("disabled", false);
		jQuery('input[id="tp2_pinLoop_id2"]').prop("checked", true);
	} else {
		jQuery('input[id="tp2_pinLoop_id1"]').prop("disabled", false);
		jQuery('input[id="tp2_pinLoop_id2"]').prop("disabled", false);
	}

	// 処理後のピンループ
	var changedPinLoop = jQuery('input[name="coOptionPants2TuxedoInfo.tp2PinLoop"]:checked').val();
}

//ダブルステッチの特殊制御を行う
//function tp2DStichSpecialController() {
//
//	// 選択中のAMFステッチ
//	var selectedStich = jQuery('input[name=tp2_stitch]:checked').val();
//
//	// AMFステッチが有りの場合はダブルステッチを有効化する
//	if (selectedStich == '有り') {
//		jQuery('input[name="tp2_dStitch"]').prop("disabled", false);
//	} else {
//		jQuery('input[name="tp2_dStitch"]').prop("disabled", true);
//		jQuery('input[id="tp2_dStitch_no"]').prop("checked", true);
//	}
//}

jQuery('#tp2_coinPkt').change(function() {

	var selectedValue = jQuery('#tp2_coinPkt').val();

		jQuery('#tp2_flapCoinPkt_id2').prop('disabled', false);
	if (selectedValue == "0001201") {
		jQuery('#tp2_flapCoinPkt_id1').prop('checked', true);
		jQuery('#tp2_flapCoinPkt_id2').prop('disabled', true);
	}
	
	
});
jQuery('#tp2_coinPkt').change();

// アジャスター仕様変更時
jQuery('input[name="coOptionPants2TuxedoInfo.tp2Adjuster"]').change(function(index, elem) {
	var selected = jQuery('input[name="coOptionPants2TuxedoInfo.tp2Adjuster"]:checked').val();

	var oBLoopElemY = jQuery('#tp2_beltLoop_id1');
	var oBLoopElemN = jQuery('#tp2_beltLoop_id2');

	var oPLoopElemY = jQuery('#tp2_pinLoop_id1');
	var oPLoopElemN = jQuery('#tp2_pinLoop_id2');
	
	switch(selected) {
		case "0000601"                : oBLoopElemY.prop("checked", true); break;
		case "0000602": oBLoopElemN.prop("checked", true); break;
		case "0000603": oBLoopElemN.prop("checked", true); break;
		case "0000604"        : oBLoopElemY.prop("checked", true); break;
		default:oBLoopElemN.prop("checked", true);
	}
	switch(selected) {
		case "0000601"                : oPLoopElemY.prop("checked", true); break;
		case "0000602": oPLoopElemN.prop("checked", true); break;
		case "0000603": oPLoopElemN.prop("checked", true); break;
		case "0000604"        : oPLoopElemY.prop("checked", true); break;
		default:oPLoopElemN.prop("checked", true);
	}

	tp2ChangedBeltLoop();

});
jQuery('#tp2_adjuster_id1').change();


