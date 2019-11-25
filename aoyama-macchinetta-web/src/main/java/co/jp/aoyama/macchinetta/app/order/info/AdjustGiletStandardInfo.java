package co.jp.aoyama.macchinetta.app.order.info;

import java.io.Serializable;
import java.util.Map;

public class AdjustGiletStandardInfo implements Serializable {
	private static final long serialVersionUID = -4015395935551145245L;
	// 号数
	private Map<String, String> sizeNumberMap;

	private String sizeNumber;
	// 体型
	private Map<String, String> sizeFigureMap;

	private String sizeFigure;

	// 着丈修正
	private Map<String, String> corGlBodyMap;
	// 着丈型サイズ
	private String corGlBodySize;
	// 着丈補正値
	private String corGlBodyCorrect;
	// 着丈グロス
	private String corGlBodyGross;

	// バスト修正
	private Map<String, String> corGlBustMap;
	// バストサイズ
	private String corGlBustSize;
	// バスト補正値
	private String corGlBustCorrect;
	// バストグロス
	private String corGlBustGross;
	
	// ウエスト修正
	private Map<String, String> corGlWaistMap;
	// ウエスト型サイズ
	private String corGlWaistSize;
	// ウエスト補正値
	private String corGlWaistCorrect;
	// ウエストグロス
	private String corGlWaistGross;

	//再補正コメント
	private String corGlStoreCorrectionMemo;

	// GILET_着丈_再補正値
	private String corGlBodylengthCorrectAgain;
	
	// GILET_着丈_再補正値フラッグ
	private String corGlBodylengthCorrectAgainFlag;

	// GILET_バスト_再補正値
	private String corGlBustCorrectAgain;
	
	// GILET_バスト_再補正値フラッグ
	private String corGlBustCorrectAgainFlag;
	
	// GILET_ウエスト_再補正値
	private String corGlWaistCorrectAgain;
	
	// GILET_ウエスト_再補正値フラッグ
	private String corGlWaistCorrectAgainFlag;

	public Map<String, String> getSizeNumberMap() {
		return sizeNumberMap;
	}

	public void setSizeNumberMap(Map<String, String> sizeNumberMap) {
		this.sizeNumberMap = sizeNumberMap;
	}

	public String getSizeNumber() {
		return sizeNumber;
	}

	public void setSizeNumber(String sizeNumber) {
		this.sizeNumber = sizeNumber;
	}

	public Map<String, String> getSizeFigureMap() {
		return sizeFigureMap;
	}

	public void setSizeFigureMap(Map<String, String> sizeFigureMap) {
		this.sizeFigureMap = sizeFigureMap;
	}

	public String getSizeFigure() {
		return sizeFigure;
	}

	public void setSizeFigure(String sizeFigure) {
		this.sizeFigure = sizeFigure;
	}

	public String getCorGlBodylengthCorrectAgain() {
		return corGlBodylengthCorrectAgain;
	}

	public void setCorGlBodylengthCorrectAgain(String corGlBodylengthCorrectAgain) {
		this.corGlBodylengthCorrectAgain = corGlBodylengthCorrectAgain;
	}

	public String getCorGlBustCorrectAgain() {
		return corGlBustCorrectAgain;
	}

	public void setCorGlBustCorrectAgain(String corGlBustCorrectAgain) {
		this.corGlBustCorrectAgain = corGlBustCorrectAgain;
	}

	public Map<String, String> getCorGlBodyMap() {
		return corGlBodyMap;
	}

	public void setCorGlBodyMap(Map<String, String> corGlBodyMap) {
		this.corGlBodyMap = corGlBodyMap;
	}

	public String getCorGlBodySize() {
		return corGlBodySize;
	}

	public void setCorGlBodySize(String corGlBodySize) {
		this.corGlBodySize = corGlBodySize;
	}

	public String getCorGlBodyCorrect() {
		return corGlBodyCorrect;
	}

	public void setCorGlBodyCorrect(String corGlBodyCorrect) {
		this.corGlBodyCorrect = corGlBodyCorrect;
	}

	public String getCorGlBodyGross() {
		return corGlBodyGross;
	}

	public void setCorGlBodyGross(String corGlBodyGross) {
		this.corGlBodyGross = corGlBodyGross;
	}

	public Map<String, String> getCorGlBustMap() {
		return corGlBustMap;
	}

	public void setCorGlBustMap(Map<String, String> corGlBustMap) {
		this.corGlBustMap = corGlBustMap;
	}

	public String getCorGlBustSize() {
		return corGlBustSize;
	}

	public void setCorGlBustSize(String corGlBustSize) {
		this.corGlBustSize = corGlBustSize;
	}

	public String getCorGlBustCorrect() {
		return corGlBustCorrect;
	}

	public void setCorGlBustCorrect(String corGlBustCorrect) {
		this.corGlBustCorrect = corGlBustCorrect;
	}

	public String getCorGlBustGross() {
		return corGlBustGross;
	}

	public void setCorGlBustGross(String corGlBustGross) {
		this.corGlBustGross = corGlBustGross;
	}

	public Map<String, String> getCorGlWaistMap() {
		return corGlWaistMap;
	}

	public void setCorGlWaistMap(Map<String, String> corGlWaistMap) {
		this.corGlWaistMap = corGlWaistMap;
	}

	public String getCorGlWaistSize() {
		return corGlWaistSize;
	}

	public void setCorGlWaistSize(String corGlWaistSize) {
		this.corGlWaistSize = corGlWaistSize;
	}

	public String getCorGlWaistCorrect() {
		return corGlWaistCorrect;
	}

	public void setCorGlWaistCorrect(String corGlWaistCorrect) {
		this.corGlWaistCorrect = corGlWaistCorrect;
	}

	public String getCorGlWaistGross() {
		return corGlWaistGross;
	}

	public void setCorGlWaistGross(String corGlWaistGross) {
		this.corGlWaistGross = corGlWaistGross;
	}

	public String getCorGlStoreCorrectionMemo() {
		return corGlStoreCorrectionMemo;
	}

	public void setCorGlStoreCorrectionMemo(String corGlStoreCorrectionMemo) {
		this.corGlStoreCorrectionMemo = corGlStoreCorrectionMemo;
	}

	public String getCorGlWaistCorrectAgain() {
		return corGlWaistCorrectAgain;
	}

	public void setCorGlWaistCorrectAgain(String corGlWaistCorrectAgain) {
		this.corGlWaistCorrectAgain = corGlWaistCorrectAgain;
	}

	public String getCorGlBodylengthCorrectAgainFlag() {
		return corGlBodylengthCorrectAgainFlag;
	}

	public void setCorGlBodylengthCorrectAgainFlag(String corGlBodylengthCorrectAgainFlag) {
		this.corGlBodylengthCorrectAgainFlag = corGlBodylengthCorrectAgainFlag;
	}

	public String getCorGlBustCorrectAgainFlag() {
		return corGlBustCorrectAgainFlag;
	}

	public void setCorGlBustCorrectAgainFlag(String corGlBustCorrectAgainFlag) {
		this.corGlBustCorrectAgainFlag = corGlBustCorrectAgainFlag;
	}

	public String getCorGlWaistCorrectAgainFlag() {
		return corGlWaistCorrectAgainFlag;
	}

	public void setCorGlWaistCorrectAgainFlag(String corGlWaistCorrectAgainFlag) {
		this.corGlWaistCorrectAgainFlag = corGlWaistCorrectAgainFlag;
	}
	
}
