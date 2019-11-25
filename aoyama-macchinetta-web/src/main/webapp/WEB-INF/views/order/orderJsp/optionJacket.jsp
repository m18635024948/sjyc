<form:form id="idInfoForm" action="${pageContext.request.contextPath}/orderCo/orderCoReconfirm" method="post" modelAttribute="orderCoForm" class="form-horizontal">
<div id="op_jacket_div">
            <div class="card-header">
                <strong class="card-title">JACKET</strong>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col col-lg-12">
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">JACKETモデル</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_jacketModel"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
                                <form:select id="jacketModel" path="coOptionJacketStandardInfo.ojJacketModel" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojJacketModelMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-6" align="right" id="jacketModel_Msg">
                            </div>
                            <div class="col-12 col-md-9 offset-md-3" id="jacketModelMsg" style="margin-top:8px"></div>
                            <div class="col-12 col-md-9 offset-md-3" id="jacketModelCheck" style="display:none"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フロント釦数</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_oj_frontBtnCnt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-3">
                                <form:select id="oj_frontBtnCnt" path="coOptionJacketStandardInfo.ojFrontBtnCnt" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojFrontBtnCntMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="oj_frontBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="oj_frontBtnCnt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペルデザイン</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_lapelDesign"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="lapelDesign_id" path="coOptionJacketStandardInfo.ojLapelDesign" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojLapelDesignMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="lapelDesignMsg">
                            </div -->
                            <div class="col-12 col-md-3" id="lapelDesign_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">グレード</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_grade"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="grade_id" path="coOptionJacketStandardInfo.ojGrade" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojGradeMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="grade_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">裏仕様</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_backSpec"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
                                <form:select id="backSpec" path="coOptionJacketStandardInfo.ojGackSpec" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojGackSpecMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="backSpecMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="backSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">台場</label></div>
                            <div class="col col-md-3">
                                <form:select id="fort" path="coOptionJacketStandardInfo.ojFort" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojFortMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="fortMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="fort_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟裏（ヒゲ）</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="backCollar_id" path="coOptionJacketStandardInfo.ojBackCollar" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojBackCollarMap}"/>　
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="backCollarMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="backCollar_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟吊</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="chainHange_id" path="coOptionJacketStandardInfo.ojChainHange" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojChainHangeMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="chainHange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペル幅</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                   	<form:radiobuttons id="lapelWidth_id" path="coOptionJacketStandardInfo.ojLapelWidth" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojLapelWidthMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="lapelWidthMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="lapelWidth_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フラワーホール</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_flowerHole"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-3">
                                <form:select id="flowerHole" path="coOptionJacketStandardInfo.ojFlowerHole" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojFlowerHoleMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-6" id="flowerHole_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_breastPkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="breastPkt_id" path="coOptionJacketStandardInfo.ojBreastPkt" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojBreastPktMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="breastPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="breastPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_waistPkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-4">
                                <form:select id="waistPkt" path="coOptionJacketStandardInfo.ojWaistPkt" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojWaistPktMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-5" id="waistPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">チェンジポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_changePkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="changePkt_id" path="coOptionJacketStandardInfo.ojChangePkt" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojChangePktMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="changePktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="changePkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">スランテッドポケット</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="slantedPkt_id" path="coOptionJacketStandardInfo.ojSlantedPkt" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojSlantedPktMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="slantedPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="slantedPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">忍びポケット</label></div>
                            <div class="col col-md-3">
                                <form:select id="coinPkt" path="coOptionJacketStandardInfo.ojCoinPkt" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojCoinPktMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-6" id="coinPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖仕様</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <div class="form-check-inline form-check">
                                    	<form:radiobuttons id="sleeveSpec_id" path="coOptionJacketStandardInfo.ojSleeveSpec" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojSleeveSpecMap}"/>
                                	</div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="sleeveSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">マニカ</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="manica_id" path="coOptionJacketStandardInfo.ojManica" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojManicaMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="manica_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖釦</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_sleeveBtnType"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="sleeveBtnType_id" path="coOptionJacketStandardInfo.ojSleeveBtnType" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojSleeveBtnTypeMap}"/>袖釦数
                                    <a href="#" id="sleeveBtnCnt_m"><i class="fa fa-minus-square" style="font-size:32px"></i></a>&nbsp;
                                    <!-- <input type="text" id="sleeveBtnCnt" name="coOptionJacketStandardInfo.ojSleeveBtnCnt" class="form-control-sm form-control" readonly style="width:36px">&nbsp; -->
                                    <form:input id="sleeveBtnCnt" path="coOptionJacketStandardInfo.ojSleeveBtnCnt" class="form-control-sm form-control" readonly = "true" style="width:36px"/>&nbsp;
                                    <a href="#" id="sleeveBtnCnt_p"><i class="fa fa-plus-square" style="font-size:32px"></i></a>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="sleeveBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="sleeveBtnType_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖口</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="cuffSpec_id" path="coOptionJacketStandardInfo.ojCuffSpec" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojCuffSpecMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="cuffSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">内ポケット変更</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="insidePktChange_id" path="coOptionJacketStandardInfo.ojInsidePktChange" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojInsidePktChangeMap}"/>
                                </div>
                                <div id="insidePktChange_yes_area">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_insidePktPlace">全選択</button>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_insidePktPlace">全解除</button>
                                </div>
                                </div>
                                <div id="inline-radio122_1" class="offset-md-1">
                                
                                    <%-- <form:checkboxes id="insidePktPlace_id" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlaceMap}" path="coOptionJacketStandardInfo.ojInsidePktPlace"/> --%>
                                    <c:forEach var="ojInsidePktPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlaceMap }" varStatus="row">
                                		<div class="form-check-inline form-check">
                                			<input type="checkbox" id="insidePktPlace_id${row.count}" name="coOptionJacketStandardInfo.ojInsidePktPlace${row.count}" value="${ojInsidePktPlaceMap.key}" class="form-check-input">${ojInsidePktPlaceMap.value}
                                		</div>
                                	</c:forEach>
                                
                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="insidePktChange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">下前胸内ポケット仕様</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="breastInnerPkt_id" path="coOptionJacketStandardInfo.ojBreastInnerPkt" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojBreastInnerPktMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="breastInnerPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_stitch"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="stitch_id" path="coOptionJacketStandardInfo.ojStitch" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojStitchMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="stitch_Msg" align="right">
                            </div>
                        </div>
                        <div id="stitch_yes_area">
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ステッチ箇所変更</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="stitchModify_id" path="coOptionJacketStandardInfo.ojStitchModify" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyMap}"/>
                                </div>
                                <div id="stitchModify_yes_area">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_stitchModifyPlace">全選択</button>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_stitchModifyPlace">全解除</button>
                                </div>
                                </div>
                                <div class="offset-md-1">
                                	<c:forEach var="ojStitchModifyPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlaceMap }" varStatus="row">
                                		<div class="form-check-inline form-check">
                                			<input type="checkbox" id="stitchModifyPlace_id${row.count}" name="coOptionJacketStandardInfo.ojStitchModifyPlace${row.count}" value="${ojStitchModifyPlaceMap.key}" class="form-check-input">${ojStitchModifyPlaceMap.value}
                                		</div>
                                	</c:forEach>
                                <%-- <div class="form-check-inline form-check">
                                	<form:checkboxes id="stitchModifyPlace_id" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlaceMap}" path="coOptionJacketStandardInfo.ojStitchModifyPlace"/>
                                </div> --%>
                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="stitchModify_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ダブルステッチ変更</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="dStitchModify_id" path="coOptionJacketStandardInfo.ojDStitchModify" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyMap}"/>
                                </div>
                                <div id="dStitchModifyPlace">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_dStitchModifyPlace">全選択</button>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_dStitchModifyPlace">全解除</button>
                                </div>
                                </div>
                                <div class="offset-md-1">
                                <c:forEach var="ojDStitchModifyPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlaceMap }" varStatus="row">
                                		<div class="form-check-inline form-check">
                                			<input type="checkbox" id="dStitchModifyPlace_id${row.count}" name="coOptionJacketStandardInfo.ojDStitchModifyPlace${row.count}" value="${ojDStitchModifyPlaceMap.key}" class="form-check-input">${ojDStitchModifyPlaceMap.value}
                                		</div>
                                </c:forEach>
                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="dStitchModify_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">AMF色指定</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="amfColor_id" path="coOptionJacketStandardInfo.ojAmfColor" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojAmfColorMap}"/>
                                </div>
                                <div id="amfColor_div" style="display:none;">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="amfColorPlaceAll" path="coOptionJacketStandardInfo.ojAmfColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_amfColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_amfColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="ojAmfColorPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="amfColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="amfColorPlace_${row.count}" name="coOptionJacketStandardInfo.ojAmfColorPlace${row.count}" value="${ojAmfColorPlaceMap.key }" class="form-check-input">${ojAmfColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="amfColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="ojAmfColorsMap" items="${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="amfColor" class="form-check-label ">
                                			    <input type="radio" id="amfColor_${ojAmfColorsMap.key}" name="coOptionJacketStandardInfo.ojAmfColor${row.count}" value="${ojAmfColorsMap.key}" class="form-check-input">${ojAmfColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="amfColor_Msg" align="right">
                            </div>
                        </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="bhColor_id" path="coOptionJacketStandardInfo.ojBhColor" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojBhColorMap}"/>
                                </div>
                                <div id="bhColor_div" style="display:none;">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="bhColorPlaceAll" path="coOptionJacketStandardInfo.ojBhColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_bhColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_bhColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="ojBhColorPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="bhColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="bhColorPlace_${row.count}" name="coOptionJacketStandardInfo.ojBhColorPlace${row.count}" value="${ojBhColorPlaceMap.key }" class="form-check-input">${ojBhColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="bhColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="ojpBhColorsMap" items="${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="bhColor" class="form-check-label ">
                                			    <input type="radio" id="bhColor_${ojpBhColorsMap.key}" name="coOptionJacketStandardInfo.ojBhColor${row.count}" value="${ojpBhColorsMap.key}" class="form-check-input">${ojpBhColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="bhColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="byColor_id" path="coOptionJacketStandardInfo.ojByColor" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojByColorMap}"/>
                                </div>
                                <div id="byColor_div" style="display:none;">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="byColorPlaceAll" path="coOptionJacketStandardInfo.ojByColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojByColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_byColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_byColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="ojByColorPlaceMap" items="${orderCoForm.coOptionJacketStandardInfo.ojByColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="byColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="byColorPlace_${row.count}" name="coOptionJacketStandardInfo.ojByColorPlace${row.count}" value="${ojByColorPlaceMap.key }" class="form-check-input">${ojByColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="byColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="ojByColorsMap" items="${orderCoForm.coOptionJacketStandardInfo.ojByColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="byColor" class="form-check-label ">
                                			    <input type="radio" id="byColor_${ojByColorsMap.key}" name="coOptionJacketStandardInfo.ojByColor${row.count}" value="${ojByColorsMap.key}" class="form-check-input">${ojByColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="byColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ベント</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="ventSpec_id" path="coOptionJacketStandardInfo.ojVentSpec" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojVentSpecMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="ventSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胴裏素材</label></div>
                            <div class="col col-md-3">
                                <form:select id="bodyBackMate" path="coOptionJacketStandardInfo.ojBodyBackMate" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojBodyBackMateMap}"/>
                                </form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketStandardInfo.ojBodyBackMateStkNo" id="bodyBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="bodyBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖裏素材</label></div>
                            <div class="col col-md-3">
                                <form:select id="cuffBackMate" path="coOptionJacketStandardInfo.ojCuffBackMate" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojCuffBackMateMap}"/>
                                </form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketStandardInfo.ojCuffBackMateStkNo" id="cuffBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
<!--
                            <div class="col col-md-2">
                                <button type="button" class="btn btn-outline-info btn-sm" id="btn_cuffBackMate">胴裏と同じ</button>
                            </div>
                            
-->
							<div class="col-12 col-md-2" id="cuffBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">釦素材</label></div>
                            <div class="col col-md-3">
                                <form:select id="btnMate" path="coOptionJacketStandardInfo.ojBtnMate" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketStandardInfo.ojBtnMateMap}"/>
                                </form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketStandardInfo.ojBtnMateStkNo" id="btnMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="btnMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">形状記憶</label></div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                    <form:radiobuttons id="shapeMemory_id" path="coOptionJacketStandardInfo.ojShapeMemory" class="form-check-input" items="${orderCoForm.coOptionJacketStandardInfo.ojShapeMemoryMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="shapeMemory_Msg" align="right">
                            </div>
                        </div>
                    </div>
                </div>

            </div></div>
            
            <div id="tu_jacket_div">
            <div class="card-header">
                <strong class="card-title">JACKET</strong>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col col-lg-12">
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">JACKETモデル</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_jacketModel"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
                            	<form:select id="tj_jacketModel" path="coOptionJacketTuxedoInfo.tjJacketModel" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjJacketModelMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-6" align="right" id="jacketModel_Msg">
                            </div>
                            <div class="col-12 col-md-9 offset-md-3" id="tj_jacketModelMsg" style="margin-top:8px"></div>
                            <div class="col-12 col-md-9 offset-md-3" id="tj_jacketModelCheck" style="display:none"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フロント釦数</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_frontBtnCnt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-3">
                            	<form:select id="tj_frontBtnCnt" path="coOptionJacketTuxedoInfo.tjFrontBtnCnt" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjFrontBtnCntMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_frontBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="tj_frontBtnCnt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペルデザイン</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_lapelDesign"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-check-inline form-check">
                                     <form:radiobuttons id="tj_lapelDesign_id" path="coOptionJacketTuxedoInfo.tjLapelDesign" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjLapelDesignMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_lapelDesignMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_lapelDesign_Msg" align="right">
                            </div>
                        </div>
                        
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">グレード</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_grade"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                     <form:radiobuttons id="tj_grade_id" path="coOptionJacketTuxedoInfo.tjGrade" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjGradeMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_grade_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">裏仕様</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_backSpec" path="coOptionJacketTuxedoInfo.tjBackSpec" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjBackSpecMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_backSpecMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="tj_backSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">台場</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_fort" path="coOptionJacketTuxedoInfo.tjFort" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjFortMap}"/>
                                </form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_fortMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="tj_fort_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">拝絹地</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_GlossFablic" path="coOptionJacketTuxedoInfo.tjGlossFablic" class="form-control-sm form-control">
                                	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjGlossFablicMap}"/>
                                </form:select>
                            </div>
                            <div class="col-12 col-md-6" id="tj_GlossFablic_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟裏（ヒゲ）</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                     <form:radiobuttons id="tj_backCollar_id" path="coOptionJacketTuxedoInfo.tjBackCollar" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBackCollarMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_backCollarMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_backCollar_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟吊</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                     <form:radiobuttons id="tj_chainHange_id" path="coOptionJacketTuxedoInfo.tjChainHange" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjChainHangeMap}"/>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_chainHange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペル幅</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                     <form:radiobuttons id="tj_lapelWidth_id" path="coOptionJacketTuxedoInfo.tjLapelWidth" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjLapelWidthMap}"/>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_lapelWidthMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_lapelWidth_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フラワーホール</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_flowerHole"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
	                            <form:select id="tj_flowerHole" path="coOptionJacketTuxedoInfo.tjFlowerHole" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjFlowerHoleMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-6" id="tj_flowerHole_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_breastPkt_id" path="coOptionJacketTuxedoInfo.tjBreastPkt" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBreastPktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_breastPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_breastPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_waistPkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-4">
                            	<form:select id="tj_waistPkt" path="coOptionJacketTuxedoInfo.tjWaistPkt" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjWaistPktMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-5" id="tj_waistPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">チェンジポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_changePkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-7">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_changePkt_id" path="coOptionJacketTuxedoInfo.tjChangePkt" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjChangePktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_changePktMsg">
                            </div> -->
                            <div class="col-12 col-md-2" id="tj_changePkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">スランテッドポケット</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_slantedPkt_id" path="coOptionJacketTuxedoInfo.tjSlantedPkt" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjSlantedPktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_slantedPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_slantedPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">忍びポケット</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_coinPkt" path="coOptionJacketTuxedoInfo.tjCoinPkt" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjCoinPktMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-6" id="tj_coinPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖仕様</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_sleeveSpec_id" path="coOptionJacketTuxedoInfo.tjSleeveSpec" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjSleeveSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_sleeveSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">マニカ</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_manica_id" path="coOptionJacketTuxedoInfo.tjManica" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjManicaMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_manica_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖釦</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tj_sleeveBtnType"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_sleeveBtnType_id" path="coOptionJacketTuxedoInfo.tjSleeveBtnType" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjSleeveBtnTypeMap}"/>
									袖釦数
									<a href="#" id="tj_sleeveBtnCnt_m"><i class="fa fa-minus-square" style="font-size:32px"></i></a>&nbsp;
                                    <!-- <input type="text" id="tj_sleeveBtnCnt" name="coOptionJacketTuxedoInfo.tjSleeveBtnCnt" value="4" class="form-control-sm form-control" readonly style="width:36px">&nbsp; -->
                                    <form:input id="tj_sleeveBtnCnt" path="coOptionJacketTuxedoInfo.tjSleeveBtnCnt" class="form-control-sm form-control" readonly = "true" style="width:36px"/>&nbsp;
                                    <a href="#" id="tj_sleeveBtnCnt_p"><i class="fa fa-plus-square" style="font-size:32px"></i></a>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="tj_sleeveBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="tj_sleeveBtnType_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖口</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_cuffSpec_id" path="coOptionJacketTuxedoInfo.tjCuffSpec" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjCuffSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_cuffSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">内ポケット変更</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_insidePktChange_id" path="coOptionJacketTuxedoInfo.tjInsidePktChange" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjInsidePktChangeMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_insidePktChange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">下前胸内ポケット仕様</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_breastInnerPkt_id" path="coOptionJacketTuxedoInfo.tjBreastInnerPkt" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBreastInnerPktMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_breastInnerPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_stitch_id" path="coOptionJacketTuxedoInfo.tjStitch" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjStitchMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_stitch_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                    <form:radiobuttons id="tj_bhColor_id" path="coOptionJacketTuxedoInfo.tjBhColor" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBhColorMap}"/>
                                </div>
                                <div id="tj_bhColor_div">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="tj_bhColorPlaceAll" path="coOptionJacketTuxedoInfo.tjBhColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjBhColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_tj_bhColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_tj_bhColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="tjBhColorPlaceMap" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBhColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="tj_bhColorPlace_${row.count}" class="form-check-label ">
                                        <input type="checkbox" id="tj_bhColorPlace_${row.count}" name="coOptionJacketTuxedoInfo.tjBhColorPlace${row.count}" value="${tjBhColorPlaceMap.key }" class="form-check-input">${tjBhColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="tj_bhColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="tjBhColorsMap" items="${orderCoForm.coOptionJacketTuxedoInfo.tjBhColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="bhColor" class="form-check-label ">
                                			    <input type="radio" id="bhColor_${tjBhColorsMap.key}" name="coOptionJacketTuxedoInfo.tjBhColor${row.count}" value="${tjBhColorsMap.key}" class="form-check-input">${tjBhColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_bhColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
                                    <form:radiobuttons id="tj_byColor_id" path="coOptionJacketTuxedoInfo.tjByColor" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjByColorMap}"/>
                                </div>
                                <div id="tj_byColor_div">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="tj_byColorPlaceAll" path="coOptionJacketTuxedoInfo.tjByColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjByColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_tj_byColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_tj_byColorPlace">全解除</button>
                                </div>
                                </div>
                                 <c:forEach var="tjByColorPlaceMap" items="${orderCoForm.coOptionJacketTuxedoInfo.tjByColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="tj_byColorPlace_${row.count}" class="form-check-label ">
                                        <input type="checkbox" id="tj_byColorPlace_${row.count}" name="coOptionJacketTuxedoInfo.tjByColorPlace${row.count}" value="${tjByColorPlaceMap.key }" class="form-check-input">${tjByColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="tj_byColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="tjByColorsMap" items="${orderCoForm.coOptionJacketTuxedoInfo.tjByColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="byColor" class="form-check-label ">
                                			    <input type="radio" id="byColor_${tjByColorsMap.key}" name="coOptionJacketTuxedoInfo.tjByColor${row.count}" value="${tjByColorsMap.key}" class="form-check-input">${tjByColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_byColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ベント</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_ventSpec_id" path="coOptionJacketTuxedoInfo.tjVentSpec" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjVentSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_ventSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胴裏素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_bodyBackMate" path="coOptionJacketTuxedoInfo.tjBodyBackMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjBodyBackMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketTuxedoInfo.tjBodyBackMateStkNo" id="tj_bodyBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="tj_bodyBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖裏素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_cuffBackMate" path="coOptionJacketTuxedoInfo.tjCuffBackMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjCuffBackMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketTuxedoInfo.tjCuffBackMateStkNo" id="tj_cuffBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="tj_cuffBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">釦素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="tj_btnMate" path="coOptionJacketTuxedoInfo.tjBtnMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketTuxedoInfo.tjBtnMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketTuxedoInfo.tjBtnMateStkNo" id="tj_btnMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="tj_btnMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">形状記憶</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="tj_shapeMemory_id" path="coOptionJacketTuxedoInfo.tjShapeMemory" class="form-check-input" items="${orderCoForm.coOptionJacketTuxedoInfo.tjShapeMemoryMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="tj_shapeMemory_Msg" align="right">
                            </div>
                        </div>
                    </div>
                </div>

            </div></div>
            
            <div id="wa_jacket_div">
            <div class="card-header">
                <strong class="card-title">JACKET</strong>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col col-lg-12">
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">JACKETモデル</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_jacketModel"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
                            	<form:select id="wj_jacketModel" path="coOptionJacketWashableInfo.wjJacketModel" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjJacketModelMap}"/>
								</form:select>
							</div>
							<div class="col-12 col-md-6" align="right" id="jacketModel_Msg">
                            </div>
                            <div class="col-12 col-md-9 offset-md-3" id="wj_jacketModelMsg" style="margin-top:8px"></div>
                            <div class="col-12 col-md-9 offset-md-3" id="wj_jacketModelCheck" style="display:none"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フロント釦数</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_frontBtnCnt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-3">
                            	<form:select id="wj_frontBtnCnt" path="coOptionJacketWashableInfo.wjFrontBtnCnt" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjFrontBtnCntMap}"/>
								</form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_frontBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="wj_frontBtnCnt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペルデザイン</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_lapelDesign"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_lapelDesign_id" path="coOptionJacketWashableInfo.wjLapelDesign" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjLapelDesignMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_lapelDesignMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_lapelDesign_Msg" align="right">
                            </div>
                        </div>
                        <!-- 一旦は非表示
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペルモデル</label></div>
                            <div class="col col-md-3">
                                <select name="wj_lapelModel" id="wj_lapelModel" class="form-control-sm form-control">
                                    <option value="TR02">TR02</option>
                                    <option value="CH14">CH14</option>
                                    <option value="NR05">NR05</option>
                                    <option value="NZ01">NZ01</option>
                                    <option value="BS05">BS05</option>
                                </select>
                            </div>
                        </div>
                        -->
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">グレード</label>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_grade_id" path="coOptionJacketWashableInfo.wjGrade" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjGradeMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_grade_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">裏仕様</label>
                            </div>
                            <div class="col col-md-3">
                            	<form:select id="wj_backSpec" path="coOptionJacketWashableInfo.wjBackSpec" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjBackSpecMap}"/>
								</form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_backSpecMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="wj_backSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">台場</label></div>
                            <div class="col col-md-3">
                            	<form:select id="wj_fort" path="coOptionJacketWashableInfo.wjFort" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjFortMap}"/>
								</form:select>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_fortMsg">
                            </div> -->
                            <div class="col-12 col-md-6" id="wj_fort_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟裏（ヒゲ）</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_backCollar_id" path="coOptionJacketWashableInfo.wjBackCollar" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjBackCollarMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_backCollarMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_backCollar_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">襟吊</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_chainHange_id" path="coOptionJacketWashableInfo.wjChainHange" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjChainHangeMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_chainHange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ラペル幅</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_lapelWidth_id" path="coOptionJacketWashableInfo.wjLapelWidth" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjLapelWidthMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_lapelWidthMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_lapelWidth_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">フラワーホール</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_flowerHole"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-3">
                            	<form:select id="wj_flowerHole" path="coOptionJacketWashableInfo.wjFlowerHole" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjFlowerHoleMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-6" id="wj_flowerHole_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_breastPkt_id" path="coOptionJacketWashableInfo.wjBreastPkt" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjBreastPktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_breastPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_breastPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_waistPkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col col-md-4">
                            	<form:select id="wj_waistPkt" path="coOptionJacketWashableInfo.wjWaistPkt" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjWaistPktMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-5" id="wj_waistPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">チェンジポケット</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_changePkt"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_changePkt_id" path="coOptionJacketWashableInfo.wjChangePkt" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjChangePktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_changePktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_changePkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">スランテッドポケット</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_slantedPkt_id" path="coOptionJacketWashableInfo.wjSlantedPkt" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjSlantedPktMap}"/>
								</div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_slantedPktMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_slantedPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">忍びポケット</label></div>
                            <div class="col col-md-3">
                            	<form:select id="wj_coinPkt" path="coOptionJacketWashableInfo.wjCoinPkt" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjCoinPktMap}"/>
								</form:select>
                            </div>
                            <div class="col-12 col-md-6" id="wj_coinPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖仕様</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_sleeveSpec_id" path="coOptionJacketWashableInfo.wjSleeveSpec" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjSleeveSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_sleeveSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">マニカ</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_manica_id" path="coOptionJacketWashableInfo.wjManica" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjManicaMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_manica_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖釦</label>
                            <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wj_sleeveBtnType"><i class="fa fa-question-circle text-danger"></i></button>
                            </div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_sleeveBtnTypeKasane_id" path="coOptionJacketWashableInfo.wjSleeveBtnType" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjSleeveBtnTypeMap}"/>
									袖釦数　
                                    <a href="#" id="wj_sleeveBtnCnt_m"><i class="fa fa-minus-square" style="font-size:32px"></i></a>&nbsp;
                                    <!-- <input type="text" id="wj_sleeveBtnCnt" name="coOptionJacketWashableInfo.wjSleeveBtnCnt" value="4" class="form-control-sm form-control" readonly style="width:36px">&nbsp; -->
                                    <form:input id="wj_sleeveBtnCnt" path="coOptionJacketWashableInfo.wjSleeveBtnCnt" class="form-control-sm form-control" readonly = "true" style="width:36px"/>&nbsp;
                                    <a href="#" id="wj_sleeveBtnCnt_p"><i class="fa fa-plus-square" style="font-size:32px"></i></a>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-9 offset-md-3" id="wj_sleeveBtnCntMsg">
                            </div> -->
                            <div class="col-12 col-md-3" id="wj_sleeveBtnTypeKasane_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖口</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_cuffSpec_id" path="coOptionJacketWashableInfo.wjCuffSpec" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjCuffSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_cuffSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">内ポケット変更</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_insidePktChange_id" path="coOptionJacketWashableInfo.wjInsidePktChange" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjInsidePktChangeMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_insidePktChange_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">下前胸内ポケット仕様</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_breastInnerPkt_id" path="coOptionJacketWashableInfo.wjBreastInnerPkt" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjBreastInnerPktMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_breastInnerPkt_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_stitch_id" path="coOptionJacketWashableInfo.wjStitch" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjStitchMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_stitch_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ステッチ箇所変更</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_stitchModify_id" path="coOptionJacketWashableInfo.wjStitchModify" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjStitchModifyMap}"/>
								</div>
                                <div id="wj_stitchModifyPlace">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wj_stitchModifyPlace">全選択</button>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wj_stitchModifyPlace">全解除</button>
                                </div>
                                </div>
                                <div class="offset-md-1">
                                <%-- <div class="form-check-inline form-check">
                                	<form:checkboxes id="wj_stitchModifyPlace_id" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjStitchModifyPlaceMap}" path="coOptionJacketWashableInfo.wjStitchModifyPlace"/>
                                </div> --%>
                                <c:forEach var="wjStitchModifyPlaceMap" items="${orderCoForm.coOptionJacketWashableInfo.wjStitchModifyPlaceMap }" varStatus="row">
                                	<div class="form-check-inline form-check">
                                		<input type="checkbox" id="wj_stitchModifyPlace_id${row.count}" name="coOptionJacketWashableInfo.wjStitchModifyPlace${row.count}" value="${wjStitchModifyPlaceMap.key}" class="form-check-input">${wjStitchModifyPlaceMap.value}
                                	</div>
                                </c:forEach>
                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_stitchModify_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ダブルステッチ変更</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_dStitchModify_id" path="coOptionJacketWashableInfo.wjDStitchModify" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjDStitchModifyMap}"/>
								</div>
                                <div id="wj_dStitchModifyPlace">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wj_dStitchModifyPlace">全選択</button>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wj_dStitchModifyPlace">全解除</button>
                                </div>
                                </div>
                                <div class="offset-md-1">
                                	<c:forEach var="wjDStitchModifyPlaceMap" items="${orderCoForm.coOptionJacketWashableInfo.wjDStitchModifyPlaceMap}" varStatus="row">
                                		<div class="form-check-inline form-check">
                                			<input type="checkbox" id="wj_dStitchModifyPlace_id${row.count}" name="coOptionJacketWashableInfo.wjDStitchModifyPlace${row.count}" value="${wjDStitchModifyPlaceMap.key}" class="form-check-input">${wjDStitchModifyPlaceMap.value}
                                		</div>
                                	</c:forEach>
                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_dStitchModify_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">AMF色指定</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_amfColor_id" path="coOptionJacketWashableInfo.wjAmfColor" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjAmfColorMap}"/>
								</div>
                                <div id="wj_amfColor_div" style="display:none;">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="wj_amfColorPlaceAll" path="coOptionJacketWashableInfo.wjAmfColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjAmfColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wj_amfColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wj_amfColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="wjAmfColorPlaceMap" items="${orderCoForm.coOptionJacketWashableInfo.wjAmfColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="wj_amfColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="wj_amfColorPlace_${row.count}" name="coOptionJacketWashableInfo.wjAmfColorPlace${row.count}" value="${wjAmfColorPlaceMap.key }" class="form-check-input">${wjAmfColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="wj_amfColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="wjAmfColorsMap" items="${orderCoForm.coOptionJacketWashableInfo.wjAmfColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="wj_amfColor" class="form-check-label ">
                                			    <input type="radio" id="wj_amfColor_${wjAmfColorsMap.key}" name="coOptionJacketWashableInfo.wjAmfColor${row.count}" value="${wjAmfColorsMap.key}" class="form-check-input">${wjAmfColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_amfColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_bhColor_id" path="coOptionJacketWashableInfo.wjBhColor" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjBhColorMap}"/>
								</div>
                                <div id="wj_bhColor_div">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="wj_bhColorPlaceAll" path="coOptionJacketWashableInfo.wjBhColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjBhColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wj_bhColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wj_bhColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="wjBhColorPlaceMap" items="${orderCoForm.coOptionJacketWashableInfo.wjBhColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="wj_bhColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="wj_bhColorPlace_${row.count}" name="coOptionJacketWashableInfo.wjBhColorPlace${row.count}" value="${wjBhColorPlaceMap.key }" class="form-check-input">${wjBhColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="wj_bhColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="wjBhColorsMap" items="${orderCoForm.coOptionJacketWashableInfo.wjBhColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="wj_bhColor" class="form-check-label ">
                                			    <input type="radio" id="wj_bhColor_${wjBhColorsMap.key}" name="coOptionJacketWashableInfo.wjBhColor${row.count}" value="${wjBhColorsMap.key}" class="form-check-input">${wjBhColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_bhColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_byColor_id" path="coOptionJacketWashableInfo.wjByColor" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjByColorMap}"/>
								</div>
                                <div id="wj_byColor_div">
                                <div class="offset-md-1">
                                <div class="form-check-inline form-check">
                                    <form:select id="wj_byColorPlaceAll" path="coOptionJacketWashableInfo.wjByColorPlaceAll" class="form-control-sm form-control">
                                    	<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjByColorPlaceAllMap}"/>
                                    </form:select>&nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wj_byColorPlace">全選択</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wj_byColorPlace">全解除</button>
                                </div>
                                </div>
                                <c:forEach var="wjByColorPlaceMap" items="${orderCoForm.coOptionJacketWashableInfo.wjByColorPlaceMap }" varStatus="row">
                                	<div class="offset-md-1">
                                    <div class="form-check">
                                    <div class="checkbox">
                                    <label for="wj_byColorPlace" class="form-check-label ">
                                        <input type="checkbox" id="wj_byColorPlace_${row.count}" name="coOptionJacketWashableInfo.wjByColorPlace${row.count}" value="${wjByColorPlaceMap.key }" class="form-check-input">${wjByColorPlaceMap.value }
                                    </label>
                                    </div>
                                    </div>
                                	</div>
                                	<div class="offset-md-2" id="wj_byColorPlace_${row.count}_div" style="display:none">
                                		<c:forEach var="wjByColorsMap" items="${orderCoForm.coOptionJacketWashableInfo.wjByColorPlaceAllMap}">
                                		  <div class="form-check-inline form-check">
                                		     <label for="wj_byColor" class="form-check-label ">
                                			    <input type="radio" id="wj_byColor_${wjByColorsMap.key}" name="coOptionJacketWashableInfo.wjByColor${row.count}" value="${wjByColorsMap.key}" class="form-check-input">${wjByColorsMap.value}
                                		     </label>
                                		  </div>
                                		</c:forEach>
                                	</div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_byColor_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">ベント</label></div>
                            <div class="col-12 col-md-6">
                            	<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_ventSpec_id" path="coOptionJacketWashableInfo.wjVentSpec" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjVentSpecMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_ventSpec_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">胴裏素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="wj_bodyBackMate" path="coOptionJacketWashableInfo.wjBodyBackMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjBodyBackMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketWashableInfo.wjBodyBackMateStkNo" id="wj_bodyBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="wj_bodyBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">袖裏素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="wj_cuffBackMate" path="coOptionJacketWashableInfo.wjCuffBackMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjCuffBackMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketWashableInfo.wjCuffBackMateStkNo" id="wj_cuffBackMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="wj_cuffBackMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">釦素材</label></div>
                            <div class="col col-md-3">
                            	<form:select id="wj_btnMate" path="coOptionJacketWashableInfo.wjBtnMate" class="form-control-sm form-control">
									<form:options items="${orderCoForm.coOptionJacketWashableInfo.wjBtnMateMap}"/>
								</form:select>
                            </div>
                            <div class="col col-md-4">
                                <select name="coOptionJacketWashableInfo.wjBtnMateStkNo" id="wj_btnMateStkNo" class="form-control-sm form-control">
                                </select>
                            </div>
                            <div class="col-12 col-md-2" id="wj_btnMate_Msg" align="right">
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">形状記憶</label></div>
                            <div class="col-12 col-md-6">
                           		<div class="form-check-inline form-check">
									<form:radiobuttons id="wj_shapeMemory_id" path="coOptionJacketWashableInfo.wjShapeMemory" class="form-check-input" items="${orderCoForm.coOptionJacketWashableInfo.wjShapeMemoryMap}"/>
								</div>
                            </div>
                            <div class="col-12 col-md-3" id="wj_shapeMemory_Msg" align="right">
                            </div>
                        </div>
                    </div>
                </div>

            </div></div>
            <input type="hidden" id="jacketItemFlag" name="jacketItemFlag" value="0"/>
			<input type="hidden" id="pantsItemFlag" name="pantsItemFlag" value="${orderCoForm.pantsItemFlag }"/>
			<input type="hidden" id="giletItemFlag" name="giletItemFlag" value="${orderCoForm.giletItemFlag }"/>
			<input type="hidden" id="shirtItemFlag" name="shirtItemFlag" value="${orderCoForm.shirtItemFlag }"/>
			<input type="hidden" id="coatItemFlag" name="coatItemFlag" value="${orderCoForm.coatItemFlag }"/>
			<input type="hidden" id="pants2ItemFlag" name="pants2ItemFlag" value="${orderCoForm.pants2ItemFlag }"/>
			
            
            <input type="hidden" id="jacketAdFlag" name="jacketAdFlag" value="${orderCoForm.jacketAdFlag }" />
            <input type="hidden" id="coatAdFlag" name="coatAdFlag" value="${orderCoForm.coatAdFlag }" />
            <input type="hidden" id="giletAdFlag" name="giletAdFlag" value="${orderCoForm.giletAdFlag }" />
            <input type="hidden" id="pantsAdFlag" name="pantsAdFlag" value="${orderCoForm.pantsAdFlag }" />
            <input type="hidden" id="pants2AdFlag" name="pants2AdFlag" value="${orderCoForm.pants2AdFlag }" />
            <input type="hidden" id="shirtAdFlag" name="shirtAdFlag" value="${orderCoForm.shirtAdFlag }" />	
            
</form:form>
<!-- 標準 JACKET JACKETモデル -->
<div class="modal fade" id="infotext_jacketModel" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">JACKETモデル</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                JACKETモデル選択時に連動して変更される可能性がある項目<br />
                ・フロント釦数<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・袖釦<br />
                ・袖釦数<br />
                ・ステッチ箇所変更<br />
                ・ボタンホール色指定<br />
                ・ボタン付け糸指定<br />
                ・ベント
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET フロント釦数 -->
<div class="modal fade" id="infotext_oj_frontBtnCnt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フロント釦数</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フロント釦数選択時に連動して変更される可能性がある項目<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・ステッチ箇所変更<br />
                ・ボタンホール色指定<br />
                ・ボタン付け糸指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET ラペルデザイン-->
<div class="modal fade" id="infotext_lapelDesign" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">ラペルデザイン</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                ラペルデザイン選択時に連動して変更される可能性がある項目<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・ステッチ箇所変更
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET グレード-->
<div class="modal fade" id="infotext_grade" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">グレード</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                グレード選択時に連動して変更される可能性がある項目<br />
                ・裏仕様<br />
                ・台場
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET 裏仕様-->
<div class="modal fade" id="infotext_backSpec" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">裏仕様</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                裏仕様選択時に連動して変更される可能性がある項目<br />
                ・台場
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET フラワーホール-->
<div class="modal fade" id="infotext_flowerHole" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フラワーホール</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フラワーホール選択時に連動して変更される可能性がある項目<br />
                ・ボタンホール色指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET 胸ポケット-->
<div class="modal fade" id="infotext_breastPkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">胸ポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                胸ポケット選択時に連動して変更される可能性がある項目<br />
                ・ダブルステッチ変更
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET 腰ポケット-->
<div class="modal fade" id="infotext_waistPkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">腰ポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                腰ポケット選択時に連動して変更される可能性がある項目<br />
                ・チェンジポケット<br />
                ・スランテッドポケット<br />
                ・ダブルステッチ変更
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET チェンジポケット-->
<div class="modal fade" id="infotext_changePkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">チェンジポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                チェンジポケット選択時に連動して変更される可能性がある項目<br />
                ・スランテッドポケット
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET 袖釦-->
<div class="modal fade" id="infotext_sleeveBtnType" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">袖釦</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                袖釦選択時に連動して変更される可能性がある項目<br />
                ・袖釦数
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 標準 JACKET AMFステッチ-->
<div class="modal fade" id="infotext_stitch" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">ステッチ種類</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                ステッチ種類選択時に連動して変更される可能性がある項目<br />
                ・ステッチ箇所変更<br />
                ・ダブルステッチ変更<br />
                ・AMF色指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>
<!-- タキシード JACKET JACKETモデル -->
<div class="modal fade" id="infotext_tj_jacketModel" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">JACKETモデル</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                JACKETモデル選択時に連動して変更される可能性がある項目<br />
                ・フロント釦数<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・袖釦<br />
                ・袖釦数<br />
                ・ボタンホール色指定<br />
                ・ベント
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET フロント釦数 -->
<div class="modal fade" id="infotext_tj_frontBtnCnt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フロント釦数</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フロント釦数選択時に連動して変更される可能性がある項目<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・ボタンホール色指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET ラペルデザイン-->
<div class="modal fade" id="infotext_tj_lapelDesign" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">ラペルデザイン</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                ラペルデザイン選択時に連動して変更される可能性がある項目<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET グレード-->
<div class="modal fade" id="infotext_tj_grade" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">グレード</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                グレード選択時に連動して変更される可能性がある項目<br />
                ・裏仕様
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET フラワーホール-->
<div class="modal fade" id="infotext_tj_flowerHole" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フラワーホール</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フラワーホール選択時に連動して変更される可能性がある項目<br />
                ・ボタンホール色指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET 腰ポケット-->
<div class="modal fade" id="infotext_tj_waistPkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">腰ポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                腰ポケット選択時に連動して変更される可能性がある項目<br />
                ・チェンジポケット<br />
                ・スランテッドポケット
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET チェンジポケット-->
<div class="modal fade" id="infotext_tj_changePkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">チェンジポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                チェンジポケット選択時に連動して変更される可能性がある項目<br />
                ・スランテッドポケット
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- タキシード JACKET 袖釦-->
<div class="modal fade" id="infotext_tj_sleeveBtnType" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">袖釦</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                袖釦選択時に連動して変更される可能性がある項目<br />
                ・袖釦数
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET JACKETモデル -->
<div class="modal fade" id="infotext_wj_jacketModel" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">JACKETモデル</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                JACKETモデル選択時に連動して変更される可能性がある項目<br />
                ・フロント釦数<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・袖釦<br />
                ・袖釦数<br />
                ・ステッチ箇所変更<br />
                ・ボタンホール色指定<br />
                ・ボタン付け糸指定<br />
                ・ベント
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET フロント釦数 -->
<div class="modal fade" id="infotext_wj_frontBtnCnt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フロント釦数</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フロント釦数選択時に連動して変更される可能性がある項目<br />
                ・ラペルデザイン<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・胸ポケット<br />
                ・ステッチ箇所変更<br />
                ・ボタンホール色指定<br />
                ・ボタン付け糸指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET ラペルデザイン-->
<div class="modal fade" id="infotext_wj_lapelDesign" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">ラペルデザイン</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                ラペルデザイン選択時に連動して変更される可能性がある項目<br />
                ・襟裏（ヒゲ）<br />
                ・ラペル幅<br />
                ・ステッチ箇所変更
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET フラワーホール-->
<div class="modal fade" id="infotext_wj_flowerHole" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">フラワーホール</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                フラワーホール選択時に連動して変更される可能性がある項目<br />
                ・ボタンホール色指定
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET 腰ポケット-->
<div class="modal fade" id="infotext_wj_waistPkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">腰ポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                腰ポケット選択時に連動して変更される可能性がある項目<br />
                ・チェンジポケット<br />
                ・スランテッドポケット
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET チェンジポケット-->
<div class="modal fade" id="infotext_wj_changePkt" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">チェンジポケット</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                チェンジポケット選択時に連動して変更される可能性がある項目<br />
                ・スランテッドポケット
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- ウォッシャブル JACKET 袖釦-->
<div class="modal fade" id="infotext_wj_sleeveBtnType" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">袖釦</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                <br />
                袖釦選択時に連動して変更される可能性がある項目<br />
                ・袖釦数
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
            </div>
        </div>
    </div>
</div>

<!-- 自作js -->
<%-- <script src="${pageContext.request.contextPath}/resources/app/self/js/rule.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/product.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.jacket.standard.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.jacket.tuxedo.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.jacket.washable.js"></script>
<script>
var contextPath = jQuery("meta[name='contextPath']").attr("content");
var orderPattern = "CO";
var orderFlag = "${orderCoForm.orderFlag}";
var selectIdList = {
	"bodyBackMate":"00038",
	"cuffBackMate":"00040",
	"btnMate":"00042",
	"tj_bodyBackMate":"00038",
	"tj_cuffBackMate":"00040",
	"tj_btnMate":"00042",
	"wj_bodyBackMate":"00038",
	"wj_cuffBackMate":"00040",
	"wj_btnMate":"00042"
};

jQuery(function() {
	var jacketAdFlag="${orderCoForm.jacketAdFlag}";
if(orderFlag=="orderCo"){
	if(jacketAdFlag=="1"){
		
	}else{
		jQuery("#jacketAdFlag").val("0");
	}
}
if(orderFlag=="orderBack"){
	if(productCategory == "9000101"){
		var sessionOjJacketModel = "${orderCoForm.coOptionJacketStandardInfo.ojJacketModel}";
		jQuery("#jacketModel").click(function(){
			var jacketModel = jQuery("#jacketModel").val();
			sessionJacketAdFlag(sessionOjJacketModel,jacketModel);
		});
	}else if(productCategory == "9000102"){
		var sessionTjJacketModel = "${orderCoForm.coOptionJacketTuxedoInfo.tjJacketModel}";
		jQuery("#tj_jacketModel").click(function(){
			var tjJacketModel = jQuery("#tj_jacketModel").val();
			sessionJacketAdFlag(sessionTjJacketModel,tjJacketModel);
		});
	}else if(productCategory == "9000103"){
		var sessionWjJacketModel = "${orderCoForm.coOptionJacketWashableInfo.wjJacketModel}";
		jQuery("#wj_jacketModel").click(function(){
			var wjJacketModel = jQuery("#wj_jacketModel").val();
			sessionJacketAdFlag(sessionWjJacketModel,wjJacketModel);
		});
	}
}

	var headerName = $("meta[name='_csrf_header']").attr("content"); // (1)
    var tokenValue = $("meta[name='_csrf']").attr("content"); // (2)
    jQuery(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(headerName, tokenValue); // (3)
    });

	var productCategory = jQuery('input[name="productCategory"]:checked').val();

	setJacketModelDisable(productCategory);
	
	//--------------------------------------------
	// 共通
	//--------------------------------------------
	initCommon();

	//--------------------------------------------
	// タブメニュー
	//--------------------------------------------
	initTabMenu();

	//--------------------------------------------
	// 商品タブ
	//--------------------------------------------
	initProduct();

	//--------------------------------------------
	// オプションタブ（Jacket）
	//--------------------------------------------
	if(productCategory == "9000101"){
		initOptionJacketStandard();
	}else if(productCategory == "9000102"){
		initOptionJacketTuxedo();
	}else if(productCategory == "9000103"){
		initOptionJacketWashable();
		jQuery("#wj_jacketModel option[value='BS05']").remove();
	}
	
	mateInit();

	changeJkOptionByStock(productCategory);

	ojSession();
	
	jQuery("#jacketItemFlag").val("1");

	optionJacketChangeModel(productCategory);
	
	var orderFlag = "${orderCoForm.orderFlag}";
	if(orderFlag == "orderCo"){
		
	}else if(orderFlag == "orderLink"){
		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		if(productCategory == "9000101"){

			var ojInsidePktPlace = "${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlace}";
			ojInsidePktPlace = ojInsidePktPlace.split(",");
			for(var i=0;i<ojInsidePktPlace.length;i++){
				if(ojInsidePktPlace[i] == "0002101"){
					jQuery("#insidePktPlace_id1").prop("checked",true);
				}else if(ojInsidePktPlace[i] == "0002102"){
					jQuery("#insidePktPlace_id2").prop("checked",true);
				}else if(ojInsidePktPlace[i] == "0002103"){
					jQuery("#insidePktPlace_id3").prop("checked",true);
				}else if(ojInsidePktPlace[i] == "0002104"){
					jQuery("#insidePktPlace_id4").prop("checked",true);
				}
			}
			
			var ojStitchModifyPlace = "${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace}";
			ojStitchModifyPlace = ojStitchModifyPlace.split(",");
			for(var i=0;i<ojStitchModifyPlace.length;i++){
				if(ojStitchModifyPlace[i] == "0002501"){
					jQuery("#stitchModifyPlace_id1").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002502"){
					jQuery("#stitchModifyPlace_id2").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002503"){
					jQuery("#stitchModifyPlace_id3").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002504"){
					jQuery("#stitchModifyPlace_id4").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002505"){
					jQuery("#stitchModifyPlace_id5").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002507"){
					jQuery("#stitchModifyPlace_id6").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002508"){
					jQuery("#stitchModifyPlace_id7").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002509"){
					jQuery("#stitchModifyPlace_id8").prop("checked",true);
				}else if(ojStitchModifyPlace[i] == "0002510"){
					jQuery("#stitchModifyPlace_id9").prop("checked",true);
				}
			}
			// 選択中のダブルステッチ変更
			ctrlDStitchModifyPlace();
			// AMF色指定の有効/無効を制御
			ctrlAmfColor();

			var ojDStitchModifyPlace = "${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace}";
			ojDStitchModifyPlace = ojDStitchModifyPlace.split(",");
			for(var i=0;i<ojDStitchModifyPlace.length;i++){
				if(ojDStitchModifyPlace[i] == "0002701"){
					jQuery("#dStitchModifyPlace_id1").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002702"){
					jQuery("#dStitchModifyPlace_id2").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002703"){
					jQuery("#dStitchModifyPlace_id3").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002704"){
					jQuery("#dStitchModifyPlace_id4").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002705"){
					jQuery("#dStitchModifyPlace_id4").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002707"){
					jQuery("#dStitchModifyPlace_id5").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002708"){
					jQuery("#dStitchModifyPlace_id6").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002709"){
					jQuery("#dStitchModifyPlace_id7").prop("checked",true);
				}else if(ojDStitchModifyPlace[i] == "0002710"){
					jQuery("#dStitchModifyPlace_id8").prop("checked",true);
				}
			}

			var ojAmfAllColor = "${orderCoForm.coOptionJacketStandardInfo.ojAmfAllColor}";
			ojAmfAllColor = ojAmfAllColor.split(",");
			
			var ojAmfColorPlace = "${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace}";
			ojAmfColorPlace = ojAmfColorPlace.split(",");
			for(var i=0;i<ojAmfColorPlace.length;i++){
				for(var i=0;i<ojAmfAllColor.length;i++){
					if(ojAmfColorPlace[i] == "0002901"){
						jQuery("#amfColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor1'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002902"){
						jQuery("#amfColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor2'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002903"){
						jQuery("#amfColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor3'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002904"){
						jQuery("#amfColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor4'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002905"){
						jQuery("#amfColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor5'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002907"){
						jQuery("#amfColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor6'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002908"){
						jQuery("#amfColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor7'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002909"){
						jQuery("#amfColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor8'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}else if(ojAmfColorPlace[i] == "0002910"){
						jQuery("#amfColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojAmfColor9'][value='" + ojAmfAllColor[i] + "']").prop("checked", true);
					}
				}
			}
			jQuery('input[id^="amfColorPlace_"]').change();

			var ojBhAllColor = "${orderCoForm.coOptionJacketStandardInfo.ojBhAllColor}";
			ojBhAllColor = ojBhAllColor.split(",");
			
			var ojBhColorPlace = "${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace}";
			ojBhColorPlace = ojBhColorPlace.split(",");
			for(var i=0;i<ojBhColorPlace.length;i++){
				//for(var i=0;i<ojBhAllColor.length;i++){
					if(ojBhColorPlace[i] == "0003201"){
						jQuery("#bhColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor1'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003202"){
						jQuery("#bhColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor2'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003203"){
						jQuery("#bhColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor3'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003204"){
						jQuery("#bhColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor4'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003205"){
						jQuery("#bhColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor5'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003206"){
						jQuery("#bhColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor6'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003207"){
						jQuery("#bhColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor7'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003208"){
						jQuery("#bhColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor8'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003209"){
						jQuery("#bhColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor9'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003210"){
						jQuery("#bhColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor10'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003211"){
						jQuery("#bhColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor11'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003212"){
						jQuery("#bhColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor12'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003213"){
						jQuery("#bhColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor13'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003214"){
						jQuery("#bhColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor14'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003215"){
						jQuery("#bhColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor15'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003216"){
						jQuery("#bhColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor16'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}else if(ojBhColorPlace[i] == "0003217"){
						jQuery("#bhColorPlace_17").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojBhColor17'][value='" + ojBhAllColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="bhColorPlace_"]').change();

			var ojByAllColor = "${orderCoForm.coOptionJacketStandardInfo.ojByAllColor}";
			ojByAllColor = ojByAllColor.split(",");
			
			var ojByColorPlace = "${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace}";
			ojByColorPlace = ojByColorPlace.split(",");
			for(var i=0;i<ojByColorPlace.length;i++){
				//for(var i=0;i<ojByAllColor.length;i++){
					if(ojByColorPlace[i] == "0003501"){
						jQuery("#byColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor1'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003502"){
						jQuery("#byColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor2'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003503"){
						jQuery("#byColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor3'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003504"){
						jQuery("#byColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor4'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003505"){
						jQuery("#byColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor5'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003506"){
						jQuery("#byColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor6'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003507"){
						jQuery("#byColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor7'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003508"){
						jQuery("#byColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor8'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003509"){
						jQuery("#byColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor9'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003510"){
						jQuery("#byColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor10'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003511"){
						jQuery("#byColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor11'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003512"){
						jQuery("#byColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor12'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003513"){
						jQuery("#byColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor13'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003514"){
						jQuery("#byColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor14'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003515"){
						jQuery("#byColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor15'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}else if(ojByColorPlace[i] == "0003516"){
						jQuery("#byColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketStandardInfo.ojByColor16'][value='" + ojByAllColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="byColorPlace_"]').change();
			
		}else if(productCategory == "9000102"){
			var tjBhColorPlace = "${orderCoForm.coOptionJacketTuxedoInfo.tjBhColorPlace}";
			tjBhColorPlace = tjBhColorPlace.split(",");
			
			var tjAllBhColor = "${orderCoForm.coOptionJacketTuxedoInfo.tjAllBhColor}";
			tjAllBhColor = tjAllBhColor.split(",");
			for(var i=0;i<tjBhColorPlace.length;i++){
				//for(var i=0;i<ojBhAllColor.length;i++){
					if(tjBhColorPlace[i] == "0003201"){
						jQuery("#tj_bhColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor1'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003202"){
						jQuery("#tj_bhColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor2'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003203"){
						jQuery("#tj_bhColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor3'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003204"){
						jQuery("#tj_bhColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor4'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003205"){
						jQuery("#tj_bhColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor5'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003206"){
						jQuery("#tj_bhColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor6'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003207"){
						jQuery("#tj_bhColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor7'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003208"){
						jQuery("#tj_bhColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor8'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003209"){
						jQuery("#tj_bhColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor9'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003210"){
						jQuery("#tj_bhColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor10'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003211"){
						jQuery("#tj_bhColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor11'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003212"){
						jQuery("#tj_bhColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor12'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003213"){
						jQuery("#tj_bhColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor13'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003214"){
						jQuery("#tj_bhColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor14'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003215"){
						jQuery("#tj_bhColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor15'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003216"){
						jQuery("#tj_bhColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor16'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}else if(tjBhColorPlace[i] == "0003217"){
						jQuery("#tj_bhColorPlace_17").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjBhColor17'][value='" + tjAllBhColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="tj_bhColorPlace_"]').change();

			var tjAllByColor = "${orderCoForm.coOptionJacketTuxedoInfo.tjAllByColor}";
			tjAllByColor = tjAllByColor.split(",");
			
			var tjByColorPlace = "${orderCoForm.coOptionJacketTuxedoInfo.tjByColorPlace}";
			tjByColorPlace = tjByColorPlace.split(",");
			for(var i=0;i<tjByColorPlace.length;i++){
				//for(var i=0;i<ojByAllColor.length;i++){
					if(tjByColorPlace[i] == "0003501"){
						jQuery("#tj_byColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor1'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003502"){
						jQuery("#tj_byColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor2'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003503"){
						jQuery("#tj_byColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor3'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003504"){
						jQuery("#tj_byColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor4'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003505"){
						jQuery("#tj_byColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor5'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003506"){
						jQuery("#tj_byColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor6'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003507"){
						jQuery("#tj_byColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor7'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003508"){
						jQuery("#tj_byColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor8'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003509"){
						jQuery("#tj_byColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor9'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003510"){
						jQuery("#tj_byColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor10'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003511"){
						jQuery("#tj_byColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor11'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003512"){
						jQuery("#tj_byColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor12'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003513"){
						jQuery("#tj_byColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor13'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003514"){
						jQuery("#tj_byColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor14'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003515"){
						jQuery("#tj_byColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor15'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}else if(tjByColorPlace[i] == "0003516"){
						jQuery("#tj_byColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketTuxedoInfo.tjByColor16'][value='" + tjAllByColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="tj_byColorPlace_"]').change();
		}else if(productCategory == "9000103"){
			var wjStitchModifyPlace = "${orderCoForm.coOptionJacketWashableInfo.wjStitchModifyPlace}";
			wjStitchModifyPlace = wjStitchModifyPlace.split(",");
			for(var i=0;i<wjStitchModifyPlace.length;i++){
				if(wjStitchModifyPlace[i] == "0002501"){
					jQuery("#wj_stitchModifyPlace_id1").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002502"){
					jQuery("#wj_stitchModifyPlace_id2").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002503"){
					jQuery("#wj_stitchModifyPlace_id3").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002504"){
					jQuery("#wj_stitchModifyPlace_id4").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002505"){
					jQuery("#wj_stitchModifyPlace_id5").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002507"){
					jQuery("#wj_stitchModifyPlace_id6").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002508"){
					jQuery("#wj_stitchModifyPlace_id7").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002509"){
					jQuery("#wj_stitchModifyPlace_id8").prop("checked",true);
				}else if(wjStitchModifyPlace[i] == "0002510"){
					jQuery("#wj_stitchModifyPlace_id9").prop("checked",true);
				}
			}
			// 選択中のダブルステッチ変更
			ctrlWjDStitchPlace();
			// AMF色指定の有効/無効を制御
			ctrlWjAmfColor();

			var wjDStitchModifyPlace = "${orderCoForm.coOptionJacketWashableInfo.wjDStitchModifyPlace}";
			wjDStitchModifyPlace = wjDStitchModifyPlace.split(",");
			for(var i=0;i<wjDStitchModifyPlace.length;i++){
				if(wjDStitchModifyPlace[i] == "0002701"){
					jQuery("#wj_dStitchModifyPlace_id1").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002702"){
					jQuery("#wj_dStitchModifyPlace_id2").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002703"){
					jQuery("#wj_dStitchModifyPlace_id3").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002704"){
					jQuery("#wj_dStitchModifyPlace_id4").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002705"){
					jQuery("#wj_dStitchModifyPlace_id4").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002707"){
					jQuery("#wj_dStitchModifyPlace_id5").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002708"){
					jQuery("#wj_dStitchModifyPlace_id6").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002709"){
					jQuery("#wj_dStitchModifyPlace_id7").prop("checked",true);
				}else if(wjDStitchModifyPlace[i] == "0002710"){
					jQuery("#wj_dStitchModifyPlace_id8").prop("checked",true);
				}
			}

			var wjAmfAllColor = "${orderCoForm.coOptionJacketWashableInfo.wjAllAmfColor}";
			wjAmfAllColor = wjamfAllColor.split(",");
			
			var wjAmfColorPlace = "${orderCoForm.coOptionJacketWashableInfo.wjAmfColorPlace}";
			wjAmfColorPlace = wjAmfColorPlace.split(",");
			for(var i=0;i<wjAmfColorPlace.length;i++){
				//for(var i=0;i<wjamfAllColor.length;i++){
					if(wjAmfColorPlace[i] == "0002901"){
						jQuery("#amfColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor1'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002902"){
						jQuery("#amfColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor2'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002903"){
						jQuery("#amfColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor3'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002904"){
						jQuery("#amfColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor4'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002905"){
						jQuery("#amfColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor5'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002907"){
						jQuery("#amfColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor6'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002908"){
						jQuery("#amfColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor7'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002909"){
						jQuery("#amfColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor8'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}else if(wjAmfColorPlace[i] == "0002910"){
						jQuery("#amfColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjAmfColor9'][value='" + wjAmfAllColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="wj_amfColorPlace_"]').change();

			var wjBhAllColor = "${orderCoForm.coOptionJacketWashableInfo.wjAllBhColor}";
			wjBhAllColor = wjBhAllColor.split(",");
			
			var wjBhColorPlace = "${orderCoForm.coOptionJacketWashableInfo.wjBhColorPlace}";
			wjBhColorPlace = wjBhColorPlace.split(",");
			for(var i=0;i<wjBhColorPlace.length;i++){
				//for(var i=0;i<wjBhAllColor.length;i++){
					if(wjBhColorPlace[i] == "0003201"){
						jQuery("#wj_bhColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor1'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003202"){
						jQuery("#wj_bhColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor2'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003203"){
						jQuery("#wj_bhColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor3'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003204"){
						jQuery("#wj_bhColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor4'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003205"){
						jQuery("#wj_bhColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor5'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003206"){
						jQuery("#wj_bhColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor6'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003207"){
						jQuery("#wj_bhColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor7'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003208"){
						jQuery("#wj_bhColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor8'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003209"){
						jQuery("#wj_bhColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor9'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003210"){
						jQuery("#wj_bhColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor10'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003211"){
						jQuery("#wj_bhColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor11'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003212"){
						jQuery("#wj_bhColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor12'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003213"){
						jQuery("#wj_bhColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor13'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003214"){
						jQuery("#wj_bhColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor14'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003215"){
						jQuery("#wj_bhColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor15'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003216"){
						jQuery("#wj_bhColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor16'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}else if(wjBhColorPlace[i] == "0003217"){
						jQuery("#wj_bhColorPlace_17").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjBhColor17'][value='" + wjBhAllColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="wj_bhColorPlace_"]').change();

			var wjByAllColor = "${orderCoForm.coOptionJacketWashableInfo.wjAllByColor}";
			wjByAllColor = wjByAllColor.split(",");
			
			var wjByColorPlace = "${orderCoForm.coOptionJacketWashableInfo.wjByColorPlace}";
			wjByColorPlace = wjByColorPlace.split(",");
			for(var i=0;i<wjByColorPlace.length;i++){
				//for(var i=0;i<wjByAllColor.length;i++){
					if(wjByColorPlace[i] == "0003501"){
						jQuery("#wj_byColorPlace_1").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor1'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003502"){
						jQuery("#wj_byColorPlace_2").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor2'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003503"){
						jQuery("#wj_byColorPlace_3").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor3'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003504"){
						jQuery("#wj_byColorPlace_4").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor4'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003505"){
						jQuery("#wj_byColorPlace_5").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor5'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003506"){
						jQuery("#wj_byColorPlace_6").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor6'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003507"){
						jQuery("#wj_byColorPlace_7").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor7'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003508"){
						jQuery("#wj_byColorPlace_8").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor8'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003509"){
						jQuery("#wj_byColorPlace_9").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor9'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003510"){
						jQuery("#wj_byColorPlace_10").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor10'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003511"){
						jQuery("#wj_byColorPlace_11").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor11'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003512"){
						jQuery("#wj_byColorPlace_12").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor12'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003513"){
						jQuery("#wj_byColorPlace_13").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor13'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003514"){
						jQuery("#wj_byColorPlace_14").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor14'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003515"){
						jQuery("#wj_byColorPlace_15").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor15'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}else if(wjByColorPlace[i] == "0003516"){
						jQuery("#wj_byColorPlace_16").prop("checked",true);
						jQuery(":radio[name='coOptionJacketWashableInfo.wjByColor16'][value='" + wjByAllColor[i] + "']").prop("checked", true);
					}
				//}
			}
			jQuery('input[id^="byColorPlace_"]').change();
		}
		
	}else if(orderFlag == "orderCheck"){
		
	}

	mateStkNoReInit(productCategory);
	
	getPrice();
	showPrice();

	doubleOptionModelPrice();

})	

function setJacketModelDisable(productCategory){
	var jkModel = null;
	if(productCategory == "9000101"){
		jkModel = document.getElementById("jacketModel");
	}else if(productCategory == "9000102"){
		jkModel = document.getElementById("tj_jacketModel");
	}else if(productCategory == "9000103"){
		jkModel = document.getElementById("wj_jacketModel");
	}
	var allJkOption = jkModel.options;
	allJkOption[0].disabled = true;
}

//--------------------------------------------
//素材品番の初期化
//--------------------------------------------
function mateInit(){
	var itemCode;
	var subItemCode;
	var category;
	var StkNo;
	var mateChecked;
	var optionCode;
	// 標準の場合　Jacket 胴裏素材と袖裏素材と釦素材のid List
	var jkStandardMateList = ["bodyBackMate","cuffBackMate","btnMate"];
	// タキシードの場合　Jacket 胴裏素材と袖裏素材と釦素材のid List
	var jkTuexdoMateList = ["tj_bodyBackMate","tj_cuffBackMate","tj_btnMate"];
	// ウォッシャブルの場合　Jacket 胴裏素材と袖裏素材と釦素材のid List
	var jkWashableMateList = ["wj_bodyBackMate","wj_cuffBackMate","wj_btnMate"];
	//var item = jQuery("#item option:selected").val();
	var item = jQuery("#item").val();
	category = jQuery('input[name="productCategory"]:checked').val();
	//SUITの場合　素材品番を設定
	if(item == "01"){
		itemCode = item;
		if(category == "9000101"){
			initSuitStandard(itemCode);
		}else if(category == "9000102"){
			initSuitTuexdo(itemCode);
		}else if(category == "9000103"){
			initSuitWashable(itemCode);
		}
	}else if(item=="02"){
		subItemCode = "02";
		itemCode = item;
		if(category=="9000101"){
			initJkStandard(itemCode,subItemCode);
		}else if(category=="9000102"){
			initJkTuexdo(itemCode,subItemCode);
		}else if(category=="9000103"){
			initJkWashable(itemCode,subItemCode);
		}
	}
	
	function initSuitStandard(itemCode){
		subItemCode = "02";
		initJkStandard(itemCode,subItemCode);
	}

	function initSuitTuexdo(itemCode){
		subItemCode = "02";
		initJkTuexdo(itemCode,subItemCode);
	}

	function initSuitWashable(itemCode){
		subItemCode = "02";
		initJkWashable(itemCode,subItemCode);
	}
			
	function initJkStandard(itemCode,subItemCode){
		for(var i in jkStandardMateList){
			optionCode = selectIdList[jkStandardMateList[i]];
			mateChecked = jQuery("#"+jkStandardMateList[i]+" option:selected").val();
			StkNo = "#"+jkStandardMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,0,orderPattern);
		}
		jQuery("#bodyBackMate,#cuffBackMate,#btnMate").change(function(){
			var idValue = jQuery(this).prop("id");
			optionCode = selectIdList[idValue];
			mateChecked = jQuery("#"+idValue+" option:selected").val();
			StkNo = "#"+idValue+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,0,orderPattern);
		})	
	}

	function initJkTuexdo(itemCode,subItemCode){
		for(var i in jkTuexdoMateList){
			optionCode = selectIdList[jkTuexdoMateList[i]];
			mateChecked = jQuery("#"+jkTuexdoMateList[i]+" option:selected").val();
			StkNo = "#"+jkTuexdoMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,2,orderPattern);
		}
		jQuery("#tj_bodyBackMate,#tj_cuffBackMate,#tj_btnMate").change(function(){
			var idValue = jQuery(this).prop("id");
			optionCode = selectIdList[idValue];
			mateChecked = jQuery("#"+idValue+" option:selected").val();
			StkNo = "#"+idValue+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,2,orderPattern);
		})	
	}

	function initJkWashable(itemCode,subItemCode){
		for(var i in jkWashableMateList){
			optionCode = selectIdList[jkWashableMateList[i]];
			mateChecked = jQuery("#"+jkWashableMateList[i]+" option:selected").val();
			StkNo = "#"+jkWashableMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,1,orderPattern);
		}
		jQuery("#wj_bodyBackMate,#wj_cuffBackMate,#wj_btnMate").change(function(){
			var idValue = jQuery(this).prop("id");
			optionCode = selectIdList[idValue];
			mateChecked = jQuery("#"+idValue+" option:selected").val();
			StkNo = "#"+idValue+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,1,orderPattern);
		})	
	}

	//素材によって　品番を設定
	function mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,type,orderPattern){
		var StkNoSelect = jQuery(StkNo);
		var url;
		if (type == 0){
			url = "/orderCo/standardMateSelect";
		}else if(type == 2){
			url = "/orderCo/tuxdoMateSelect";
		}else if(type == 1){
			url = "/orderCo/washabiMateSelect";
		}
		jQuery.ajax({
			 type:"get",
			 url: contextPath + url,
			 async: false,
			 data:{"itemCode":itemCode,"subItemCode":subItemCode,"mateChecked":mateChecked,"orderPattern":orderPattern,"optionCode":optionCode},
			 success:function(result){
				 StkNoSelect.empty();
				 StkNoSelect.empty();
				 if(Object.keys(result).length==0){
					 StkNoSelect.prop("disabled",true);
				 }else{
					 StkNoSelect.removeAttr("disabled");
					 for (var key in result) {
						 StkNoSelect.append(jQuery('<option />').val(key).text(result[key]));
					 }
				 }
			 }
		});
	}
}

function showPrice(){
	var jacketModel = null;
	var category = jQuery('input[name="productCategory"]:checked').val();
	if(category == "9000101"){
    	jacketModel = jQuery("#jacketModel");
	}else if(category == "9000102"){
		jacketModel = jQuery("#tj_jacketModel");
	}else if(category == "9000103"){
		jacketModel = jQuery("#wj_jacketModel");
	}
	if(isNotEmpty(jacketModel.val())){
		jacketModel.change();;
	}
}
//--------------------------------------------
//全部のitem金額制御
//--------------------------------------------
function getPrice(){
	//JACKETの料金を表示
	var jacketModel = "";
	var priceUrl = "";
	jQuery("#jacketModel,#oj_frontBtnCnt,#tj_jacketModel,#tj_frontBtnCnt,#wj_jacketModel,#wj_frontBtnCnt").change(function(){
		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});
		var itemCode = jQuery("#item").val();
	    var subItemCode = "02";
	    var category = jQuery('input[name="productCategory"]:checked').val();
	    if(category == "9000101"){
	    	jacketModel = jQuery("#jacketModel option:selected").val();
	    	priceUrl = "getOrderPriceForJacketStandardModel";
		}else if(category == "9000102"){
			jacketModel = jQuery("#tj_jacketModel option:selected").val();
			priceUrl = "getOrderPriceForJacketTuxedoModel";
		}else if(category == "9000103"){
			jacketModel = jQuery("#wj_jacketModel option:selected").val();
			priceUrl = "getOrderPriceForJacketWashableModel";
		}
		if(isEmpty(jacketModel)){
			return;
		}
	    var code = itemCode + subItemCode + jacketModel;
	    jQuery.ajax({
	    	type:"get",
		    url:contextPath + "/orderCo/" + priceUrl,
		    data:{"code":code},
		    async:false,
		    success:function(result){
		    		var allPriceMap = result.priceMap;
		         	for (var priceMapKey in allPriceMap) {
		            	if(jQuery("#"+priceMapKey+"_Msg").length>0){
		            	jQuery("#"+priceMapKey+"_Msg").html(allPriceMap[priceMapKey]);
		            	}else{
		              	var msgIdValueName = priceMapKey.replace(/_id/,"_Msg");
		              	jQuery("#"+msgIdValueName).html(allPriceMap[priceMapKey]);
		            	}
		         	}
					jQuery("#optionPriceId").val(result.optionPrice);
					jQuery("#optionPrice").html(formatMoney(result.optionPrice,0,""));
					getAllPrice(itemCode, result.optionPrice);
					allOptionPrice();
				}
			});
		});
	    
	var jacketModel = "";
	var priceUrl = "";
	//プルダウンの変更処理
	//項目：フロント釦数、裏仕様、台場、フラワーホール、腰ポケット、忍びポケット、胴裏素材、胴裏素材品番、袖裏素材、袖裏素材品番、釦素材、釦素材品番
	jQuery("#oj_frontBtnCnt,#backSpec,#fort,#flowerHole,#waistPkt,#coinPkt,#bodyBackMate,#bodyBackMateStkNo,#cuffBackMate,#cuffBackMateStkNo,#btnMate,#btnMateStkNo,"+
			"#tj_frontBtnCnt,#tj_waistPkt,#tj_flowerHole,#tj_coinPkt,#tj_bodyBackMate,#tj_bodyBackMateStkNo,#tj_cuffBackMate,#tj_cuffBackMateStkNo,#tj_btnMate,#tj_btnMateStkNo,"+
			"#wj_frontBtnCnt,#wj_backSpec,#wj_fort,#wj_flowerHole,#wj_waistPkt,#wj_coinPkt,#wj_bodyBackMate,#wj_cuffBackMate,#wj_bodyBackMateStkNo,#wj_cuffBackMateStkNo,#wj_btnMate,#wj_btnMateStkNo") 
	   .change(function(){
	   //jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});
	   var category = jQuery('input[name="productCategory"]:checked').val();
	   if(category == "9000101"){
	    	jacketModel = jQuery("#jacketModel option:selected").val();
	    	priceUrl = "getOrderPriceForJacketProject";
	   }else if(category == "9000102"){
			jacketModel = jQuery("#tj_jacketModel option:selected").val();
			priceUrl = "getOrderPriceForJacketTuxedoProject";
	   }else if(category == "9000103"){
			jacketModel = jQuery("#wj_jacketModel option:selected").val();
			priceUrl = "getOrderPriceForJacketWashableProject";
	   }
	   var thisVal = "";
	   var thisValStkNo = "";
	   var itemCode = jQuery("#item").val();
	   var subItemCode = "02"
	   var idValueName = jQuery(this).attr("id");
	   if(idValueName.indexOf("StkNo") == -1){
		   thisVal = jQuery("#" + idValueName).val();
		   thisValStkNo = jQuery("#" + idValueName + "StkNo").val();
	   }else{
		   thisValStkNo = jQuery("#" + idValueName).val();
		   idValueName = idValueName.replace("StkNo","");
		   thisVal = jQuery("#" + idValueName).val();
	   }
	   var price;
	   if(isNotEmpty(jacketModel)){
		   var code = itemCode + subItemCode + jacketModel;
		   jQuery.ajax({
				type:"get",
			    url:contextPath + "/orderCo/" + priceUrl,
			    data:{"code":code,"idValueName":idValueName,"thisVal":thisVal,"thisValStkNo":thisValStkNo},
			    dataType:"json",
			    async:false,
			    success:function(result){
			    	if(jQuery("#"+idValueName+"_Msg").length>0){
						jQuery("#"+idValueName+"_Msg").html(result.idValuePrice);
					}else{
						var lengthforLastFive = idValueName.length - 5;
						var idValueTemp = idValueName.substring(0,lengthforLastFive);
						jQuery("#"+idValueTemp+"_Msg").html(result.idValuePrice);
					}
			    	getAllPrice(itemCode, result.optionPrice);
		            allOptionPrice();
			   }
	        });
		}
	});

	var jacketModel = "";
	var priceUrl = "";
	//ラジオボタンの変更処理
	//項目：ラペルデザイン、グレード、襟裏（ヒゲ）、襟吊、ラペル幅、胸ポケット、チェンジポケット、スランテッドポケット、袖仕様、マニカ、袖釦、内ポケット変更、ステッチ種類、ステッチ箇所変更、ダブルステッチ変更、AMF色指定、ボタンホール色指定、ボタン付け糸指定、ベント、形状記憶
	jQuery('input[id^="lapelDesign_id"],[id^="grade_id"],[id^="backCollar_id"],[id^="chainHange_id"],[id^="lapelWidth_id"],[id^="breastPkt_id"],[id^="changePkt_id"],[id^="slantedPkt_id"],[id^="sleeveSpec_id"],[id^="manica_id"],[id^="sleeveBtnType_id"],[id^="insidePktChange_id"],[id^="breastInnerPkt_id"],[id^="stitch_id"],[id^="ventSpec_id"],[id^="shapeMemory_id"],' + 
		'[id^="tj_lapelDesign_id"],[id^="tj_grade_id"],[id^="tj_backCollar_id"],[id^="tj_chainHange_id"],[id^="tj_lapelWidth_id"],[id^="tj_breastPkt_id"],[id^="tj_changePkt_id"],[id^="tj_slantedPkt_id"],[id^="tj_sleeveSpec_id"],[id^="tj_manica_id"],[id^="tj_sleeveBtnType_id"],[id^="tj_cuffSpec_id"],[id^="tj_insidePktChange_id"],[id^="tj_breastInnerPkt_id"],[id^="tj_stitch_id"],[id^="tj_ventSpec_id"],[id^="tj_ventSpec_id"],[id^="tj_shapeMemory_id"],'+
		'[id^="wj_lapelDesign_id"],[id^="wj_grade_id"],[id^="wj_backCollar_id"],[id^="wj_chainHange_id"],[id^="wj_lapelWidth_id"],[id^="wj_breastPkt_id"],[id^="wj_changePkt_id"],[id^="wj_slantedPkt_id"],[id^="wj_sleeveSpec_id"],[id^="wj_manica_id"],[id^="wj_sleeveBtnTypeKasane_id"],[id^="wj_cuffSpec_id"],[id^="wj_insidePktChange_id"],[id^="wj_breastInnerPkt_id"],[id^="wj_stitch_id"],[id^="wj_ventSpec_id"],[id^="wj_shapeMemory_id"]')
	.change(function(){
		//jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});
		var category = jQuery('input[name="productCategory"]:checked').val();
		   if(category == "9000101"){
		    	jacketModel = jQuery("#jacketModel option:selected").val();
		    	priceUrl = "getOrderPriceForJacketProject";
		   }else if(category == "9000102"){
				jacketModel = jQuery("#tj_jacketModel option:selected").val();
				priceUrl = "getOrderPriceForJacketTuxedoProject";
		   }else if(category == "9000103"){
				jacketModel = jQuery("#wj_jacketModel option:selected").val();
				priceUrl = "getOrderPriceForJacketWashableProject";
		   }
		var thisVal = "";  
		var itemCode = jQuery("#item").val();
	    var subItemCode = "02";
	    var idValueName = jQuery(this).attr("id");
	    thisVal = jQuery("#"+idValueName).val();
	    var price;
	  	//IDの後の番号を削除します
	    var findIdPosition = idValueName.indexOf("_id");
	    var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
		    
		if(isNotEmpty(jacketModel)){
			var code = itemCode + subItemCode + jacketModel;
			jQuery.ajax({
				type:"get",
			    url:contextPath + "/orderCo/" + priceUrl,
			    data:{"code":code,"idValueName":interceptedIdValueName,"thisVal":thisVal},
			    async:false,
			    success:function(result){
			    	var msgIdValueName = interceptedIdValueName.replace(/_id/,"_Msg");
			    	jQuery("#"+msgIdValueName).html(result.idValuePrice);
			        jQuery("#optionPrice").html(result.optionPrice);
			        getAllPrice(itemCode, result.optionPrice);
			        allOptionPrice();
			   }
	        });
		}
	});

	// 	ラジオボタンの変更処理
	// 	項目：ステッチ箇所変更,ダブルステッチ
	jQuery('input[id^="stitchModify_id"],[id^="stitchModifyPlace_id"],[id^="dStitchModify_id"],[id^="dStitchModifyPlace_id"],[id^="wj_stitchModify_id"],[id^="wj_stitchModifyPlace_id"],[id^="wj_dStitchModify_id"],[id^="wj_dStitchModifyPlace_id"]')
	.change(function(){
		var priceUrl = "";
		var jacketModel = "";
		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		if(productCategory == "9000101"){
			priceUrl = "getOrderPriceForJacketProject";
			jacketModel = jQuery("#jacketModel option:selected").val();
		}else if(productCategory == "9000103"){
			priceUrl = "getOrderPriceForJacketWashableProject";
			jacketModel = jQuery("#wj_jacketModel option:selected").val();
		}
		
		var itemCode = jQuery("#item").val();
		var subItemCode = "02";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();
		var jspOptionCode = "";

		if(productCategory == "9000101"){
			if(thisValueTemp == "0002401"){
				
				//ステッチ箇所変更は無しです
				var i = 1;
				jQuery('input[id^="stitchModifyPlace_id"]').each(function() {
					jQuery('#stitchModifyPlace_id' + i).removeAttr("checked");
					i++;
				});
				jQuery('#dStitchModify_id1').prop("checked", true);
				jQuery('#dStitchModify_id2').prop("disabled", true);
				jQuery('#amfColor_id1').prop("checked", true);
				jQuery('#amfColor_id2').prop("disabled", true);
				var findIdPosition = idValueName.indexOf("_id");
			    var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
				if(isNotEmpty(jacketModel)){
					jspOptionCode = "00024"
					var code = itemCode + subItemCode + jacketModel + jspOptionCode;
					jQuery.ajax({
						type:"get",
					    url:contextPath + "/orderCo/" + priceUrl,
					    data:{"code":code,"idValueName":interceptedIdValueName,"thisVal":thisValueTemp},
					    async:false,
					    success:function(result){
					    	var msgIdValueName = interceptedIdValueName.replace(/_id/,"_Msg");
					    	jQuery("#"+msgIdValueName).html(result.idValuePrice);
					        jQuery("#optionPrice").html(result.optionPrice);
					        getAllPrice(itemCode, result.optionPrice);
					   }
			        });
				}
				jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModify"]:checked').change();
				jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor"]:checked').change();
			}else if(thisValueTemp == "0002402"){
				//ステッチ箇所変更は有りです
				jQuery('#dStitchModify_id2').prop("disabled", false);
				jQuery('#amfColor_id2').prop("disabled", false);
			}
		}else if(productCategory == "9000103"){
			if(thisValueTemp == "0002401"){
				//ステッチ箇所変更は無しです
				var i = 1;
				jQuery('input[id^="wj_stitchModifyPlace_id"]').each(function() {
					jQuery('#wj_stitchModifyPlace_id' + i).removeAttr("checked");
					i++;
				});
				jQuery('#wj_dStitchModify_id1').prop("checked", true);
				jQuery('#wj_dStitchModify_id2').prop("disabled", true);
				jQuery('#wj_amfColor_id1').prop("checked", true);
				jQuery('#wj_amfColor_id2').prop("disabled", true);
				var findIdPosition = idValueName.indexOf("_id");
			    var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
				if(isNotEmpty(jacketModel)){
					jspOptionCode = "00024"
					var code = itemCode + subItemCode + jacketModel + jspOptionCode;
					jQuery.ajax({
						type:"get",
					    url:contextPath + "/orderCo/" + priceUrl,
					    data:{"code":code,"idValueName":interceptedIdValueName,"thisVal":thisValueTemp},
					    async:false,
					    success:function(result){
					    	var msgIdValueName = interceptedIdValueName.replace(/_id/,"_Msg");
					    	jQuery("#"+msgIdValueName).html(result.idValuePrice);
					        jQuery("#optionPrice").html(result.optionPrice);
					        getAllPrice(itemCode, result.optionPrice);
					   }
			        });
				}
				jQuery('input[name="coOptionJacketWashableInfo.wjDStitchModify"]:checked').change();
				jQuery('input[name="coOptionJacketWashableInfo.wjAmfColor"]:checked').change();
			}else if(thisValueTemp == "0002402"){
				//ステッチ箇所変更は有りです
				jQuery('#wj_dStitchModify_id2').prop("disabled", false);
				jQuery('#wj_amfColor_id2').prop("disabled", false);
			}
		}
		

		
		if(thisValueTemp == "0002601"){
			//ダブルステッチは無しです
			var i = 1;
			jQuery('input[id^="dStitchModifyPlace_id"]').each(function() {
				jQuery('#dStitchModifyPlace_id' + i).removeAttr("checked");
				i++;
			});
		}

		//IDの後の番号を削除します
		var interceptedIdValueName = "";
		
		//複数選択ボックスの数,IDにより決定optionCode
		var ogSomePlace_length = 0;
		var jspOptionCode = "";
		if(idValueName.indexOf("stitchModifyPlace_id") >= 0){
			jspOptionCode ="00025";
			ogSomePlace_length = jQuery('input[id^="stitchModifyPlace_id"]').length;

		}else if(idValueName.indexOf("dStitchModifyPlace_id") >= 0){
			jspOptionCode ="00027";
			ogSomePlace_length = jQuery('input[id^="dStitchModifyPlace_id"]').length;
			
		}else if(idValueName.indexOf("wj_stitchModifyPlace_id") >= 0){
			jspOptionCode ="00025";
			ogSomePlace_length = jQuery('input[id^="wj_stitchModifyPlace_id"]').length;
			
		}else if(idValueName.indexOf("wj_dStitchModifyPlace_id") >= 0){
			jspOptionCode ="00027";
			ogSomePlace_length = jQuery('input[id^="wj_dStitchModifyPlace_id"]').length;

		}

		//チェックボックスのvalueを保存します
		var countArr = "";
		
		//アイテムのID名をクリックして、"Place_id"フィールドを含めます
		var findIdPosition = idValueName.indexOf("Place_id");
		if(findIdPosition != -1){
			//インターセプトID、最初の数字からPlace_idの前まで
			var idValueNameTemp = idValueName.substring(0,findIdPosition);
			interceptedIdValueName = idValueNameTemp + "_id";

			//チェックボックスループ
			for(var i=1; i<=ogSomePlace_length; i++){
				//各チェックボックスのIDをループスプライシング
				//このループの要素を取得します
				var idValueNameComplete = document.getElementById(idValueNameTemp + "Place_id" + i);
				if(idValueNameComplete.checked){
					countArr = countArr + jspOptionCode + idValueNameComplete.value + ",";
				}
			}
		}

		if(isNotEmpty(jacketModel) && findIdPosition != -1){
			var code = itemCode + subItemCode + jacketModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + priceUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"countArr":countArr},
				dataType:"json",
				contentType:"application/json;charsetset=UTF-8",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(itemCode, result.optionPrice);
				}
			});
		}else{
			
		}
		allOptionPrice();
	});
	
	var jacketModel = "";
	var priceUrl = "";
	jQuery('input[id^="amfColor_"],[id^="bhColor_"],[id^="byColor_"],[id^="tj_bhColor_"],[id^="tj_byColor_"],[id^="wj_bhColor_"],[id^="wj_byColor_"],[id^="wj_amfColor_"]').change(function(){
		var category = jQuery('input[name="productCategory"]:checked').val();
		   if(category == "9000101"){
		    	jacketModel = jQuery("#jacketModel option:selected").val();
		    	priceUrl = "getOrderPriceForJacketProject";
		   }else if(category == "9000102"){
				jacketModel = jQuery("#tj_jacketModel option:selected").val();
				priceUrl = "getOrderPriceForJacketTuxedoProject";
		   }else if(category == "9000103"){
				jacketModel = jQuery("#wj_jacketModel option:selected").val();
				priceUrl = "getOrderPriceForJacketWashableProject";
		   }
		var itemCode = jQuery("#item").val();
	    var subItemCode = "02";
	    var idValueName = jQuery(this).attr("id");
	    var thisValueTemp = jQuery(this).val();
	    //IDの後の番号を削除します
		var interceptedIdValueName = "";
		//複数選択ボックスの数
		var jkSomePlace_length = 0;
		var jspOptionCodeAndBranchCode = "";
		if(idValueName.indexOf("amfColor_") >= 0){
			jspOptionCodeAndBranchCode ="00030" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="amfColorPlace_"]').length;
			
		}else if(idValueName.indexOf("bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00033" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00036" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="byColorPlace_"]').length;
			
		}else if(idValueName.indexOf("tj_bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00033" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="tj_bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("tj_byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00036" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="tj_byColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wj_bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00033" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="wj_bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wj_byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00036" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="wj_byColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wj_amfColor_") >= 0){
			jspOptionCodeAndBranchCode ="00030" + thisValueTemp;
			jkSomePlace_length = jQuery('input[id^="wj_amfColorPlace_"]').length;
			
		}
		//選択した異なる色のvalueを保存する
		var countArr = new Array();
		//選択したさまざまな色の数を保存する
		var colorCount = 0;

		//アイテムのID名をクリックして、"ID"フィールドを含めます
		var findIdPosition = idValueName.indexOf("_id");
		if(findIdPosition == -1){
			interceptedIdValueName = idValueName.replace(new RegExp(thisValueTemp,"g"),"id");
			//ラジオの色を変更する
			//チェックボックスループ
			for(var i=1; i<=jkSomePlace_length; i++){
				//各チェックボックスのIDをループスプライシング
				//選択したチェックボックスの数を取得する
				var idValueNameAll = "";
				if(idValueName.indexOf("amfColor_") >= 0){
					
					idValueNameAll = "coOptionJacketStandardInfo.ojAmfColor" + i;
				}else if(idValueName.indexOf("bhColor_") >= 0){
					
					idValueNameAll = "coOptionJacketStandardInfo.ojBhColor" + i;
				}else if(idValueName.indexOf("byColor_") >= 0){
					
					idValueNameAll = "coOptionJacketStandardInfo.ojByColor" + i;
				}else if(idValueName.indexOf("tj_bhColor_") >= 0){
					
					idValueNameAll = "coOptionJacketTuxedoInfo.tjBhColor" + i;
				}else if(idValueName.indexOf("tj_byColor_") >= 0){
					
					idValueNameAll = "coOptionJacketTuxedoInfo.tjByColor" + i;
				}else if(idValueName.indexOf("wj_amfColor_") >= 0){
					
					idValueNameAll = "coOptionJacketWashableInfo.wjAmfColor" + i;
				}else if(idValueName.indexOf("wj_byColor_") >= 0){
					
					idValueNameAll = "coOptionJacketWashableInfo.wjByColor" + i;
				}else if(idValueName.indexOf("wj_bhColor_") >= 0){
					
					idValueNameAll = "coOptionJacketWashableInfo.wjBhColor" + i;
				}
				var idValueNameJs = document.getElementsByName(idValueNameAll);
				//colorループ
				for(var j=0; j<idValueNameJs.length; j++){
					if(idValueNameJs[j].checked){
						//選択した色
						var arrTemp = false;
						//配列ループ
						for(var k=0; k<countArr.length; k++){
							if(countArr[k] == idValueNameJs[j].value){
								//選択した色は既に配列に存在します
								arrTemp = true;
								break;
							}
						}
						if(arrTemp == false){
							countArr.push(idValueNameJs[j].value);
							colorCount++;
						}
					}
				}
			}
		}

		if(isNotEmpty(jacketModel) && findIdPosition == -1){
			var code = itemCode + subItemCode + jacketModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + priceUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"jspOptionCodeAndBranchCode":jspOptionCodeAndBranchCode,"colorCount":colorCount},
				dataType:"json",
				contentType:"application/json;charsetset=UTF-8",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}else{
			interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
			var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
			jQuery("#"+msgIdValueName).html("無料");
		}
		allOptionPrice();
	})

// 	項目：AMF色指定、ボタンホール色指定、ボタン付け糸指定の全選択、全解除
	jQuery('[id^="btn_as_amfColorPlace"],[id^="btn_ar_amfColorPlace"],[id^="btn_as_bhColorPlace"],'+
			'[id^="btn_ar_bhColorPlace"],[id^="btn_as_byColorPlace"],[id^="btn_ar_byColorPlace"]').click(function(){

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		var jacketModel = "";
		if(productCategory == "9000101"){
			idValueNameTemp = "";
			ajaxUrl = "getOrderPriceForJacketProject";
			jacketModel = jQuery("#jacketModel option:selected").val();
		}else if(productCategory == "9000102"){
			idValueNameTemp = "tj_";
			ajaxUrl = "getOrderPriceForJacketTuxedoProject";
			jacketModel = jQuery("#tj_jacketModel option:selected").val();
		}else if(productCategory == "9000103"){
			idValueNameTemp = "wj_";
			ajaxUrl = "getOrderPriceForJacketWashableProject";
			jacketModel = jQuery("#wj_jacketModel option:selected").val();
		}

		var itemCode = jQuery("#item").val();
		var subItemCode = "02";
		var idValueName = jQuery(this).attr("id");
		var idValueNameTemp = "";
		var thisValueTemp = "";
		

		var findIdAmf = idValueName.indexOf("_amfColorPlace");
		var findIdBh = idValueName.indexOf("_bhColorPlace");
		var findIdBy = idValueName.indexOf("_byColorPlace");
		if(findIdAmf != -1){
			idValueNameTemp = idValueNameTemp + "amfColor_id";
			thisValueTemp = "00030" + jQuery("#amfColorPlaceAll").val();
		}else if(findIdBh != -1){
			idValueNameTemp = idValueNameTemp + "bhColor_id";
			thisValueTemp = "00033" + jQuery("#bhColorPlaceAll").val();
		}else if(findIdBy != -1){
			idValueNameTemp = idValueNameTemp + "byColor_id";
			thisValueTemp = "00036" + jQuery("#byColorPlaceAll").val();
		}

		//選択された異なる色の数
		var colorCount = 0;
		var findIdAs = idValueName.indexOf("btn_as_");
		var findIdAr = idValueName.indexOf("btn_ar_");
		if(findIdAs != -1){
			colorCount = 1;
		}else if(findIdAr != -1){
			colorCount = 0;
		}
		
		if(isNotEmpty(jacketModel)){
			var code = itemCode + subItemCode + jacketModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":idValueNameTemp,"jspOptionCodeAndBranchCode":thisValueTemp,"colorCount":colorCount},
				dataType:"json",
				contentType:"application/json;charsetset=UTF-8",
				async:false,
				success:function(result){
					var msgIdValueName = idValueName.substring(7);
					msgIdValueName = msgIdValueName.replace(/Place/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}
		allOptionPrice();
	});
}
//--------------------------------------------
//金額フォーマット
//--------------------------------------------
function formatMoney(number, places, symbol, thousand, decimal) {
  number = number || 0;
  places = !isNaN(places = Math.abs(places)) ? places : 2;
  symbol = symbol !== undefined ? symbol : "$";
  thousand = thousand || ",";
  decimal = decimal || ".";
  var negative = number < 0 ? "-" : "",
      i = parseInt(number = Math.abs(+number || 0).toFixed(places), 10) + "",
      j = (a = i.length) > 3 ? a % 3 : 0;
  return symbol + negative + (j ? i.substr(0, j) + thousand : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousand) + (places ? decimal + Math.abs(number - i).toFixed(places).slice(2) : "");
}

function getAllPrice(subItemCode, optionPrice){
	jQuery("#jkOptionPriceId").val(optionPrice);
    var jkOptionPriceId = optionPrice;
    var ptOptionPriceId = jQuery("#ptOptionPriceId").val();
    var pt2OptionPriceId = jQuery("#pt2OptionPriceId").val();
    var pt2OptionPriceId = jQuery("#pt2OptionPriceId").val();
    var glOptionPriceId = jQuery("#glOptionPriceId").val();
    var threePiece = jQuery('input[name="productIs3Piece"]:checked').val();
    var twoPants = jQuery('input[name="productSparePantsClass"]:checked').val();
    var allPrice = 0;
    if(subItemCode == "01"){
        if(threePiece == "0009901" && twoPants == "0009901"){
        	allPrice = Number(jkOptionPriceId) + Number(ptOptionPriceId);
        }
        else if(threePiece == "0009902" && twoPants == "0009901"){
        	allPrice = Number(jkOptionPriceId) + Number(ptOptionPriceId) + Number(glOptionPriceId);
        }
        else if(threePiece == "0009901" && twoPants == "0009902"){
        	allPrice = Number(jkOptionPriceId) + Number(ptOptionPriceId) + Number(pt2OptionPriceId);
        }else{
        	allPrice = Number(jkOptionPriceId) + Number(ptOptionPriceId) + Number(pt2OptionPriceId) + Number(glOptionPriceId);
        }
    }else{
    	allPrice = Number(jkOptionPriceId);
    }
    jQuery("#optionPriceId").val(allPrice);
    jQuery("#optionPrice").html(formatMoney(allPrice,0,""));
}

function doubleOptionModelPrice(){
	var frontBtnCnt = null;
	jQuery("#jacketModel_Msg").empty();
	var productCategory = jQuery('input[name="productCategory"]:checked').val();

	if(productCategory == "9000101"){
		frontBtnCnt = jQuery("#oj_frontBtnCnt");
	}else if(productCategory == "9000102"){
		frontBtnCnt = jQuery("#tj_frontBtnCnt");
	}else if(productCategory == "9000103"){
		frontBtnCnt = jQuery("#wj_frontBtnCnt");
	}

	var frontBtnCntVal = frontBtnCnt.val();
	
	var productFabricNo = jQuery("#productFabricNo").val();
	var item = jQuery("#item").val();
	var subItem = "02";

	//生地チェクフラッグ
	var fabricCheckValue = jQuery("#fabricFlag").val();
	//fabricCheckValue[0]:0 or 1 or 2 
	//fabricCheckValue[1]:エラーメッセージ 
	fabricCheckValue = fabricCheckValue.split("*");
	//生地チェク成功の場合
	if((fabricCheckValue[0]=="0")&&isNotEmpty(productFabricNo)){
		jQuery.ajax({
			 type:"get",
			 url: contextPath + "/orderCo/findStockModelDoublePrice",
			 data:{"fabricNo":productFabricNo,"orderPattern":orderPattern,"doubleCheck":frontBtnCntVal,"item":item,"subItem":subItem},
			 async:false,
			 success:function(result){
				if(isNotEmpty(result)){
					if(result.jkDoublePrice == "0"){
						jQuery("#jkDoubleModelPrice").val(result.jkDoublePrice);
						jQuery("#jacketModel_Msg").html("無料");
						allOptionPrice();
					}else{
						jQuery("#jkDoubleModelPrice").val(result.jkDoublePrice);
						jQuery("#jacketModel_Msg").html(formatMoney(result.jkDoublePrice,0,"￥"));
						allOptionPrice();
					}
				}else{
					jQuery("#jkDoubleModelPrice").val("0");
					jQuery("#jacketModel_Msg").html("無料");
					allOptionPrice();
				}
		     }
		});
	}

	//if(frontBtnCntVal == "0000105"||frontBtnCntVal == "0000106"){
		
	/* }else{
		jQuery("#jkDoubleModelPrice").val("0");
		jQuery("#jacketModel_Msg").html("無料");
		allOptionPrice();
	} */
	
	jQuery('#oj_frontBtnCnt,#tj_frontBtnCnt,#wj_frontBtnCnt').change(function(){
		var ojFrontBtnCnt = jQuery(this).val();
		//生地チェクフラッグ
		var fabricCheckValue = jQuery("#fabricFlag").val();
		//fabricCheckValue[0]:0 or 1 or 2 
		//fabricCheckValue[1]:エラーメッセージ 
		fabricCheckValue = fabricCheckValue.split("*");
		//生地チェク成功の場合
		if((fabricCheckValue[0]=="0")&&isNotEmpty(productFabricNo)){
			jQuery.ajax({
				 type:"get",
				 url: contextPath + "/orderCo/findStockModelDoublePrice",
				 data:{"fabricNo":productFabricNo,"orderPattern":orderPattern,"doubleCheck":ojFrontBtnCnt,"item":item,"subItem":subItem},
				 async:false,
				 success:function(result){
					if(isNotEmpty(result)){
						if(result.jkDoublePrice == "0"){
							jQuery("#jkDoubleModelPrice").val(result.jkDoublePrice);
							jQuery("#jacketModel_Msg").html("無料");
							allOptionPrice();
						}else{
							jQuery("#jkDoubleModelPrice").val(result.jkDoublePrice);
							jQuery("#jacketModel_Msg").html(formatMoney(result.jkDoublePrice,0,"￥"));
							allOptionPrice();
						}
					}else{
						jQuery("#jkDoubleModelPrice").val("0");
						jQuery("#jacketModel_Msg").html("無料");
						allOptionPrice();
					}
			     }
			});
		}
		/* if(ojFrontBtnCnt == "0000105"||ojFrontBtnCnt == "0000106"){ */
			
		/* }else{
			jQuery("#jkDoubleModelPrice").val("0");
			jQuery("#jacketModel_Msg").html("無料");
			allOptionPrice();
		} */
	})
}

function ojSession(){
	//内ポケット変更
	//jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktChange"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojInsidePktChange}"]);
	//jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktChange"]').change();

	jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlace1}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlace2}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlace3}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojInsidePktPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojInsidePktPlace4}"]);

	//ステッチ箇所変更
	//jQuery('input[name="coOptionJacketStandardInfo.ojStitchModify"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModify}"]);
	//jQuery('input[name="coOptionJacketStandardInfo.ojStitchModify"]').change();

	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace1}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace2}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace3}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace4}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace5}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace6}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace7}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace8}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojStitchModifyPlace9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojStitchModifyPlace9}"]);
	
	// 選択中のダブルステッチ変更
	ctrlDStitchModifyPlace();
	// AMF色指定の有効/無効を制御
	ctrlAmfColor();

	//ダブルステッチ変更
	//jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModify"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModify}"]);
	//jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModify"]').change();

	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace1}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace2}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace3}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace4}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace5}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace6}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace7}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojDStitchModifyPlace8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojDStitchModifyPlace8}"]);

	//AMF色指定
	//jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor}"]);
	//jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor"]').change();

	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace1}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor1}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace2}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor2}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace3}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor3}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace4}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor4}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace5}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor5}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace6}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor6}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace7}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor7}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace8}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor8}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColorPlace9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColorPlace9}"]);
	jQuery('input[name="coOptionJacketStandardInfo.ojAmfColor9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojAmfColor9}"]);
	jQuery('input[id^="amfColorPlace_"]').change();

	//ボタンホール色指定
	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace1}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor1}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace2}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor2}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace3}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor3}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace4}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor4}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace5}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor5}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace6}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor6}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace7}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor7}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace8}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor8}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace9}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor9}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace10"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace10}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor10"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor10}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace11"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace11}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor11"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor11}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace12"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace12}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor12"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor12}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace13"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace13}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor13"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor13}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace14"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace14}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor14"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor14}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace15"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace15}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor15"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor15}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace16"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace16}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor16"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor16}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColorPlace17"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColorPlace17}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojBhColor17"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBhColor17}"]);

	jQuery('input[id^="bhColorPlace_"]').change();

	//ボタン付け糸指定
	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace1}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor1"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor1}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace2}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor2"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor2}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace3}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor3"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor3}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace4}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor4"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor4}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace5}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor5"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor5}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace6}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor6"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor6}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace7}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor7"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor7}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace8}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor8"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor8}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace9}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor9"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor9}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace10"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace10}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor10"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor10}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace11"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace11}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor11"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor11}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace12"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace12}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor12"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor12}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace13"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace13}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor13"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor13}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace14"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace14}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor14"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor14}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace15"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace15}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor15"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor15}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColorPlace16"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColorPlace16}"]);

	jQuery('input[name="coOptionJacketStandardInfo.ojByColor16"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojByColor16}"]);

	jQuery('input[id^="byColorPlace_"]').change();
}

function changeJkOptionByStock(productCategory){
	var orderFindFabric = "${orderCoForm.orderFindFabric}";
	if(isNotEmpty(orderFindFabric)){
		var fullHaircloth = "${orderCoForm.orderFindFabric.fullHairclothAvailable}";
		var shirtSleeve = "${orderCoForm.orderFindFabric.shirtSleeveAvailable}";
		var factoryCode = "${orderCoForm.orderFindFabric.factoryCode}";
		if(productCategory == "9000101"){
			//F0001:大連LCR
			if(factoryCode == "F00001"){
				//1：可能、0：不可
				if(fullHaircloth == "0"){
					jQuery("#grade_id2").prop("disabled",true);
					jQuery("#grade_id1").prop("checked",true);				
					jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').change();
				}else if(fullHaircloth == "1"){
					jQuery("#grade_id2").prop("disabled",false);
					jQuery("#grade_id2").prop("checked",true);
					jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').change();
				}
				var jacketModel = jQuery("#jacketModel").val();
				if(jacketModel == "TR02"){
					jQuery("#manica_id1").prop("checked",true);
					jQuery("#manica_id2").prop("disabled",false);
					jQuery('input[name="coOptionJacketStandardInfo.ojManica"]').change();
				}else{
					jQuery("#manica_id1").prop("checked",true);
					jQuery("#manica_id2").prop("disabled",true);
					jQuery('input[name="coOptionJacketStandardInfo.ojManica"]').change();
				}
			}
			//F0002:上海服良
			else if(factoryCode == "F00002"){
				//1：可能、0：不可
				if(fullHaircloth == "0"){
					jQuery("#grade_id2").prop("disabled",true);
				}else if(fullHaircloth == "1"){
					jQuery("#grade_id2").prop("disabled",false);
				}
				jQuery("#grade_id1").prop("checked",true);
				jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').change();
			}else{
				//何もしない
			}

			if(shirtSleeve == "0"){
				jQuery("#backSpec option:last-child").prop("disabled",true);
				jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').change(function(){
					jQuery("#backSpec option:last-child").prop("disabled",true);
				})
			}else if(shirtSleeve == "1"){
				jQuery("#backSpec option:last-child").prop("disabled",false);
				jQuery("#backSpec option:first-child").prop("selected",false);
				jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').change(function(){
					jQuery("#backSpec option:last-child").prop("disabled",false);
				})
			}
		}else if(productCategory == "9000102"){
			//F0001:大連LCR
			if(factoryCode == "F00001"){
				//1：可能、0：不可
				if(fullHaircloth == "0"){
					jQuery("#tj_grade_id2").prop("disabled",true);
					jQuery("#tj_grade_id1").prop("checked",true);				
					jQuery('input[name="coOptionJacketTuxedoInfo.tjGrade"]').change();
				}else if(fullHaircloth == "1"){
					jQuery("#tj_grade_id2").prop("disabled",false);
					jQuery("#tj_grade_id2").prop("checked",true);
					jQuery('input[name="coOptionJacketTuxedoInfo.tjGrade"]').change();			
				}
				var jacketModel = jQuery("#tj_jacketModel").val();
				if(jacketModel == "TR02"){
					jQuery("#tj_manica_id1").prop("checked",true);
					jQuery("#tj_manica_id2").prop("disabled",false);
					jQuery('input[name="coOptionJacketTuxedoInfo.tjManica"]').change();
				}else{
					jQuery("#tj_manica_id1").prop("checked",true);
					jQuery("#tj_manica_id2").prop("disabled",true);
					jQuery('input[name="coOptionJacketTuxedoInfo.tjManica"]').change();
				}
			}
			//F0002:上海服良
			else if(factoryCode == "F00002"){
				//1：可能、0：不可
				if(fullHaircloth == "0"){
					jQuery("#tj_grade_id2").prop("disabled",true);
				}else if(fullHaircloth == "1"){
					jQuery("#tj_grade_id2").prop("disabled",false);
				}
				jQuery("#tj_grade_id1").prop("checked",true);
				jQuery('input[name="coOptionJacketTuxedoInfo.tjGrade"]').change();
			}else{
				//何もしない
			}
		}
	}else{
		//F0001:大連LCR
		if(factoryCode == "F00001"){
			//1：可能、0：不可
			var jacketModel = jQuery("#wj_jacketModel").val();
			if(jacketModel == "TR02"){
				jQuery("#wj_manica_id1").prop("checked",true);
				jQuery("#wj_manica_id2").prop("disabled",false);
				jQuery('input[name="coOptionJacketWashableInfo.wjManica"]').change();
			}else{
				jQuery("#wj_manica_id1").prop("checked",true);
				jQuery("#wj_manica_id2").prop("disabled",true);
				jQuery('input[name="coOptionJacketWashableInfo.wjManica"]').change();
			}
		}
	}
}

function mateStkNoReInit(productCategory){
	if(productCategory == "9000101"){
		var jkInnerBodyClothCd = "${orderCoForm.coOptionJacketStandardInfo.ojBodyBackMateStkNo}";
		if(isNotEmpty(jkInnerBodyClothCd)){
			jQuery("#bodyBackMateStkNo option[value='"+jkInnerBodyClothCd+"']").attr("selected", true);
			jQuery("#bodyBackMateStkNo").change();
		}
		var jkInnerSleeveClothCd = "${orderCoForm.coOptionJacketStandardInfo.ojCuffBackMateStkNo}";
		if(isNotEmpty(jkInnerSleeveClothCd)){
			jQuery("#cuffBackMateStkNo option[value='"+jkInnerSleeveClothCd+"']").attr("selected", true);
			jQuery("#cuffBackMateStkNo").change();
		}
		var jkBtnMaterialCd = "${orderCoForm.coOptionJacketStandardInfo.ojBtnMateStkNo}";
		if(isNotEmpty(jkBtnMaterialCd)){
			jQuery("#btnMateStkNo option[value='"+jkBtnMaterialCd+"']").attr("selected", true);
			jQuery("#btnMateStkNo").change();
		}

	}else if(productCategory == "9000102"){
		
		var jkInnerBodyClothCd = "${orderCoForm.coOptionJacketTuxedoInfo.tjBodyBackMateStkNo}";
		if(isNotEmpty(jkInnerBodyClothCd)){
			jQuery("#tj_bodyBackMateStkNo option[value='"+jkInnerBodyClothCd+"']").attr("selected", true);
			jQuery("#tj_bodyBackMateStkNo").change();
		}
		var jkInnerSleeveClothCd = "${orderCoForm.coOptionJacketTuxedoInfo.tjCuffBackMateStkNo}";
		if(isNotEmpty(jkInnerSleeveClothCd)){
			jQuery("#tj_cuffBackMateStkNo option[value='"+jkInnerSleeveClothCd+"']").attr("selected", true);
			jQuery("#tj_cuffBackMateStkNo").change();
		}
		var jkBtnMaterialCd = "${orderCoForm.coOptionJacketTuxedoInfo.tjBtnMateStkNo}";
		if(isNotEmpty(jkBtnMaterialCd)){
			jQuery("#tj_btnMateStkNo option[value='"+jkBtnMaterialCd+"']").attr("selected", true);
			jQuery("#tj_btnMateStkNo").change();
		}
		
	}else if(productCategory == "9000103"){
		var jkInnerBodyClothCd = "${orderCoForm.coOptionJacketWashableInfo.wjBodyBackMateStkNo}";
		if(isNotEmpty(jkInnerBodyClothCd)){
			jQuery("#wj_bodyBackMateStkNo option[value='"+jkInnerBodyClothCd+"']").attr("selected", true);
		}
		var jkInnerSleeveClothCd = "${orderCoForm.coOptionJacketWashableInfo.wjCuffBackMateStkNo}";
		if(isNotEmpty(jkInnerSleeveClothCd)){
			jQuery("#wj_cuffBackMateStkNo option[value='"+jkInnerSleeveClothCd+"']").attr("selected", true);
		}
		var jkBtnMaterialCd = "${orderCoForm.coOptionJacketWashableInfo.wjBtnMateStkNo}";
		if(isNotEmpty(jkBtnMaterialCd)){
			jQuery("#wj_btnMateStkNo option[value='"+jkBtnMaterialCd+"']").attr("selected", true);
		}
	}
}

function optionJacketChangeModel(productCategory){
	var jacketFlag = jQuery("#jacketFlag").val();
	if(jacketFlag == "1"){
		if(productCategory == "9000101"){
			var jacketModel = jQuery("#jacketModel").val();
			//フロント釦数
			var frontBtnCntElem = jQuery('#oj_frontBtnCnt');
			var selectedFrontBtnCnt = frontBtnCntElem.val();

			// フロント釦数の選択肢更新
			frontBtnCntElem.empty();
			var tmpFrontBtnCnt = null;
			var isExistBefore = false;
			for (tmpFrontBtnCnt of lapelDesignImageMap[jacketModel].activeList) {
				frontBtnCntElem.append(jQuery('<option />').val(tmpFrontBtnCnt.val).text(tmpFrontBtnCnt.text));
				if (tmpFrontBtnCnt == selectedFrontBtnCnt) isExistBefore = true;
			}

			var ojFrontBtnCnt = "${orderCoForm.coOptionJacketStandardInfo.ojFrontBtnCnt}";
			frontBtnCntElem.val(ojFrontBtnCnt);
			frontBtnCntElem.change();

			jQuery('input[name="coOptionJacketStandardInfo.ojLapelDesign"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojLapelDesign}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojLapelDesign"]:checked').change();

			//グレード
			jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojGrade}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]:checked').change();

			//裏仕様
			jQuery('#backSpec').val("${orderCoForm.coOptionJacketStandardInfo.ojGackSpec}");
			jQuery('#backSpec').change();

			var gradeValue = jQuery('input[name="coOptionJacketStandardInfo.ojGrade"]:checked').val();
			var backSpecValue = jQuery('#backSpec').val();
			// 台場の要素取得
			var fortElem = jQuery('#fort');
			var beforeValue = fortElem.val();

			// 台場の選択肢変更
			fortElem.empty();
			var tmpFortValue = null;
			for (var i = 0; i < fortList[gradeValue].activeList[backSpecValue].activeList.length; i++) {
				fortElem.append(jQuery('<option />').val(fortList[gradeValue].activeList[backSpecValue].activeList[i].val).text(fortList[gradeValue].activeList[backSpecValue].activeList[i].text));
			}
			jQuery('#fort').val("${orderCoForm.coOptionJacketStandardInfo.ojFort}");
			jQuery('#fort').change();

			//襟裏（ヒゲ）
			jQuery('input[name="coOptionJacketStandardInfo.ojBackCollar"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojBackCollar}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojBackCollar"]:checked').change();

			//腰ポケット
			jQuery("#waistPkt").val("${orderCoForm.coOptionJacketStandardInfo.ojWaistPkt}");
			jQuery("#waistPkt").change();

			//チェンジポケット
			jQuery('input[name="coOptionJacketStandardInfo.ojChangePkt"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojChangePkt}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojChangePkt"]:checked').change();

			//スランテッドポケット
			jQuery('input[name="coOptionJacketStandardInfo.ojSlantedPkt"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojSlantedPkt}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojSlantedPkt"]:checked').change();

			//マニカ
			/* jQuery('input[name="coOptionJacketStandardInfo.ojManica"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojManica}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojManica"]:checked').change(); */

			//袖釦
			jQuery('input[name="coOptionJacketStandardInfo.ojSleeveBtnType"]').val(["${orderCoForm.coOptionJacketStandardInfo.ojSleeveBtnType}"]);
			jQuery('input[name="coOptionJacketStandardInfo.ojSleeveBtnType"]:checked').change();

			//袖釦数
			jQuery("#sleeveBtnCnt").val("${orderCoForm.coOptionJacketStandardInfo.ojSleeveBtnCnt}");
				
		}else if(productCategory == "9000102"){
			var jacketModel = jQuery("#tj_jacketModel").val();
			// 選択中のフロント釦数
			var frontBtnCntElem = jQuery('#tj_frontBtnCnt');
			var selectedFrontBtnCnt = frontBtnCntElem.val();

			// フロント釦数の選択肢更新
			frontBtnCntElem.empty();
			var tmpFrontBtnCnt = null;
			for (tmpFrontBtnCnt of lapelDesignTuxedoImageMap[jacketModel].activeList) {
				frontBtnCntElem.append(jQuery('<option />').val(tmpFrontBtnCnt.val).text(tmpFrontBtnCnt.text));
			}

			var tjFrontBtnCnt = "${orderCoForm.coOptionJacketTuxedoInfo.tjFrontBtnCnt}";
			frontBtnCntElem.val(tjFrontBtnCnt);
			frontBtnCntElem.change();

			//ラペルデザイン
			jQuery('input[name="coOptionJacketTuxedoInfo.tjLapelDesign"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjLapelDesign}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjLapelDesign"]:checked').change();

			//グレード
			jQuery('input[name="coOptionJacketTuxedoInfo.tjGrade"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjGrade}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjGrade"]:checked').change();

			//襟裏（ヒゲ）
			jQuery('input[name="coOptionJacketTuxedoInfo.tjBackCollar"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjBackCollar}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjBackCollar"]:checked').change();

			//腰ポケット
			jQuery("#tj_waistPkt").val("${orderCoForm.coOptionJacketTuxedoInfo.tjWaistPkt}");
			jQuery("#tj_waistPkt").change();

			//チェンジポケット
			jQuery('input[name="coOptionJacketTuxedoInfo.tjChangePkt"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjChangePkt}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjChangePkt"]:checked').change();

			//スランテッドポケット
			jQuery('input[name="coOptionJacketTuxedoInfo.tjSlantedPkt"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjSlantedPkt}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjSlantedPkt"]:checked').change();

			//袖釦
			jQuery('input[name="coOptionJacketTuxedoInfo.tjSleeveBtnType"]').val(["${orderCoForm.coOptionJacketTuxedoInfo.tjSleeveBtnType}"]);
			jQuery('input[name="coOptionJacketTuxedoInfo.tjSleeveBtnType"]:checked').change();

			//袖釦数
			jQuery("#tj_sleeveBtnCnt").val("${orderCoForm.coOptionJacketTuxedoInfo.tjSleeveBtnCnt}");
			
		}else if(productCategory == "9000103"){
			var jacketModel = jQuery("#wj_jacketModel").val();
			// 選択中のフロント釦数
			var frontBtnCntElem = jQuery('#wj_frontBtnCnt');
			var selectedFrontBtnCnt = frontBtnCntElem.val();

			// フロント釦数の選択肢更新
			frontBtnCntElem.empty();
			var tmpFrontBtnCnt = null;
			for (tmpFrontBtnCnt of lapelDesignImageMap[jacketModel].activeList) {
				frontBtnCntElem.append(jQuery('<option />').val(tmpFrontBtnCnt.val).text(tmpFrontBtnCnt.text));
			}
			
			var wjFrontBtnCnt = "${orderCoForm.coOptionJacketWashableInfo.wjFrontBtnCnt}";
			frontBtnCntElem.val(wjFrontBtnCnt);
			frontBtnCntElem.change();

			//ラペルデザイン
			jQuery('input[name="coOptionJacketWashableInfo.wjLapelDesign"]').val(["${orderCoForm.coOptionJacketWashableInfo.wjLapelDesign}"]);
			jQuery('input[name="coOptionJacketWashableInfo.wjLapelDesign"]:checked').change();

			//襟裏（ヒゲ）
			jQuery('input[name="coOptionJacketWashableInfo.wjBackCollar"]').val(["${orderCoForm.coOptionJacketWashableInfo.wjBackCollar}"]);
			jQuery('input[name="coOptionJacketWashableInfo.wjBackCollar"]:checked').change();

			//腰ポケット
			jQuery("#wj_waistPkt").val("${orderCoForm.coOptionJacketWashableInfo.wjWaistPkt}");
			jQuery("#wj_waistPkt").change();

			//チェンジポケット
			jQuery('input[name="coOptionJacketWashableInfo.wjChangePkt"]').val(["${orderCoForm.coOptionJacketWashableInfo.wjChangePkt}"]);
			jQuery('input[name="coOptionJacketWashableInfo.wjChangePkt"]:checked').change();

			//スランテッドポケット
			jQuery('input[name="coOptionJacketWashableInfo.wjSlantedPkt"]').val(["${orderCoForm.coOptionJacketWashableInfo.wjSlantedPkt}"]);
			jQuery('input[name="coOptionJacketWashableInfo.wjSlantedPkt"]:checked').change();

			//袖釦
			jQuery('input[name="coOptionJacketWashableInfo.wjSleeveBtnType"]').val(["${orderCoForm.coOptionJacketWashableInfo.wjSleeveBtnType}"]);
			jQuery('input[name="coOptionJacketWashableInfo.wjSleeveBtnType"]:checked').change();

			//袖釦数
			jQuery("#wj_sleeveBtnCnt").val("${orderCoForm.coOptionJacketWashableInfo.wjSleeveBtnCnt}");
		}
	}
}
function  sessionJacketAdFlag(oldModel,newModel){
	if(oldModel != newModel){
		if(orderFlag == "orderBack" || orderFlag == "orderLink"){
			 jQuery("#jacketAdFlag").val("0");
		}
	}
}
jQuery("#jacketModel,#tj_jacketModel,#wj_jacketModel").change(function(){
	if(orderFlag == "orderCo"){
		jQuery("#jacketAdFlag").val("0");
	}
})
if (document.readyState=="complete")  
{  
        $.unblockUI();
}  
else  
{  
        document.onreadystatechange = function()  
        {  
             
                if (document.readyState == "complete")  
                {  
                        $.unblockUI();   
                }  
        }  
}
</script>