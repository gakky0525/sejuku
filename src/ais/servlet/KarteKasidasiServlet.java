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
		List<KarteKasidasiDto> dataList = CsvUtil.importKasidasiCSV("/Users/fhideaki/work/dev/workspace_samrai/ais/data/kasidasi.csv");
		List<KarteKasidasiDto> viewList = new ArrayList<KarteKasidasiDto>();

		String userId = request.getParameter("userId");

		for(KarteKasidasiDto dto : dataList) {
			if(dto.getId().equals(userId)) {
				viewList.add(dto);
			}
		}

		request.setAttribute("dataList", viewList);

		request.getRequestDispatcher("kasidasi.jsp").forward(request, response);
	}

}
