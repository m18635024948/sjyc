<form:form id="idInfoForm" action="${pageContext.request.contextPath}/orderCo/orderCoReconfirm" method="post" modelAttribute="orderCoForm" class="form-horizontal">
<div id="op_gilet_div">
    <div class="card-header">
        <strong class="card-title">GILET</strong>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-lg-12">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">GILETモデル</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_giletModel"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                        <form:select id="giletModel" path="coOptionGiletStandardInfo.ogGiletModel" class="form-control-sm form-control">
                        	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogGiletModelMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-6" align="right" id="giletModel_Msg">
                    </div>
                    <div class="col-12 col-md-9 offset-md-3" id="giletModelCheck" style="margin-top:8px"></div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_breastPkt_id" path="coOptionGiletStandardInfo.ogBreastPkt" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogBreastPktMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_breastPkt_Msg">
                       	<%-- <c:if test="${orderCoForm.coOptionGiletStandardInfo.glBtnthreadColorRtPrice == '0'}">
                     		無料
                     	</c:if>
                     	<c:if test="${orderCoForm.coOptionGiletStandardInfo.glBtnthreadColorRtPrice != '0'}">
                     		${orderCoForm.coOptionGiletStandardInfo.glBtnthreadColorRtPrice}
                     	</c:if> --%>
