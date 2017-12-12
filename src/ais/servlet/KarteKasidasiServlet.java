package ais.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ais.dto.KarteKasidasiDto;
import ais.util.CsvUtil;

/**
 * Servlet implementation class KarteKasidasiServlet
 */
@WebServlet("/kasidasi")
public class KarteKasidasiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public KarteKasidasiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<KarteKasidasiDto> dataList = CsvUtil.importKasidasiCSV("C:\\Users\\yuki\\Desktop\\Java関係\\pleiades\\workspace\\ais2\\data\\kasidasi.csv");

		request.setAttribute("dataList", dataList);

		request.getRequestDispatcher("kasidasi.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		List<KarteKasidasiDto> dataList = CsvUtil.importKasidasiCSV("C:\\Users\\yuki\\Desktop\\Java関係\\pleiades\\workspace\\ais2\\data\\kasidasi.csv");
		List<KarteKasidasiDto> viewList = new ArrayList<KarteKasidasiDto>();

		String userId = request.getParameter("userId");
		String karteNo = request.getParameter("karteNo");
		String kana = request.getParameter("kana");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");

		for(KarteKasidasiDto dto : dataList) {
			if(!userId.equals("") && dto.getId().startsWith(userId)) {		//IDが入力されていて、csvのuserIdに前方一致すれば値を返す。
				viewList.add(dto);
			}else if (!karteNo.equals("") && dto.getKarteNo().startsWith(karteNo)) {
				viewList.add(dto);
			}else if (!kana.equals("") && dto.getKana().startsWith(kana)) {
				viewList.add(dto);
			}else if (!name.equals("") && dto.getName().startsWith(name)) {
				viewList.add(dto);
			}else if (!birth.equals("") && dto.getBirth().startsWith(birth)) {
				viewList.add(dto);
			}else if (!age.equals("") && dto.getAge().startsWith(age)) {
				viewList.add(dto);
			}else if (!gender.equals("") && dto.getGender().startsWith(gender)) {
				viewList.add(dto);
			}

		}




		request.setAttribute("dataList", viewList);

		request.getRequestDispatcher("kasidasi.jsp").forward(request, response);
	}

}
