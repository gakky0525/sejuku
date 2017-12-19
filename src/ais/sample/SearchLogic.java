package ais.sample;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import ais.dto.KarteKasidasiDto;
import ais.util.CsvUtil;

/**
 * 検索処理のサンプルクラス
 * @author fhideaki
 *
 */
public class SearchLogic {

	public static void main(String[] args) {
		SearchLogic logic = new SearchLogic();
		logic.searchBetweenTaiinDate(args[0], args[1]);
	}

	/**
	 * 入力された開始日～終了日に退院日が該当する場合にコンソールにメッセージを表示します。
	 * @param inputStartDate 開始日
	 * @param inputEndDate 終了日
	 */
	private void searchBetweenTaiinDate(String inputStartDate, String inputEndDate) {

		// CSVからデータを読み込む
		List<KarteKasidasiDto> dataList =
			CsvUtil.importKasidasiCSV("F:\\work\\dev\\workspaces\\samurai_samples\\gakky\\data\\kasidasi.csv");

		// ①Javaの日付オブジェクトを作成する準備
		// SimpleDateFormatクラスは文字列を日付オブジェクトに変換することができます
		// 使い方：コンストラクタで　どのような文字列を変換するのか？　を設定します
		// 次にparseメソッドを使って文字列を日付オブジェクトに変換します
		// コンストラクタで設定した形式以外の文字列が渡されるとParseExceptionが発生してエラーになります
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd"); // y=年　M=月　d=日　を表す　つまり左記だと1979/01/19のような入力を想定している

		Date startDate = null;
		Date endDate = null;

		try {
			// ②入力された開始日と終了日（文字列）をJavaの日付オブジェクトに変換する
			startDate = sdf.parse(inputStartDate);
			endDate = sdf.parse(inputEndDate);
		} catch(ParseException e) {
			e.printStackTrace();
			return ;
		}

		// ③検索する
		for(KarteKasidasiDto data : dataList) {

			Date taiinDate = null;

			try {
				// CSVの退院日（文字列）をJavaの日付オブジェクトに変換する
				taiinDate = sdf.parse(data.getTaiinDate());
			} catch(ParseException e) {
				e.printStackTrace();
			}

			// 退院日が開始日～終了日に収まっているのか？をjava.util.DateクラスのcompareToメソッドでチェック
			if(taiinDate.compareTo(startDate) >= 0
				&& taiinDate.compareTo(endDate) <= 0) {

				System.out.println(data.getName() + "さんのカルテは未作成です！");
			}
		}
	}
}