<%-- 						${orderCoForm.coOptionGiletStandardInfo.glBreastPktRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label></div>
                    <div class="col-12 col-md-6">
                      	<div class="form-check-inline form-check">
                          	<form:radiobuttons id="og_waistPkt_id" path="coOptionGiletStandardInfo.ogWaistPkt" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogWaistPktMap}"/>
                  		</div>
	                </div>
                    <div class="col-12 col-md-3" align="right" id="og_waistPkt_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glWaistPktRtPrice } --%>
                    </div>
                </div>
                <div id="og_waistPkt_yes_area">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット形状</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_waistPktSpec_id" path="coOptionGiletStandardInfo.ogWaistPktSpec" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogWaistPktSpecMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_waistPktSpec_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glWaistPktShapeRtPrice } --%>
                    </div>
                </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_og_stitch"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_stitch_id" path="coOptionGiletStandardInfo.ogStitch" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogStitchMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_stitch_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glAmfStitchRtPrice } --%>
                    </div>
                </div>
                <div id="og_stitch_yes_area">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ステッチ箇所変更</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_stitchModify_id" path="coOptionGiletStandardInfo.ogStitchModify" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyMap}"/>
                        </div>
                        <div id="og_stitchModifyPlace" style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_og_stitchModifyPlace">全選択</button>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_og_stitchModifyPlace">全解除</button>
                        </div>
                        </div>
                        <div class="offset-md-1">
                        <%-- <div class="form-check-inline form-check">
                            <form:checkboxes id="og_stitchModifyPlace_id" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyPlaceMap}" path="coOptionGiletStandardInfo.ogStitchModifyPlace"/>
                        </div> --%>
                        <c:forEach var="ogStitchModifyPlaceMap" items="${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyPlaceMap }" varStatus="row">
                      		<div class="form-check-inline form-check">
                      			<input type="checkbox" id="og_stitchModifyPlace_id${row.count}" name="coOptionGiletStandardInfo.ogStitchModifyPlace${row.count}" value="${ogStitchModifyPlaceMap.key}" class="form-check-input">${ogStitchModifyPlaceMap.value}
                      		</div>
                      	</c:forEach>
                        </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_stitchModify_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glStitchPlcRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ダブルステッチ</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_dStitchModify_id" path="coOptionGiletStandardInfo.ogDStitchModify" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyMap}"/>
                        </div>
                        <div id="og_dStitchModifyPlace" style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_og_dStitchModifyPlace">全選択</button>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_og_dStitchModifyPlace">全解除</button>
                        </div>
                        </div>
                        <div class="offset-md-1">
                        <%-- <div class="form-check-inline form-check">
                            <form:checkboxes id="og_dStitchModifyPlace_id" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyPlaceMap}" path="coOptionGiletStandardInfo.ogDStitchModifyPlace"/>
                        </div> --%>
                        <c:forEach var="ogDStitchModifyPlaceMap" items="${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyPlaceMap }" varStatus="row">
                      		<div class="form-check-inline form-check">
                      			<input type="checkbox" id="og_dStitchModifyPlace_id${row.count}" name="coOptionGiletStandardInfo.ogDStitchModifyPlace${row.count}" value="${ogDStitchModifyPlaceMap.key}" class="form-check-input">${ogDStitchModifyPlaceMap.value}
                      		</div>
                      	</c:forEach>
                        </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_dStitchModify_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glDblstitchPlcRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">AMF色指定</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_amfColor_id" path="coOptionGiletStandardInfo.ogAmfColor" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogAmfColorMap}"/>
                        </div>
                        <div id="og_amfColor_div" style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="og_amfColorPlaceAll" path="coOptionGiletStandardInfo.ogAmfColorPlaceAll" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlaceAllMap}"/>
                        	</form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_og_amfColorPlace">全選択</button>
                        	&nbsp;
                        	<button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_og_amfColorPlace">全解除</button>
                        </div>
                        </div>
                        
                        <c:forEach var="ogAmfColorPlaceMap" items="${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="og_amfColorPlace" class="form-check-label ">
                                <input type="checkbox" id="og_amfColorPlace_${row.count}" name="coOptionGiletStandardInfo.ogAmfColorPlace${row.count}" value="${ogAmfColorPlaceMap.key }" class="form-check-input">${ogAmfColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="og_amfColorPlace_${row.count}_div"  style="display:none">
                        		<c:forEach var="ogAmfColorsMap" items="${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlaceAllMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="og_amfColor" class="form-check-label ">
                        			    <input type="radio" id="og_amfColor_${ogAmfColorsMap.key}" name="coOptionGiletStandardInfo.ogAmfColor${row.count}" value="${ogAmfColorsMap.key}" class="form-check-input">${ogAmfColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_amfColor_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glAmfColorRtPrice } --%>
                    </div>
                </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_bhColor_id" path="coOptionGiletStandardInfo.ogBhColor" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogBhColorMap}"/>
                        </div>
                        <div id="og_bhColor_div" style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                        <form:select id="og_bhColorPlaceAll" path="coOptionGiletStandardInfo.ogBhColorPlaceAll" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlaceAllMap}"/>
                        </form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_og_bhColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_og_bhColorPlace">全解除</button>
                        </div>
                        </div>
                        
                        <c:forEach var="ogBhColorPlaceMap" items="${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="og_bhColorPlace" class="form-check-label ">
                                <input type="checkbox" id="og_bhColorPlace_${row.count}" name="coOptionGiletStandardInfo.ogBhColorPlace${row.count}" value="${ogBhColorPlaceMap.key }" class="form-check-input">${ogBhColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="og_bhColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="ogBhColorsMap" items="${orderCoForm.coOptionGiletStandardInfo.ogBhColorsMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="og_bhColor" class="form-check-label ">
                        			    <input type="radio" id="og_bhColor_${ogBhColorsMap.key}" name="coOptionGiletStandardInfo.ogBhColor${row.count}" value="${ogBhColorsMap.key}" class="form-check-input">${ogBhColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_bhColor_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glBtnholeColorRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_byColor_id" path="coOptionGiletStandardInfo.ogByColor" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogByColorMap}"/>
                        </div>
                        <div id="og_byColor_div" style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="og_byColorPlaceAll" path="coOptionGiletStandardInfo.ogByColorPlaceAll" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogByColorPlaceAllMap}"/>
                            </form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_og_byColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_og_byColorPlace">全解除</button>
                        </div>
                        </div>
                        
                        <c:forEach var="ogByColorPlaceMap" items="${orderCoForm.coOptionGiletStandardInfo.ogByColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="og_byColorPlace" class="form-check-label ">
                                <input type="checkbox" id="og_byColorPlace_${row.count}" name="coOptionGiletStandardInfo.ogByColorPlace${row.count}" value="${ogByColorPlaceMap.key }" class="form-check-input">${ogByColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="og_byColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="ogByColorsMap" items="${orderCoForm.coOptionGiletStandardInfo.ogByColorsMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="og_byColor" class="form-check-label ">
                        			    <input type="radio" id="og_byColor_${ogByColorsMap.key}" name="coOptionGiletStandardInfo.ogByColor${row.count}" value="${ogByColorsMap.key}" class="form-check-input">${ogByColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_byColor_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glBtnthreadColorRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">背裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_og_backLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col-12 col-md-3">
                        <form:select id="og_backLiningMate" path="coOptionGiletStandardInfo.ogBackLiningMate" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogBackLiningMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-3">
                        <select name="coOptionGiletStandardInfo.ogBackLiningMateStkNo" id="og_backLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_backLiningMate_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glBackClothRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">内側裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_og_insideLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col-12 col-md-3">
                        <form:select id="og_insideLiningMate" path="coOptionGiletStandardInfo.ogInsideLiningMate" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogInsideLiningMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-3">
                        <select name="coOptionGiletStandardInfo.ogInsideLiningMateStkNo" id="og_insideLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_insideLiningMate_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glInnnerClothRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">釦素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_og_frontBtnMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col-12 col-md-3">
                        <form:select id="og_frontBtnMate" path="coOptionGiletStandardInfo.ogFrontBtnMate" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogFrontBtnMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-3">
                        <select name="coOptionGiletStandardInfo.ogFrontBtnMateStkNo" id="og_frontBtnMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_frontBtnMate_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glFrtBtnRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">バックベルト</label></div>
                    <div class="col-12 col-md-3">
                        <form:select id="og_backBelt" path="coOptionGiletStandardInfo.ogBackBelt" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletStandardInfo.ogBackBeltMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-6" align="right" id="og_backBelt_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glBackBeltRtPrice } --%>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ウォッチチェーン</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="og_watchChain_id" path="coOptionGiletStandardInfo.ogWatchChain" class="form-check-input" items="${orderCoForm.coOptionGiletStandardInfo.ogWatchChainMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="og_watchChain_Msg">
<%--                     	${orderCoForm.coOptionGiletStandardInfo.glWatchChainRtPrice } --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    
    
    <!-- タキシード GILET -->
    <div id="tu_gilet_div">
    <div class="card-header">
        <strong class="card-title">GILET</strong>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-lg-12">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">GILETモデル</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tg_giletModel"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="tg_giletModel" path="coOptionGiletTuxedoInfo.tgGiletModel" class="form-control-sm form-control">
                        	<form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgGiletModelMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-9 offset-md-3" id="giletModel_Msg"></div>
                    <div class="col-12 col-md-9 offset-md-3" id="tg_giletModelCheck" style="margin-top:8px"></div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label></div>
                    <div class="col col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_breastPkt_id" path="coOptionGiletTuxedoInfo.tgBreastPkt" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgBreastPktMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_breastPkt_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label></div>
                    <div class="col col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_waistPkt_id" path="coOptionGiletTuxedoInfo.tgWaistPkt" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgWaistPktMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_waistPkt_Msg">
                    </div>
                </div>
                <div id="tg_waistPkt_yes_area">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット形状</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_waistPktSpec_id" path="coOptionGiletTuxedoInfo.tgWaistPktSpec" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgWaistPktSpecMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_waistPktSpec_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット素材</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_waistPktMate_id" path="coOptionGiletTuxedoInfo.tgWaistPktMate" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgWaistPktMateMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_waistPktMate_Msg">
                    </div>
                </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_stitch_id" path="coOptionGiletTuxedoInfo.tgStitch" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgStitchMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_stitch_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_bhColor_id" path="coOptionGiletTuxedoInfo.tgBhColor" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgBhColorMap}"/>
                        </div>
                        <div id="tg_bhColor_div">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="tg_bhColorPlaceAll" path="coOptionGiletTuxedoInfo.tgBhColorPlaceAll" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgBhColorPlaceAllMap}"/>
                        	</form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_tg_bhColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_tg_bhColorPlace">全解除</button>
                        </div>
                        </div>
                        
                        <c:forEach var="tgBhColorPlaceMap" items="${orderCoForm.coOptionGiletTuxedoInfo.tgBhColorPlaceMap }" varStatus="row">
                         <div class="offset-md-1">
                             <div class="form-check">
                             <div class="checkbox">
                             <label for="tg_bhColorPlace" class="form-check-label ">
                                 <input type="checkbox" id="tg_bhColorPlace_${row.count}" name="coOptionGiletTuxedoInfo.tgBhColorPlace${row.count}" value="${tgBhColorPlaceMap.key }" class="form-check-input">${tgBhColorPlaceMap.value }
                             </label>
                             </div>
                             </div>
                         </div>
                         <div class="offset-md-2" id="tg_bhColorPlace_${row.count}_div" style="display:none">
                         	<c:forEach var="tgBhColorsMap" items="${orderCoForm.coOptionGiletTuxedoInfo.tgBhColorsMap}">
                       		  <div class="form-check-inline form-check">
                       		     <label for="tg_bhColor" class="form-check-label ">
                       			    <input type="radio" id="tg_bhColor_${tgBhColorsMap.key}" name="coOptionGiletTuxedoInfo.tgBhColor${row.count}" value="${tgBhColorsMap.key}" class="form-check-input">${tgBhColorsMap.value}
                       		     </label>
                       		  </div>
                       		</c:forEach>
                         </div>
                     </c:forEach>
                     </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_bhColor_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                    <div class="col-12 col-md-6">
                        <div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_byColor_id" path="coOptionGiletTuxedoInfo.tgByColor" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgByColorMap}"/>
                        </div>
                        <div id="tg_byColor_div">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="tg_byColorPlaceAll" path="coOptionGiletTuxedoInfo.tgByColorPlaceAll" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgByColorPlaceAllMap}"/>
                            </form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_tg_byColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_tg_byColorPlace">全解除</button>
                        </div>
                        </div>
                        
                        <c:forEach var="tgByColorPlaceMap" items="${orderCoForm.coOptionGiletTuxedoInfo.tgByColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="og_byColorPlace" class="form-check-label ">
                                <input type="checkbox" id="tg_byColorPlace_${row.count}" name="coOptionGiletTuxedoInfo.tgByColorPlace${row.count}" value="${tgByColorPlaceMap.key }" class="form-check-input">${tgByColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="tg_byColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="tgByColorsMap" items="${orderCoForm.coOptionGiletTuxedoInfo.tgByColorsMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="tg_byColor" class="form-check-label ">
                        			    <input type="radio" id="tg_byColor_${tgByColorsMap.key}" name="coOptionGiletTuxedoInfo.tgByColor${row.count}" value="${tgByColorsMap.key}" class="form-check-input">${tgByColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_byColor_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">背裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tg_backLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="tg_backLiningMate" path="coOptionGiletTuxedoInfo.tgBackLiningMate" class="form-control-sm form-control">
                            	<form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgBackLiningMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletTuxedoInfo.tgBackLiningMateStkNo" id="tg_backLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-2" align="right" id="tg_backLiningMate_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">内側裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tg_insideLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="tg_insideLiningMate" path="coOptionGiletTuxedoInfo.tgInsideLiningMate" class="form-control-sm form-control">
                            <form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgInsideLiningMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletTuxedoInfo.tgInsideLiningMateStkNo" id="tg_insideLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-2" align="right" id="tg_insideLiningMate_Msg">
                    </div>
                </div>
                
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">釦素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_tg_frontBtnMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="tg_frontBtnMate" path="coOptionGiletTuxedoInfo.tgFrontBtnMate" class="form-control-sm form-control">
                            <form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgFrontBtnMateMap}"/>
                        </form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletTuxedoInfo.tgFrontBtnMateStkNo" id="tg_frontBtnMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-2" align="right" id="tg_frontBtnMate_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">バックベルト</label></div>
                    <div class="col col-md-3">
                    	<form:select id="tg_backBelt" path="coOptionGiletTuxedoInfo.tgBackBelt" class="form-control-sm form-control">
                            <form:options items="${orderCoForm.coOptionGiletTuxedoInfo.tgBackBeltMap}"/>
                        </form:select>
                    </div>
                    <div class="col-12 col-md-6" align="right" id="tg_backBelt_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ウォッチチェーン</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
                            <form:radiobuttons id="tg_watchChain_id" path="coOptionGiletTuxedoInfo.tgWatchChain" class="form-check-input" items="${orderCoForm.coOptionGiletTuxedoInfo.tgWatchChainMap}"/>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="tg_watchChain_Msg">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    
    <!-- ウォッシャブル GILET -->
    <div id="wa_gilet_div">
    <div class="card-header">
        <strong class="card-title">GILET</strong>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col col-lg-12">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">GILETモデル</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wg_giletModel"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="wg_giletModel" path="coOptionGiletWashableInfo.wgGiletModel" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgGiletModelMap}"/>
						</form:select>
                    </div>
                    <div class="col-12 col-md-9 offset-md-3" id="giletModel_Msg"></div>
                    <div class="col-12 col-md-9 offset-md-3" id="wg_giletModelCheck" style="margin-top:8px"></div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">胸ポケット</label></div>
                    <div class="col col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_breastPkt_id" path="coOptionGiletWashableInfo.wgBreastPkt" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgBreastPktMap}"/>
						</div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_breastPkt_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット</label></div>
                    <div class="col col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_waistPkt_id" path="coOptionGiletWashableInfo.wgWaistPkt" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgWaistPktMap}"/>
						</div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_waistPkt_Msg">
                    </div>
                </div>
                <div id="wg_waistPkt_yes_area">
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">腰ポケット形状</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_waistPktSpec_id" path="coOptionGiletWashableInfo.wgWaistPktSpec" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgWaistPktSpecMap}"/>
						</div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_waistPktSpec_Msg">
                    </div>
                </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ステッチ種類</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_stitch_id" path="coOptionGiletWashableInfo.wgStitch" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgStitchMap}"/>
						</div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_stitch_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ステッチ箇所変更</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_stitchModify_id" path="coOptionGiletWashableInfo.wgStitchModify" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgStitchModifyMap}"/>
						</div>
                        <div id="wg_stitchModifyPlace"  style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wg_stitchModifyPlace">全選択</button>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wg_stitchModifyPlace">全解除</button>
                        </div>
                        </div>
                        <div class="offset-md-1">
                        <%-- <div class="form-check-inline form-check">
							<form:checkboxes id="wg_stitchModifyPlace_id" path="coOptionGiletWashableInfo.wgStitchModifyPlace" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgStitchModifyPlaceMap}"/>
						</div> --%>
						<c:forEach var="wgStitchModifyPlaceMap" items="${orderCoForm.coOptionGiletWashableInfo.wgStitchModifyPlaceMap }" varStatus="row">
                      		<div class="form-check-inline form-check">
                      			<input type="checkbox" id="wg_stitchModifyPlace_id${row.count}" name="coOptionGiletWashableInfo.wgStitchModifyPlace${row.count}" value="${wgStitchModifyPlaceMap.key}" class="form-check-input">${wgStitchModifyPlaceMap.value}
                      		</div>
                      	</c:forEach>
                        </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_stitchModify_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ダブルステッチ</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_dStitchModify_id" path="coOptionGiletWashableInfo.wgDStitchModify" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgDStitchModifyMap}"/>
						</div>
                        <div id="wg_dStitchModifyPlace"  style="display:none">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wg_dStitchModifyPlace">全選択</button>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wg_dStitchModifyPlace">全解除</button>
                        </div>
                        </div>
                        <div class="offset-md-1">
                        <%-- <div class="form-check-inline form-check">
							<form:checkboxes id="wg_dStitchModifyPlace_id" path="coOptionGiletWashableInfo.wgDStitchModifyPlace" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgDStitchModifyPlaceMap}"/>
						</div> --%>
						<c:forEach var="wgDStitchModifyPlaceMap" items="${orderCoForm.coOptionGiletWashableInfo.wgDStitchModifyPlaceMap }" varStatus="row">
                      		<div class="form-check-inline form-check">
                      			<input type="checkbox" id="wg_dStitchModifyPlace_id${row.count}" name="coOptionGiletWashableInfo.wgDStitchModifyPlace${row.count}" value="${wgDStitchModifyPlaceMap.key}" class="form-check-input">${wgDStitchModifyPlaceMap.value}
                      		</div>
                      	</c:forEach>
                        </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_dStitchModify_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">AMF色指定</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_amfColor_id" path="coOptionGiletWashableInfo.wgAmfColor" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgAmfColorMap}"/>
						</div>
                        <div id="wg_amfColor_div" style="display:none;">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                         <form:select id="wg_amfColorPlaceAll" path="coOptionGiletWashableInfo.wgAmfColorPlaceAll" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgAmfColorPlaceAllMap}"/>
						</form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wg_amfColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wg_amfColorPlace">全解除</button>
                        </div>
                        </div>
                        <c:forEach var="wgAmfColorPlaceMap" items="${orderCoForm.coOptionGiletWashableInfo.wgAmfColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="wg_amfColorPlace" class="form-check-label ">
                                <input type="checkbox" id="wg_amfColorPlace_${row.count}" name="coOptionGiletWashableInfo.wgAmfColorPlace${row.count}" value="${wgAmfColorPlaceMap.key }" class="form-check-input">${wgAmfColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="wg_amfColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="wgAmfColorsMap" items="${orderCoForm.coOptionGiletWashableInfo.wgAmfColorPlaceAllMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="wg_amfColor" class="form-check-label ">
                        			    <input type="radio" id="wg_amfColor_${wgAmfColorsMap.key}" name="coOptionGiletWashableInfo.wgAmfColor${row.count}" value="${wgAmfColorsMap.key}" class="form-check-input">${wgAmfColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_amfColor_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタンホール色指定</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_bhColor_id" path="coOptionGiletWashableInfo.wgBhColor" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgBhColorMap}"/>
						</div>
                        <div id="wg_bhColor_div">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="wg_bhColorPlaceAll" path="coOptionGiletWashableInfo.wgBhColorPlaceAll" class="form-control-sm form-control">
								<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgBhColorPlaceAllMap}"/>
							</form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wg_bhColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wg_bhColorPlace">全解除</button>
                        </div>
                        </div>
                        <c:forEach var="wgBhColorPlaceMap" items="${orderCoForm.coOptionGiletWashableInfo.wgBhColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="wg_bhColorPlace" class="form-check-label ">
                                <input type="checkbox" id="wg_bhColorPlace_${row.count}" name="coOptionGiletWashableInfo.wgBhColorPlace${row.count}" value="${wgBhColorPlaceMap.key }" class="form-check-input">${wgBhColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="wg_bhColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="wgBhColorsMap" items="${orderCoForm.coOptionGiletWashableInfo.wgBhColorsMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="wg_bhColor" class="form-check-label ">
                        			    <input type="radio" id="wg_byColor_${wgBhColorsMap.key}" name="coOptionGiletWashableInfo.wgBhColor${row.count}" value="${wgBhColorsMap.key}" class="form-check-input">${wgBhColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_bhColor_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ボタン付け糸指定</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_byColor_id" path="coOptionGiletWashableInfo.wgByColor" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgByColorMap}"/>
						</div>
                        <div id="wg_byColor_div">
                        <div class="offset-md-1">
                        <div class="form-check-inline form-check">
                            <form:select id="wg_byColorPlaceAll" path="coOptionGiletWashableInfo.wgByColorPlaceAll" class="form-control-sm form-control">
								<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgByColorPlaceAllMap}"/>
							</form:select>&nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_as_wg_byColorPlace">全選択</button>
                            &nbsp;
                            <button type="button" class="btn btn-outline-info btn-sm" id="btn_ar_wg_byColorPlace">全解除</button>
                        </div>
                        </div>
                        <c:forEach var="wgByColorPlaceMap" items="${orderCoForm.coOptionGiletWashableInfo.wgByColorPlaceMap }" varStatus="row">
                        	<div class="offset-md-1">
                            <div class="form-check">
                            <div class="checkbox">
                            <label for="wg_byColorPlace" class="form-check-label ">
                                <input type="checkbox" id="wg_byColorPlace_${row.count}" name="coOptionGiletWashableInfo.wgByColorPlace${row.count}" value="${wgByColorPlaceMap.key }" class="form-check-input">${wgByColorPlaceMap.value }
                            </label>
                            </div>
                            </div>
                        	</div>
                        	<div class="offset-md-2" id="wg_byColorPlace_${row.count}_div" style="display:none">
                        		<c:forEach var="wgByColorsMap" items="${orderCoForm.coOptionGiletWashableInfo.wgByColorsMap}">
                        		  <div class="form-check-inline form-check">
                        		     <label for="wg_bhColor" class="form-check-label ">
                        			    <input type="radio" id="wg_byColor_${wgByColorsMap.key}" name="coOptionGiletWashableInfo.wgByColor${row.count}" value="${wgByColorsMap.key}" class="form-check-input">${wgByColorsMap.value}
                        		     </label>
                        		  </div>
                        		</c:forEach>
                        	</div>
                        </c:forEach>
                        </div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_byColor_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">背裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wg_backLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="wg_backLiningMate" path="coOptionGiletWashableInfo.wgBackLiningMate" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgBackLiningMateMap}"/>
						</form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletWashableInfo.wgBackLiningMateStkNo" id="wg_backLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col col-md-1">
                        <button type="button" class="btn btn-outline-info btn-sm" id="btn_wg_backLiningMate">上着と同じ</button>
                    </div>
                    <div class="col-12 col-md-1" align="right" id="wg_backLiningMate_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">内側裏地素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wg_insideLiningMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="wg_insideLiningMate" path="coOptionGiletWashableInfo.wgInsideLiningMate" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgInsideLiningMateMap}"/>
						</form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletWashableInfo.wgInsideLiningMateStkNo" id="wg_insideLiningMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col-12 col-md-2" align="right" id="wg_insideLiningMate_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">釦素材</label>
                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#infotext_wg_frontBtnMate"><i class="fa fa-question-circle text-danger"></i></button>
                    </div>
                    <div class="col col-md-3">
                    	<form:select id="" path="coOptionGiletWashableInfo.wgFrontBtnMate" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgFrontBtnMateMap}"/>
						</form:select>
                    </div>
                    <div class="col col-md-4">
                        <select name="coOptionGiletWashableInfo.wgFrontBtnMateStkNo" id="wg_frontBtnMateStkNo" class="form-control-sm form-control">
                        </select>
                    </div>
                    <div class="col col-md-1">
                        <button type="button" class="btn btn-outline-info btn-sm" id="btn_wg_frontBtnMate">上着と同じ</button>
                    </div>
                    <div class="col-12 col-md-1" align="right" id="wg_frontBtnMate_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">バックベルト</label></div>
                    <div class="col col-md-3">
                    	<form:select id="wg_backBelt" path="coOptionGiletWashableInfo.wgBackBelt" class="form-control-sm form-control">
							<form:options items="${orderCoForm.coOptionGiletWashableInfo.wgBackBeltMap}"/>
						</form:select>
                    </div>
                    <div class="col-12 col-md-6" align="right" id="wg_backBelt_Msg">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col col-md-3"><label class=" form-control-label">ウォッチチェーン</label></div>
                    <div class="col-12 col-md-6">
                    	<div class="form-check-inline form-check">
							<form:radiobuttons id="wg_watchChain_id" path="coOptionGiletWashableInfo.wgWatchChain" class="form-check-input" items="${orderCoForm.coOptionGiletWashableInfo.wgWatchChainMap}"/>
						</div>
                    </div>
                    <div class="col-12 col-md-3" align="right" id="wg_watchChain_Msg">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <input type="hidden" id="jacketItemFlag" name="jacketItemFlag" value="${orderCoForm.jacketItemFlag }"/>
	<input type="hidden" id="pantsItemFlag" name="pantsItemFlag" value="${orderCoForm.pantsItemFlag }"/>
	<input type="hidden" id="giletItemFlag" name="giletItemFlag" value="0"/>
	<input type="hidden" id="shirtItemFlag" name="shirtItemFlag" value="${orderCoForm.shirtItemFlag }"/>
	<input type="hidden" id="coatItemFlag" name="coatItemFlag" value="${orderCoForm.coatItemFlag }"/>
	<input type="hidden" id="pants2ItemFlag" name="pants2ItemFlag" value="${orderCoForm.pants2ItemFlag }"/>
    
	<input type="hidden" id="giletAdFlag" name="giletAdFlag" value="${orderCoForm.giletAdFlag }" />	
	<input type="hidden" id="jacketAdFlag" name="jacketAdFlag" value="${orderCoForm.jacketAdFlag }" />
	<input type="hidden" id="coatAdFlag" name="coatAdFlag" value="${orderCoForm.coatAdFlag }" />
	<input type="hidden" id="pantsAdFlag" name="pantsAdFlag" value="${orderCoForm.pantsAdFlag }" />
	<input type="hidden" id="pants2AdFlag" name="pants2AdFlag" value="${orderCoForm.pants2AdFlag }" />
	<input type="hidden" id="shirtAdFlag" name="shirtAdFlag" value="${orderCoForm.shirtAdFlag }" />
</form:form>

<!-- 自作js -->
<%-- <script src="${pageContext.request.contextPath}/resources/app/self/js/rule.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/config.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/customer.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/tabMenu.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/product.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.gilet.standard.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.gilet.tuxedo.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/option.gilet.washable.js"></script>
<script src="${pageContext.request.contextPath}/resources/app/self/js/alter.js"></script>
<script>
var contextPath = jQuery("meta[name='contextPath']").attr("content");
var orderPattern = "CO";
var orderFlag = "${orderCoForm.orderFlag}";
var selectIdList = {
	"og_backLiningMate":"00017",
	"og_insideLiningMate":"00019",
	"og_frontBtnMate":"00021",
	"tg_backLiningMate":"00017",
	"tg_insideLiningMate":"00019",
	"tg_frontBtnMate":"00021",
	"wg_backLiningMate":"00017",
	"wg_insideLiningMate":"00019",
	"wg_frontBtnMate":"00021"
};

jQuery(function() {
	var giletAdFlag="${orderCoForm.giletAdFlag}";
if(orderFlag=="orderCo"){
	if(giletAdFlag=="1"){
	}else{
		jQuery("#giletAdFlag").val("0");
	}
}
var productCategory="${orderCoForm.productCategory}";
if(orderFlag=="orderBack"){
	if(productCategory == "9000101"){
		var sessionGiletModel = "${orderCoForm.coOptionGiletStandardInfo.ogGiletModel}";
		jQuery("#giletModel").click(function(){
			var giletModel = jQuery("#giletModel").val();
			sessionGiletAdFlag(sessionGiletModel,giletModel);
		});
	}else if(productCategory == "9000102"){
		var sessionTgGiletModel = "${orderCoForm.coOptionGiletTuxedoInfo.tgGiletModel}";
		jQuery("#tg_giletModel").click(function(){
			var tgGiletModel = jQuery("#tg_giletModel").val();
			sessionGiletAdFlag(sessionTgGiletModel,tgGiletModel);
		});
	}else if(productCategory == "9000103"){
		var sessionWgGiletModel = "${orderCoForm.coOptionGiletWashableInfo.wgGiletModel}";
		jQuery("#wg_giletModel").click(function(){
			var wgGiletModel = jQuery("#wg_giletModel").val();
			sessionGiletAdFlag(sessionWgGiletModel,wgGiletModel);
		});
	}
	}
	var headerName = $("meta[name='_csrf_header']").attr("content"); // (1)
    var tokenValue = $("meta[name='_csrf']").attr("content"); // (2)
    jQuery(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(headerName, tokenValue); // (3)
    });

	getModelByItem(productCategory);

	//--------------------------------------------
	// 共通
	//--------------------------------------------
	initCommon();

	//--------------------------------------------
	// タブメニュー
	//--------------------------------------------
	initTabMenu();

	//--------------------------------------------
	// お客様情報
	//--------------------------------------------
	//initCustomer();

	//--------------------------------------------
	// 商品タブ
	//--------------------------------------------
	initProduct();

	//--------------------------------------------
	// オプションタブ（Gilet）
	//--------------------------------------------
 	if(productCategory == "9000101"){
 		initOptionGiletStandard();
	}else if(productCategory == "9000102"){
		initOptionGiletTuxedo();
	}else if(productCategory == "9000103"){
		initOptionGiletWashable();
	}
 	
	//--------------------------------------------
	// 補正タブ
	//--------------------------------------------
	initAlter();

	mateInit();

	getPrice();

	modelWhetherEmpty();

	doubleOptionModelPrice();

	ogSession();

	optionGiletChangeModel(productCategory);

	jQuery("#giletItemFlag").val("1");

})	

function getModelByItem(productCategory){
	var glModel = null;
	
	if(productCategory == "9000101"){
		glModel = document.getElementById("giletModel");
	}else if(productCategory == "9000102"){
		glModel = document.getElementById("tg_giletModel");
	}else if(productCategory == "9000103"){
		glModel = document.getElementById("wg_giletModel");
	}

	var allGlOption = glModel.options;
	allGlOption[0].disabled = true;
	
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
	// 標準の場合　Gilet 背裏地素材と内側裏地素材と釦素材のid List
	var glStandardMateList = ["og_backLiningMate","og_insideLiningMate","og_frontBtnMate"];
	// タキシードの場合　Gilet 背裏地素材と内側裏地素材と釦素材のid List
	var glTuexdoMateList = ["tg_backLiningMate","tg_insideLiningMate","tg_frontBtnMate"];
	// ウォッシャブルの場合　Gilet 背裏地素材と内側裏地素材と釦素材のid List
	var glWashableMateList = ["wg_backLiningMate","wg_insideLiningMate","wg_frontBtnMate"];
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
	}else if(item=="04"){
		subItemCode = "04";
		itemCode = item;
		if(category=="9000101"){
			initGlStandard(itemCode,subItemCode);
		}else if(category=="9000102"){
			initGlTuexdo(itemCode,subItemCode);
		}else if(category=="9000103"){
			initGlWashable(itemCode,subItemCode);
		}
	}
	
	function initSuitStandard(itemCode){
		subItemCode = "04";
		initGlStandard(itemCode,subItemCode);
	}

	function initSuitTuexdo(itemCode){
		subItemCode = "04";
		initGlTuexdo(itemCode,subItemCode);
	}

	function initSuitWashable(itemCode){
		subItemCode = "04";
		initGlWashable(itemCode,subItemCode);
	}
			
	function initGlStandard(itemCode,subItemCode){
		for(var i in glStandardMateList){
			optionCode = selectIdList[glStandardMateList[i]];
			mateChecked = jQuery("#"+glStandardMateList[i]+" option:selected").val();
			StkNo = "#"+glStandardMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,0,orderPattern);
		}
		jQuery("#og_backLiningMate,#og_insideLiningMate,#og_frontBtnMate").change(function(){
			var idValue = jQuery(this).prop("id");
			optionCode = selectIdList[idValue];
			mateChecked = jQuery("#"+idValue+" option:selected").val();
			StkNo = "#"+idValue+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,0,orderPattern);
		})	
	}

	function initGlTuexdo(itemCode,subItemCode){
		for(var i in glTuexdoMateList){
			optionCode = selectIdList[glTuexdoMateList[i]];
			mateChecked = jQuery("#"+glTuexdoMateList[i]+" option:selected").val();
			StkNo = "#"+glTuexdoMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,2,orderPattern);
		}
		jQuery("#tg_backLiningMate,#tg_insideLiningMate,#tg_frontBtnMate").change(function(){
			var idValue = jQuery(this).prop("id");
			optionCode = selectIdList[idValue];
			mateChecked = jQuery("#"+idValue+" option:selected").val();
			StkNo = "#"+idValue+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,2,orderPattern);
		})	
	}

	function initGlWashable(itemCode,subItemCode){
		for(var i in glWashableMateList){
			optionCode = selectIdList[glWashableMateList[i]];
			mateChecked = jQuery("#"+glWashableMateList[i]+" option:selected").val();
			StkNo = "#"+glWashableMateList[i]+"StkNo";
			mateSelect(itemCode,subItemCode,mateChecked,optionCode,StkNo,1,orderPattern);
		}
		jQuery("#wg_backLiningMate,#wg_insideLiningMate,#wg_frontBtnMate").change(function(){
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

function getAllPrice(subItemCode, optionPrice){
	jQuery("#glOptionPriceId").val(optionPrice);
    var jkOptionPriceId = jQuery("#jkOptionPriceId").val();
    var ptOptionPriceId = jQuery("#ptOptionPriceId").val();
    var pt2OptionPriceId = jQuery("#pt2OptionPriceId").val();
    var glOptionPriceId = optionPrice;
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
    	allPrice = Number(glOptionPriceId);
    }
    jQuery("#optionPriceId").val(allPrice);
    jQuery("#optionPrice").html(formatMoney(allPrice,0,""));
}

function modelWhetherEmpty(){
	var giletModel = jQuery("#giletModel option:selected").val();
	if(!(giletModel == "")){
		jQuery("#giletModel").change();
	}
}

function doubleOptionModelPrice(){
	var modelDoublePrice = null;
	jQuery("#giletModel_Msg").empty();
	var productCategory = jQuery('input[name="productCategory"]:checked').val();

	if(productCategory == "9000101"){
		modelDoublePrice = jQuery("#giletModel");
	}else if(productCategory == "9000102"){
		modelDoublePrice = jQuery("#tg_giletModel");
	}else if(productCategory == "9000103"){
		modelDoublePrice = jQuery("#wg_giletModel");
	}

	var modelDoublePriceVal = modelDoublePrice.val();
	
	var productFabricNo = jQuery("#productFabricNo").val();
	var item = jQuery("#item").val();
	var subItem = "04";

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
			 data:{"fabricNo":productFabricNo,"orderPattern":orderPattern,"doubleCheck":modelDoublePriceVal,"item":item,"subItem":subItem},
			 async:false,
			 success:function(result){
				if(isNotEmpty(result)){
					if(result.glDoublePrice == "0" || result.glDoublePrice == 0){
						jQuery("#glDoubleModelPrice").val(result.glDoublePrice);
						jQuery("#giletModel_Msg").html("無料");
						allOptionPrice();
					}else{
						jQuery("#glDoubleModelPrice").val(result.glDoublePrice);
						jQuery("#giletModel_Msg").html(formatMoney(result.glDoublePrice,0,"￥"));
						allOptionPrice();
					}
				}else{
					jQuery("#glDoubleModelPrice").val("0");
					jQuery("#giletModel_Msg").html("無料");
					allOptionPrice();
				}
		     }
		});
	}

	jQuery('#giletModel,#tg_giletModel,#wg_giletModel').change(function(){
		var modelDoublePrice = jQuery(this).val();
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
				 data:{"fabricNo":productFabricNo,"orderPattern":orderPattern,"doubleCheck":modelDoublePrice,"item":item,"subItem":subItem},
				 async:false,
				 success:function(result){
					if(isNotEmpty(result)){
						if(result.glDoublePrice == "0" || result.glDoublePrice == 0){
							jQuery("#glDoubleModelPrice").val(result.glDoublePrice);
							jQuery("#giletModel_Msg").html("無料");
							allOptionPrice();
						}else{
							jQuery("#glDoubleModelPrice").val(result.glDoublePrice);
							jQuery("#giletModel_Msg").html(formatMoney(result.glDoublePrice,0,"￥"));
							allOptionPrice();
						}
					}else{
						jQuery("#glDoubleModelPrice").val("0");
						jQuery("#giletModel_Msg").html("無料");
						allOptionPrice();
					}
			     }
			});
		}
	})
	
}

