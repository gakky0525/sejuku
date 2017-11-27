package ais.dto;

/**
 * カルテ貸出状況を管理するクラス
 * @author fhideaki
 *
 */
public class KarteKasidasiDto {
	// 氏名
	private String name;
	// フリガナ
	private String kana;
	// ID
	private String id;
	// カルテ番号
	private String karteNo;
	// 診療科
	private String kaMei;
	// 入院日
	private String nyuinDate;
	// 退院日
	private String taiinDate;
	// 提出先
	private String teisyutu;
	// 貸出状況
	private String kasidasi;



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKana() {
		return kana;
	}
	public void setKana(String kana) {
		this.kana = kana;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getKarteNo() {
		return karteNo;
	}
	public void setKarteNo(String karteNo) {
		this.karteNo = karteNo;
	}
	public String getKaMei() {
		return kaMei;
	}
	public void setKaMei(String kaMei) {
		this.kaMei = kaMei;
	}
	public String getNyuinDate() {
		return nyuinDate;
	}
	public void setNyuinDate(String nyuinDate) {
		this.nyuinDate = nyuinDate;
	}
	public String getTaiinDate() {
		return taiinDate;
	}
	public void setTaiinDate(String taiinDate) {
		this.taiinDate = taiinDate;
	}
	public String getTeisyutu() {
		return teisyutu;
	}
	public void setTeisyutu(String teisyutu) {
		this.teisyutu = teisyutu;
	}
	public String getKasidasi() {
		return kasidasi;
	}
	public void setKasidasi(String kasidasi) {
		this.kasidasi = kasidasi;
	}
}
