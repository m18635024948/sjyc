package co.jp.aoyama.macchinetta.app.order.enums.pants;

public enum PantsCoOptionTuxedoUpperPriceEnum {

	// OptionForm
	// Key:OptionPantsTuxedoInfoのoption_code
	// Value1:OptionPantsTuxedoInfoのmethod
	
	PANTS_TUXEDO_OPTION_CODE01("00001","getTpTack","","tpTackPrice","setPtTackRtPrice"),//タック
	PANTS_TUXEDO_OPTION_CODE02("00002","getTpKneeBack","","tpKneeBackPrice","setPtKneeinnerTypeRtPrice"),//膝裏
	PANTS_TUXEDO_OPTION_CODE03("00003","getTpKneeBackMate","","tpKneeBackMatePrice","setPtKneeinnerClothRtPrice"),//膝裏素材
	PANTS_TUXEDO_OPTION_CODE04("00004","getTpFrontSpec","","tpFrontSpecPrice","setPtFrtTypeRtPrice"),//フロント仕様
	PANTS_TUXEDO_OPTION_CODE05("00005","getTpPancherina","","tpPancherinaPrice","setPtPancherinaRtPrice"),//パンチェリーナ
	PANTS_TUXEDO_OPTION_CODE06("00006","getTpAdjuster","","tpAdjusterPrice","setPtAdjusterRtPrice"),//アジャスター仕様
	PANTS_TUXEDO_OPTION_CODE07("00007","getTpBeltLoop","","tpBeltLoopPrice","setPtBeltloopRtPrice"),//ベルトループ変更
	PANTS_TUXEDO_OPTION_CODE08("00009","getTpPinLoop","","tpPinLoopPrice","setPtPinloopRtPrice"),//ピンループ
	PANTS_TUXEDO_OPTION_CODE10("00010","getTpSidePkt","","tpSidePktPrice","setPtSidePktRtPrice"),//脇ポケット
	PANTS_TUXEDO_OPTION_CODE11("00011","getTpSinobiPkt","","tpSinobiPktPrice","setPtShinobiPktRtPrice"),//忍びポケット
	PANTS_TUXEDO_OPTION_CODE12("00012","getTpCoinPkt","","tpCoinPktPrice","setPtCoinPktRtPrice"),//コインポケット
	PANTS_TUXEDO_OPTION_CODE13("00013","getTpFlapCoinPkt","","tpFlapCoinPktPrice","setPtFlapcoinPktRtPrice"),//フラップ付コインポケット
	PANTS_TUXEDO_OPTION_CODE14("00014","getTpPisPktUf","","tpPisPktUfPrice","setPtLeftPisPktRtPrice"),//上前ピスポケット
	PANTS_TUXEDO_OPTION_CODE15("00015","getTpPisPktDf","","tpPisPktDfPrice","setPtRightPisPktRtPrice"),//下前ピスポケット
	PANTS_TUXEDO_OPTION_CODE16("00016","getTpVCut","","tpVCutPrice","setPtVCutRtPrice"),//Vカット
	PANTS_TUXEDO_OPTION_CODE17("00017","getTpHemUp","","tpHemUpPrice","setPtHemUpRtPrice"),//裾上げ
	PANTS_TUXEDO_OPTION_CODE18("00018","getTpDoubleWide","","tpDoubleWidePrice","setPtDblWidthRtPrice"),//ダブル幅
	PANTS_TUXEDO_OPTION_CODE19("00019","getTpStitch","","tpStitchPrice","setPtAmfStitchRtPrice"),//ステッチ種類
	PANTS_TUXEDO_OPTION_CODE27("00027","getTpBhColor","","tpBhColorPrice","setPtBtnholeColorRtPrice"),//ボタンホール色指定
	PANTS_TUXEDO_OPTION_CODE30("00030","getTpByColor","","tpByColorPrice","setPtBtnthreadColorRtPrice"),//ボタン付け糸指定
	PANTS_TUXEDO_OPTION_CODE33("00033","getTpButton","getTpBtnMateStkNo","tpBtnMateStkNoPrice","setPtBtnMaterialRtPrice"),//釦素材
	PANTS_TUXEDO_OPTION_CODE35("00035","getTpSuspenderBtn","","tpSuspenderBtnPrice","setPtSuspenderBtnRtPrice"),//サスペンダー釦
	PANTS_TUXEDO_OPTION_CODE36("00036","getTpEight","","tpEightPrice","setPtNonSlipRtPrice"),//エイト（滑り止め）
	PANTS_TUXEDO_OPTION_CODE41("00041","getTpThick","","tpThickPrice","setPtChicSlipRtPrice"),//シック大（股補強）
	PANTS_TUXEDO_OPTION_CODE37("00037","getTpShapeMemory","","tpShapeMemoryPrice","setPtShapeMemoryRtPrice"),//形状記憶
	PANTS_TUXEDO_OPTION_CODE39("00039","getTpSideStripe","","tpSideStripePrice","setPtSideStripeRtPrice"),//側章
	PANTS_TUXEDO_OPTION_CODE40("00040","getTpSideStripeWidth","","tpSideStripeWidthPrice","setPtSideStripeWidthRtPrice");//側章幅


	
	private final String key;
	private final String valueOne;
	private final String valueTwo;
	private final String valueThree;
	private final String valueFour;
    
    private PantsCoOptionTuxedoUpperPriceEnum(String k ,String v1 ,String v2 ,String v3 ,String v4) {
        this.key = k;
        this.valueOne = v1;
        this.valueTwo = v2;
        this.valueThree = v3;
        this.valueFour = v4;
    }  

	public String toString() {
        return this.key.concat(",").concat(this.valueOne).concat(",").concat(this.valueTwo).concat(",").concat(this.getValueThree()).concat(",").concat(this.valueFour);
    }  
  
    public static PantsCoOptionTuxedoUpperPriceEnum get(int v) {
        String str = String.valueOf(v);
        return get(str);
    }
  
    public static PantsCoOptionTuxedoUpperPriceEnum get(String str) {
        for (PantsCoOptionTuxedoUpperPriceEnum e : values()) {
            if(e.toString().equals(str)) {
                return e;
            }
        }
        return null;
    }
    
    public String getKey() {
    	return key;
    }
    
    public String getValueOne() {
    	return valueOne;
    }
    
    public String getValueTwo() {
    	return valueTwo;
    }

	public String getValueThree() {
		return valueThree;
	}

	public String getValueFour() {
		return valueFour;
	}

}