//--------------------------------------------
//全部のitem金額制御
//--------------------------------------------
function getPrice(){
// 	GILETの料金を表示
	jQuery("#giletModel,#tg_giletModel,#wg_giletModel").change(function(){
		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";

		var code = itemCode + subItemCode + giletModel;

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardModel";
		}else if(productCategory == "9000102"){
			ajaxUrl = "getOrderPriceForGiletTuxedoModel";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableModel";
		}
		$.ajax({
			type:"get",
			url:contextPath + "/orderCo/" + ajaxUrl,
			data:{"code":code},
			dataType:"json",
			contentType:"application/json",
			async:false,
			success:function(result){
				var allPriceMap = result.priceMap;
				for (var priceMapKey in allPriceMap) {
					if(jQuery("#"+priceMapKey+"_Msg").length>0){
						jQuery("#"+priceMapKey+"_Msg").html(allPriceMap[priceMapKey]);
					}else{
						var msgIdValueName = priceMapKey.replace(/_id/g,"_Msg");
						jQuery("#"+msgIdValueName).html(allPriceMap[priceMapKey]);
					}
				}
				
// 				document.getElementById("nav2_GILET").click(); 
				getAllPrice(subItemCode, result.optionPrice);
			}
		});
		
	})
	
// 	プルダウンの変更処理
// 	項目：背裏地素材,背裏地品番,内側裏地素材,内側裏地品番,釦素材,釦品番,バックベルト
	jQuery("#og_backLiningMate,#og_backLiningMateStkNo,#og_insideLiningMate,#og_insideLiningMateStkNo,#og_frontBtnMate,#og_frontBtnMateStkNo,#og_backBelt,#tg_backLiningMate,#tg_backLiningMateStkNo,#tg_insideLiningMate,#tg_insideLiningMateStkNo,#tg_frontBtnMate,#tg_frontBtnMateStkNo,#tg_backBelt,#wg_backLiningMate,#wg_backLiningMateStkNo,#wg_insideLiningMate,#wg_insideLiningMateStkNo,#wg_frontBtnMate,#wg_frontBtnMateStkNo,#wg_backBelt")
	.change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});
	   
		var giletModel = "";
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			var giletModel = jQuery("#giletModel option:selected").val();
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			var giletModel = jQuery("#tg_giletModel option:selected").val();
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			var giletModel = jQuery("#wg_giletModel option:selected").val();
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		var thisVal = "";
	    var thisValStkNo = "";
	    if(idValueName.indexOf("StkNo") == -1){
		    thisVal = jQuery("#" + idValueName).val();
		    thisValStkNo = jQuery("#" + idValueName + "StkNo").val();
	    }else{
		    thisValStkNo = jQuery("#" + idValueName).val();
		    idValueName = idValueName.replace("StkNo","");
		    thisVal = jQuery("#" + idValueName).val();
	    }
		
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":idValueName,"thisVal":thisVal,"thisValStkNo":thisValStkNo},
				dataType:"json",
				contentType:"application/json",
				async:false,
				success:function(result){
					if(jQuery("#"+idValueName+"_Msg").length>0){
						jQuery("#"+idValueName+"_Msg").html(result.idValuePrice);
					}else{
						var lengthforLastFive = idValueName.length - 5;
						var idValueTemp = idValueName.substring(0,lengthforLastFive);
						jQuery("#"+idValueTemp+"_Msg").html(result.idValuePrice);
					}
					getAllPrice(subItemCode, result.optionPrice);
					allOptionPrice();
				}
			});
		}

	});
	
