package ais.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ais.dto.KarteKasidasiDto;

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
		// TODO Auto-generated method stub
		KarteKasidasiDto karteKasidasiDto = new KarteKasidasiDto();
		karteKasidasiDto.setName("藤沢秀晃");
		karteKasidasiDto.setKana("フジサワ　ヒデアキ");
		karteKasidasiDto.setId("001");
		karteKasidasiDto.setKaMei("内科");
		karteKasidasiDto.setKarteNo("K00001");
		karteKasidasiDto.setKasidasi("貸出中");
		karteKasidasiDto.setNyuinDate("2017/11/20");
		karteKasidasiDto.setTaiinDate("2017/11/21");
		karteKasidasiDto.setTeisyutu("外来");

		request.setAttribute("dto", karteKasidasiDto);

		request.getRequestDispatcher("kasidasi.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
