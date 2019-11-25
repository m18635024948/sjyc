package co.jp.aoyama.macchinetta.app.order.enums.pants;

public enum Pants2CoOptionWashableUpperPriceEnum {

	// OptionForm
	// Key:OptionPants2StandardInfoのoption_code
	// Value1:OptionPants2StandardInfoの method
	
	PANTS_STANDARD_OPTION_CODE01("00001","getWp2Tack","","wp2TackPrice","setPt2TackRtPrice"),//タック
	PANTS_STANDARD_OPTION_CODE02("00002","getWp2KneeBack","","wp2KneeBackPrice","setPt2KneeinnerTypeRtPrice"),//膝裏
	PANTS_STANDARD_OPTION_CODE03("00003","getWp2KneeBackMate","","wp2KneeBackMatePrice","setPt2KneeinnerClothRtPrice"),//膝裏素材
	PANTS_STANDARD_OPTION_CODE04("00004","getWp2FrontSpec","","wp2FrontSpecPrice","setPt2FrtTypeRtPrice"),//フロント仕様
	PANTS_STANDARD_OPTION_CODE05("00005","getWp2Pancherina","","wp2PancherinaPrice","setPt2PancherinaRtPrice"),//パンチェリーナ
	PANTS_STANDARD_OPTION_CODE06("00006","getWp2Adjuster","","wp2AdjusterPrice","setPt2AdjusterRtPrice"),//アジャスター仕様
	PANTS_STANDARD_OPTION_CODE07("00007","getWp2BeltLoop","","wp2BeltLoopPrice","setPt2BeltloopRtPrice"),//ベルトループ変更
	PANTS_STANDARD_OPTION_CODE09("00009","getWp2PinLoop","","wp2PinLoopPrice","setPt2PinloopRtPrice"),//ピンループ
	PANTS_STANDARD_OPTION_CODE10("00010","getWp2SidePkt","","wp2SidePktPrice","setPt2SidePktRtPrice"),//脇ポケット
	PANTS_STANDARD_OPTION_CODE11("00011","getWp2SinobiPkt","","wp2SinobiPktPrice","setPt2ShinobiPktRtPrice"),//忍びポケット
	PANTS_STANDARD_OPTION_CODE12("00012","getWp2CoinPkt","","wp2CoinPktPrice","setPt2CoinPktRtPrice"),//コインポケット
	PANTS_STANDARD_OPTION_CODE13("00013","getWp2FlapCoinPkt","","wp2FlapCoinPktPrice","setPt2FlapcoinPktRtPrice"),//フラップ付コインポケット
	PANTS_STANDARD_OPTION_CODE14("00014","getWp2PisPktUf","","wp2PisPktUfPrice","setPt2LeftPisPktRtPrice"),//上前ピスポケット
	PANTS_STANDARD_OPTION_CODE15("00015","getWp2PisPktDf","","wp2PisPktDfPrice","setPt2RightPisPktRtPrice"),//下前ピスポケット
	PANTS_STANDARD_OPTION_CODE16("00016","getWp2VCut","","wp2VCutPrice","setPt2VCutRtPrice"),//Vカット
	PANTS_STANDARD_OPTION_CODE17("00017","getWp2HemUp","","wp2HemUpPrice","setPt2HemUpRtPrice"),//裾上げ
	PANTS_STANDARD_OPTION_CODE18("00018","getWp2DoubleWide","","wp2DoubleWidePrice","setPt2DblWidthRtPrice"),//ダブル幅
	PANTS_STANDARD_OPTION_CODE19("00019","getWp2Stitch","","wp2StitchPrice","setPt2AmfStitchRtPrice"),//ステッチ種類
	PANTS_STANDARD_OPTION_CODE20("00020","getWp2StitchModify","","wp2StitchModifyPrice","setPt2StitchPlcRtPrice"),//ステッチ箇所変更
	PANTS_STANDARD_OPTION_CODE22("00022","getWp2DStitch","","wp2DStitchPrice","setPt2DblstitchPlcRtPrice"),//ダブルステッチ
	PANTS_STANDARD_OPTION_CODE24("00024","getWp2AmfColor","","wp2AmfColorPrice","setPt2AmfColorRtPrice"),//AMF色指定
	PANTS_STANDARD_OPTION_CODE27("00027","getWp2BhColor","","wp2BhColorPrice","setPt2BtnholeColorRtPrice"),//ボタンホール色指定
	PANTS_STANDARD_OPTION_CODE30("00030","getWp2ByColor","","wp2ByColorPrice","setPt2BtnthreadColorRtPrice"),//ボタン付け糸指定
	PANTS_STANDARD_OPTION_CODE33("00033","getWp2Button","getWp2BtnMateStkNo","wp2BtnMateStkNoPrice","setPt2BtnMaterialRtPrice"),//釦素材
	PANTS_STANDARD_OPTION_CODE35("00035","getWp2SuspenderBtn","","wp2SuspenderBtnPrice","setPt2SuspenderBtnRtPrice"),//サスペンダー釦
	PANTS_STANDARD_OPTION_CODE36("00036","getWp2Eight","","wp2EightPrice","setPt2NonSlipRtPrice"),//エイト（滑り止め）
	PANTS_STANDARD_OPTION_CODE41("00041","getWp2Thick","","wp2ThickPrice","setPt2ChicSlipRtPrice"),//シック（股補強）
	PANTS_STANDARD_OPTION_CODE37("00037","getWp2ShapeMemory","","wp2ShapeMemoryPrice","setPt2ShapeMemoryRtPrice");//形状記憶
	
	private final String key;
	private final String valueOne;
	private final String valueTwo;
	private final String valueThree;
	private final String valueFour;
    
    private Pants2CoOptionWashableUpperPriceEnum(String k ,String v1 , String v2 , String v3 , String v4) {
        this.key = k;
        this.valueOne = v1;
        this.valueTwo = v2;
        this.valueThree = v3;
        this.valueFour = v4;
    }  

	public String toString() {
        return this.key.concat(",").concat(this.valueOne).concat(",").concat(this.valueTwo).concat(",").concat(this.getValueThree());
    }  
  
    public static Pants2CoOptionWashableUpperPriceEnum get(int v) {
        String str = String.valueOf(v);
        return get(str);
    }
  
    public static Pants2CoOptionWashableUpperPriceEnum get(String str) {
        for (Pants2CoOptionWashableUpperPriceEnum e : values()) {
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