// 	ラジオボタンの変更処理
// 	項目：胸ポケット、腰ポケット形状、ウォッチチェーン、腰ポケット素材
	jQuery('input[id^="og_breastPkt_id"],[id^="og_waistPktSpec_id"],[id^="og_watchChain_id"],[id^="tg_breastPkt_id"],[id^="tg_waistPktSpec_id"],[id^="tg_waistPktMate_id"],[id^="tg_watchChain_id"],[id^="wg_breastPkt_id"],[id^="wg_waistPktSpec_id"],[id^="wg_watchChain_id"]')
	.change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});
		
		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		var jspOptionCodeAndBranchCode = "";
		if(idValueName.indexOf("_breastPkt_id") != -1){
			//胸ポケット
			jspOptionCodeAndBranchCode = "00001" + thisValueTemp;
		}else if(idValueName.indexOf("_waistPktSpec_id") != -1){
			//腰ポケット形状
			jspOptionCodeAndBranchCode = "00003" + thisValueTemp;
		}else if(idValueName.indexOf("_watchChain_id") != -1){
			//ウォッチチェーン
			jspOptionCodeAndBranchCode = "00024" + thisValueTemp;
		}else if(idValueName.indexOf("_waistPktMate_id") != -1){
			//腰ポケット素材
			jspOptionCodeAndBranchCode = "00004" + thisValueTemp;
		}

		//IDの後の番号を削除します
		var findIdPosition = idValueName.indexOf("_id");
		var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
		 
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"jspOptionCodeAndBranchCode":jspOptionCodeAndBranchCode},
				dataType:"json",
				contentType:"application/json",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}
	});

// 	ラジオボタンの変更処理
// 	項目：腰ポケット
	jQuery('input[id^="og_waistPkt_id"],[id^="tg_waistPkt_id"],[id^="wg_waistPkt_id"]')
	.change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();

		var waistPktValue = jQuery('input[name="coOptionGiletStandardInfo.ogWaistPkt"]:checked').val();
		if (waistPktValue == "0000201") {
			// 腰ポケット形状の設定
			jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]').val([giletModelDefaultList[giletModel]["og_waistPktSpec"]]);
			jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]:checked').change();
		}else if (waistPktValue == "0000202") {
			for(var i=0; i<jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]').length; i++){
				jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]').get(i).checked = false;
			}
		}

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		var jspOptionCodeAndBranchCode = "";
		if(idValueName.indexOf("_waistPkt_id") != -1){
			//胸ポケット
			jspOptionCodeAndBranchCode = "00002" + thisValueTemp;
		}

		//IDの後の番号を削除します
		var findIdPosition = idValueName.indexOf("_id");
		var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
		 
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"jspOptionCodeAndBranchCode":jspOptionCodeAndBranchCode},
				dataType:"json",
				contentType:"application/json",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}
	});
	
	// 	ラジオボタンの変更処理
// 	項目：ステッチ種類
	jQuery('input[id^="og_stitch_id"],[id^="wg_stitch_id"],[id^="tg_stitch_id"]')
	.change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();
// 		alert(thisValueTemp);

		if(thisValueTemp == "0000503"){
			//ステッチ種類は無しです
			jQuery('#og_stitchModify_id1').prop("checked", true);
			jQuery('#og_stitchModify_id1').prop("disabled", true);
			jQuery('#og_stitchModify_id2').prop("checked", false);
			jQuery('#og_stitchModify_id2').prop("disabled", true);
			jQuery('input[name="coOptionGiletStandardInfo.ogStitchModify"]:checked').change();
		}else if(thisValueTemp != "0000503"){
			//ステッチ種類は有りです
			jQuery('#og_stitchModify_id1').prop("checked", true);
			jQuery('#og_stitchModify_id1').prop("disabled", false);
			jQuery('#og_stitchModify_id2').prop("checked", false);
			jQuery('#og_stitchModify_id2').prop("disabled", false);
		}

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		var jspOptionCodeAndBranchCode = "";
		if(idValueName.indexOf("_stitch_id") != -1){
			//ステッチ種類
			jspOptionCodeAndBranchCode = "00005" + thisValueTemp;
		}

		//IDの後の番号を削除します
		var findIdPosition = idValueName.indexOf("_id");
		var interceptedIdValueName = idValueName.substr(0, findIdPosition+3);
		
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"jspOptionCodeAndBranchCode":jspOptionCodeAndBranchCode},
				dataType:"json",
				contentType:"application/json;charsetset=UTF-8",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}
		
	});
	
// 	ラジオボタンの変更処理
// 	項目：ステッチ箇所変更,ダブルステッチ
	jQuery('input[id^="og_stitchModify_id"],[id^="og_stitchModifyPlace_id"],[id^="og_dStitchModify_id"],[id^="og_dStitchModifyPlace_id"],[id^="wg_stitchModify_id"],[id^="wg_stitchModifyPlace_id"],[id^="wg_dStitchModify_id"],[id^="wg_dStitchModifyPlace_id"]')
	.change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();
// 		alert(thisValueTemp);

		if(thisValueTemp == "0000601"){
			//ステッチ箇所変更は無しです
			var i = 1;
			jQuery('input[id^="og_stitchModifyPlace_id"]').each(function() {
				jQuery('#og_stitchModifyPlace_id' + i).removeAttr("checked");
				i++;
			});
			jQuery('#og_dStitchModify_id1').prop("checked", true);
			jQuery('#og_dStitchModify_id2').prop("disabled", true);
			jQuery('#og_dStitchModify_id2').prop("checked", false);
			jQuery('#og_amfColor_id1').prop("checked", true);
			jQuery('#og_amfColor_id2').prop("disabled", true);
			jQuery('#og_amfColor_id2').prop("checked", false);
			jQuery('input[name="coOptionGiletStandardInfo.ogDStitchModify"]:checked').change();
			jQuery('input[name="coOptionGiletStandardInfo.ogAmfColor"]:checked').change();
		}else if(thisValueTemp == "0000602"){
			//ステッチ箇所変更は有りです
			//ラペル・フロントと腰ポケット、デフォルト選択
			if(isNotEmpty(giletModel)){
				for(var i=0; i<ogStitchModifyList[giletModel].length; i++){
					var j = 1;
					jQuery('input[id^="og_stitchModifyPlace_id"]').each(function() {
						if(jQuery('#og_stitchModifyPlace_id' + j).val() == ogStitchModifyList[giletModel][i]){
							jQuery('#og_stitchModifyPlace_id' + j).prop("checked", true);
						}
						j++;
					});
				}
			}
			jQuery('#og_dStitchModify_id2').prop("disabled", false);
			jQuery('#og_amfColor_id2').prop("disabled", false);
		}
		if(thisValueTemp == "0002601"){
			//ダブルステッチは無しです
			var i = 1;
			jQuery('input[id^="og_dStitchModifyPlace_id"]').each(function() {
				jQuery('#og_dStitchModifyPlace_id' + i).removeAttr("checked");
				i++;
			});
		}

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		//複数選択ボックスの数,IDにより決定optionCode
		var ogSomePlace_length = 0;
		var jspOptionCodeUp = "";
		var jspOptionCode = "";
		if(idValueName.indexOf("og_stitchModify") >= 0){
			jspOptionCodeUp ="00006";
			jspOptionCode ="00007";
			ogSomePlace_length = jQuery('input[id^="og_stitchModifyPlace_id"]').length;

		}else if(idValueName.indexOf("og_dStitchModify") >= 0){
			jspOptionCodeUp ="00026";
			jspOptionCode ="00027";
			ogSomePlace_length = jQuery('input[id^="og_dStitchModifyPlace_id"]').length;
			
		}else if(idValueName.indexOf("wg_stitchModify") >= 0){
			jspOptionCodeUp ="00006";
			jspOptionCode ="00007";
			ogSomePlace_length = jQuery('input[id^="wg_stitchModifyPlace_id"]').length;
			
		}else if(idValueName.indexOf("wg_dStitchModify") >= 0){
			jspOptionCodeUp ="00026";
			jspOptionCode ="00027";
			ogSomePlace_length = jQuery('input[id^="wg_dStitchModifyPlace_id"]').length;

		}

		//チェックボックスのvalueを保存します
		var countArr = "";
		
		//アイテムのID名をクリックして、"Place_id"フィールドを含めます
		var findIdPosition = idValueName.indexOf("Place_id");
		//IDの後の番号を削除します
		var interceptedIdValueName = "";
		var idValueNameTemp;
		if(findIdPosition != -1){
			//インターセプトID、最初の数字からPlace_idの前まで
			idValueNameTemp = idValueName.substring(0,findIdPosition);
			interceptedIdValueName = idValueNameTemp + "_id";
		}else{
			//インターセプトID、最初の数字から_idの前まで
			var findIdPositionNotPlace = idValueName.indexOf("_id");
			idValueNameTemp = idValueName.substring(0,findIdPositionNotPlace);
			interceptedIdValueName = idValueNameTemp + "_id";
		}
		
		//チェックボックスループ
		for(var i=1; i<=ogSomePlace_length; i++){
			//各チェックボックスのIDをループスプライシング
			//このループの要素を取得します
			var idValueNameComplete = document.getElementById(idValueNameTemp + "Place_id" + i);
			if(idValueNameComplete.checked){
				countArr = countArr + jspOptionCode + idValueNameComplete.value + ",";
			}
		}
		if(findIdPosition == -1){
			countArr = countArr + jspOptionCodeUp + thisValueTemp + ",";
		}
		
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
				data:{"code":code,"idValueName":interceptedIdValueName,"countArr":countArr},
				dataType:"json",
				contentType:"application/json;charsetset=UTF-8",
				async:false,
				success:function(result){
					var msgIdValueName = interceptedIdValueName.replace(/_id/g,"_Msg");
					jQuery("#"+msgIdValueName).html(result.idValuePrice);
					getAllPrice(subItemCode, result.optionPrice);
				}
			});
		}
		
	});

// 	ラジオボタンの変更処理
// 	項目：AMF色指定、ボタンホール色指定、ボタン付け糸指定
	jQuery('input[id^="og_amfColor_"],[id^="og_bhColor_"],[id^="og_byColor_"],[id^="tg_bhColor_"],[id^="tg_byColor_"],[id^="wg_amfColor_"],[id^="wg_bhColor_"],[id^="wg_byColor_"]').change(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var thisValueTemp = jQuery(this).val();
// 		alert(idValueName);
		
		if(thisValueTemp == "0000801"){
			//AMF色指定は無しです
			var i = 1;
			jQuery('input[id^="og_amfColorPlace_"]').each(function() {
				var valueNameAll = "coOptionGiletStandardInfo.ogAmfColor" + i;
				var valueNameOne = document.getElementsByName(valueNameAll);
				var $valueNameOneJq = $(valueNameOne);
				for(var j=0; j<valueNameOne.length; j++){
					jQuery($valueNameOneJq).get(j).checked = false;
				}
				i++;
			});
		}

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		//IDの後の番号を削除します
		var interceptedIdValueName = "";
		
		//複数選択ボックスの数,IDにより決定optionCode
		var ogSomePlace_length = 0;
		var jspOptionCodeAndBranchCode = "";
		if(idValueName.indexOf("og_amfColor_") >= 0){
			jspOptionCodeAndBranchCode ="00010" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="og_amfColorPlace_"]').length;

		}else if(idValueName.indexOf("og_bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00013" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="og_bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("og_byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00016" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="og_byColorPlace_"]').length;
			
		}else if(idValueName.indexOf("tg_bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00013" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="tg_bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("tg_byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00016" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="tg_byColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wg_amfColor_") >= 0){
			jspOptionCodeAndBranchCode ="00010" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="wg_amfColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wg_bhColor_") >= 0){
			jspOptionCodeAndBranchCode ="00013" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="wg_bhColorPlace_"]').length;
			
		}else if(idValueName.indexOf("wg_byColor_") >= 0){
			jspOptionCodeAndBranchCode ="00016" + thisValueTemp;
			ogSomePlace_length = jQuery('input[id^="wg_byColorPlace_"]').length;
			
		}
		//選択した異なる色のvalueを保存する
		var countArr = new Array();
		var colorCount = 0;
		
		//アイテムのID名をクリックして、"ID"フィールドを含めます
		var findIdPosition = idValueName.indexOf("_id");
		if(findIdPosition == -1){
			interceptedIdValueName = idValueName.replace(new RegExp(thisValueTemp,"g"),"id");
			//ラジオの色を変更する
			//チェックボックスループ
			for(var i=1; i<=ogSomePlace_length; i++){
				//各チェックボックスのIDをループスプライシング
				//選択したチェックボックスの数を取得する
				var idValueNameAll = "";
				if(idValueName.indexOf("og_amfColor_") >= 0){
					idValueNameAll = "coOptionGiletStandardInfo.ogAmfColor" + i;
				}else if(idValueName.indexOf("og_bhColor_") >= 0){
					idValueNameAll = "coOptionGiletStandardInfo.ogBhColor" + i;
				}else if(idValueName.indexOf("og_byColor_") >= 0){
					idValueNameAll = "coOptionGiletStandardInfo.ogByColor" + i;
				}else if(idValueName.indexOf("tg_bhColor_") >= 0){
					idValueNameAll = "coOptionGiletTuxedoInfo.tgBhColor" + i;
				}else if(idValueName.indexOf("tg_byColor_") >= 0){
					idValueNameAll = "coOptionGiletTuxedoInfo.tgByColor" + i;
				}else if(idValueName.indexOf("wg_amfColor_") >= 0){
					idValueNameAll = "coOptionGiletWashableInfo.wgAmfColor" + i;
				}else if(idValueName.indexOf("wg_bhColor_") >= 0){
					idValueNameAll = "coOptionGiletWashableInfo.wgBhColor" + i;
				}else if(idValueName.indexOf("wg_byColor_") >= 0){
					idValueNameAll = "coOptionGiletWashableInfo.wgByColor" + i;
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
		}else{
			if(idValueName.indexOf("amfColor_") >= 0){
				jspOptionCodeAndBranchCode ="00008" + thisValueTemp;
			}else if(idValueName.indexOf("bhColor_") >= 0){
				jspOptionCodeAndBranchCode ="00011" + thisValueTemp;
			}else if(idValueName.indexOf("byColor_") >= 0){
				jspOptionCodeAndBranchCode ="00014" + thisValueTemp;
			}
			interceptedIdValueName = idValueName.substring(0, findIdPosition+3);
			colorCount = -1;
		}
		
		var desiredItemFlag = false;
		if(interceptedIdValueName == "og_amfColor_id" || interceptedIdValueName == "og_bhColor_id" || interceptedIdValueName == "og_byColor_id" 
				|| interceptedIdValueName == "tg_bhColor_id" || interceptedIdValueName == "tg_byColor_id" 
				|| interceptedIdValueName == "wg_amfColor_id" || interceptedIdValueName == "wg_bhColor_id" || interceptedIdValueName == "wg_byColor_id"){
			desiredItemFlag = true;
		}

		if(isNotEmpty(giletModel) && desiredItemFlag == true){
			var code = itemCode + subItemCode + giletModel;
			jQuery.ajax({
				type:"get",
				url:contextPath + "/orderCo/" + ajaxUrl,
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
		}
		
	});

// 	項目：AMF色指定、ボタンホール色指定、ボタン付け糸指定の全選択、全解除
	jQuery('[id^="btn_as_og_amfColorPlace"],[id^="btn_ar_og_amfColorPlace"],[id^="btn_as_og_bhColorPlace"],'+
			'[id^="btn_ar_og_bhColorPlace"],[id^="btn_as_og_byColorPlace"],[id^="btn_ar_og_byColorPlace"]').click(function(){
// 		jQuery.ajax({url:contextPath + "/orderCo/saveOptionData",data: jQuery('#idInfoForm').serialize(),type: "post",async:false});

		var giletModel = jQuery("#giletModel option:selected").val();
		var itemCode = jQuery("#item").val();
		var subItemCode = "04";
		var idValueName = jQuery(this).attr("id");
		var idValueNameTemp = "";
		var thisValueTemp = "";
// 		alert(idValueName);

		var productCategory = jQuery('input[name="productCategory"]:checked').val();
		var ajaxUrl = "";
		if(productCategory == "9000101"){
			idValueNameTemp = "og_";
			ajaxUrl = "getOrderPriceForGiletStandardProject";
		}else if(productCategory == "9000102"){
			idValueNameTemp = "tg_";
			ajaxUrl = "getOrderPriceForGiletTuxedoProject";
		}else if(productCategory == "9000103"){
			idValueNameTemp = "wg_";
			ajaxUrl = "getOrderPriceForGiletWashableProject";
		}

		var findIdAmf = idValueName.indexOf("_amfColorPlace");
		var findIdBh = idValueName.indexOf("_bhColorPlace");
		var findIdBy = idValueName.indexOf("_byColorPlace");
		if(findIdAmf != -1){
			idValueNameTemp = idValueNameTemp + "amfColor_id";
			thisValueTemp = "00010" + jQuery("#og_amfColorPlaceAll").val();
		}else if(findIdBh != -1){
			idValueNameTemp = idValueNameTemp + "bhColor_id";
			thisValueTemp = "00013" + jQuery("#og_bhColorPlaceAll").val();
		}else if(findIdBy != -1){
			idValueNameTemp = idValueNameTemp + "byColor_id";
			thisValueTemp = "00016" + jQuery("#og_byColorPlaceAll").val();
		}

		//選択された異なる色の数
		var colorCount = 0;
		var findIdAs = idValueName.indexOf("btn_as_og_");
		var findIdAr = idValueName.indexOf("btn_ar_og_");
		if(findIdAs != -1){
			colorCount = 1;
		}else if(findIdAr != -1){
			colorCount = 0;
		}
		
		if(isNotEmpty(giletModel)){
			var code = itemCode + subItemCode + giletModel;
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

function ogSession(){
	jQuery('input[name="coOptionGiletStandardInfo.ogStitchModifyPlace1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyPlace1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogStitchModifyPlace2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyPlace2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogStitchModifyPlace3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogStitchModifyPlace3}"]);

	jQuery('input[name="coOptionGiletStandardInfo.ogDStitchModifyPlace1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyPlace1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogDStitchModifyPlace2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyPlace2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogDStitchModifyPlace3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogDStitchModifyPlace3}"]);

	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColorPlace1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlace1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColorPlace2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlace2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColorPlace3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColorPlace3}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColor1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColor1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColor2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColor2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogAmfColor3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogAmfColor3}"]);
	jQuery('input[id^="og_amfColorPlace_"]').change();
	
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace3}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace4"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace4}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace5"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace5}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColorPlace6"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColorPlace6}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor3}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor4"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor4}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor5"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor5}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogBhColor6"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBhColor6}"]);
	jQuery('input[id^="og_bhColorPlace_"]').change();
	
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace3}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace4"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace4}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace5"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace5}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace6"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace6}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace7"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace7}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace8"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace8}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace9"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace9}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColorPlace10"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColorPlace10}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor1"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor1}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor2"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor2}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor3"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor3}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor4"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor4}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor5"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor5}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor6"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor6}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor7"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor7}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor8"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor8}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor9"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor9}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogByColor10"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogByColor10}"]);
	jQuery('input[id^="og_byColorPlace_"]').change();

	jQuery('input[name="coOptionGiletStandardInfo.ogBackLiningMateStkNo"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBackLiningMateStkNo}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogInsideLiningMateStkNo"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogInsideLiningMateStkNo}"]);
	jQuery('input[name="coOptionGiletStandardInfo.ogFrontBtnMateStkNo"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogFrontBtnMateStkNo}"]);
	
 	// 選択中のダブルステッチ変更
	ctrlOgDStitchPlace();
 	// AMF色指定の有効/無効を制御
	ctrlOgAmfColor();
}

function optionGiletChangeModel(productCategory){
	var giletFlag = jQuery("#giletFlag").val();
	if(giletFlag == "1"){
		if(productCategory == "9000101"){
			var giletModel = jQuery("#giletModel").val();

			//胸ポケット
			jQuery('input[name="coOptionGiletStandardInfo.ogBreastPkt"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogBreastPkt}"]);
			jQuery('input[name="coOptionGiletStandardInfo.ogBreastPkt"]:checked').change();

			//腰ポケット形状
			jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]').val(["${orderCoForm.coOptionGiletStandardInfo.ogWaistPktSpec}"]);
			jQuery('input[name="coOptionGiletStandardInfo.ogWaistPktSpec"]:checked').change();

			//背裏地素材
			jQuery('#og_backLiningMateStkNo').val("${orderCoForm.coOptionGiletStandardInfo.ogBackLiningMateStkNo}");
			jQuery('#og_backLiningMateStkNo').change();

			//内側裏地素材
			jQuery('#og_insideLiningMateStkNo').val("${orderCoForm.coOptionGiletStandardInfo.ogInsideLiningMateStkNo}");
			jQuery('#og_insideLiningMateStkNo').change();
			
			//釦素材
			jQuery('#og_frontBtnMateStkNo').val("${orderCoForm.coOptionGiletStandardInfo.ogFrontBtnMateStkNo}");
			jQuery('#og_frontBtnMateStkNo').change();
			
		}else if(productCategory == "9000102"){
			var giletModel = jQuery("#tg_giletModel").val();

			//胸ポケット
			jQuery('input[name="coOptionGiletTuxedoInfo.tgBreastPkt"]').val(["${orderCoForm.coOptionGiletTuxedoInfo.tgBreastPkt}"]);
			jQuery('input[name="coOptionGiletTuxedoInfo.tgBreastPkt"]:checked').change();

			//腰ポケット形状
			jQuery('input[name="coOptionGiletTuxedoInfo.tgWaistPktSpec"]').val(["${orderCoForm.coOptionGiletTuxedoInfo.tgWaistPktSpec}"]);
			jQuery('input[name="coOptionGiletTuxedoInfo.tgWaistPktSpec"]:checked').change();

			//背裏地素材
			jQuery('#tg_backLiningMateStkNo').val("${orderCoForm.coOptionGiletTuxedoInfo.tgBackLiningMateStkNo}");
			jQuery('#tg_backLiningMateStkNo').change();

			//内側裏地素材
			jQuery('#tg_insideLiningMateStkNo').val("${orderCoForm.coOptionGiletTuxedoInfo.tgInsideLiningMateStkNo}");
			jQuery('#tg_insideLiningMateStkNo').change();
			
			//釦素材
			jQuery('#tg_frontBtnMateStkNo').val("${orderCoForm.coOptionGiletTuxedoInfo.tgFrontBtnMateStkNo}");
			jQuery('#tg_frontBtnMateStkNo').change();

		}else if(productCategory == "9000103"){
			var giletModel = jQuery("#wg_giletModel").val();

			//胸ポケット
			jQuery('input[name="coOptionGiletWashableInfo.wgBreastPkt"]').val(["${orderCoForm.coOptionGiletWashableInfo.wgBreastPkt}"]);
			jQuery('input[name="coOptionGiletWashableInfo.wgBreastPkt"]:checked').change();

			//腰ポケット形状
			jQuery('input[name="coOptionGiletWashableInfo.wgWaistPktSpec"]').val(["${orderCoForm.coOptionGiletWashableInfo.wgWaistPktSpec}"]);
			jQuery('input[name="coOptionGiletWashableInfo.wgWaistPktSpec"]:checked').change();

			//背裏地素材
			jQuery('#wg_backLiningMateStkNo').val("${orderCoForm.coOptionGiletWashableInfo.wgBackLiningMateStkNo}");
			jQuery('#wg_backLiningMateStkNo').change();

			//内側裏地素材
			jQuery('#wg_insideLiningMateStkNo').val("${orderCoForm.coOptionGiletWashableInfo.wgInsideLiningMateStkNo}");
			jQuery('#wg_insideLiningMateStkNo').change();
			
			//釦素材
			jQuery('#wg_frontBtnMateStkNo').val("${orderCoForm.coOptionGiletWashableInfo.wgFrontBtnMateStkNo}");
			jQuery('#wg_frontBtnMateStkNo').change();
			
		}
	}
}
function  sessionGiletAdFlag(oldModel,newModel){
	if(oldModel != newModel){
		if(orderFlag == "orderBack" || orderFlag == "orderLink"){
			 jQuery("#giletAdFlag").val("0");
		}
	}	
}

jQuery("#giletModel,#tg_giletModel,#wg_giletModel").change(function(){
	if(orderFlag == "orderCo"){
		jQuery("#giletAdFlag").val("0");
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