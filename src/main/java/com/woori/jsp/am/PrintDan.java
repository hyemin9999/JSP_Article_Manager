package com.woori.jsp.am;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/printDan")
public class PrintDan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());

//		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8;");

		String inputDan = request.getParameter("dan");
		String inputLimit = request.getParameter("limit");
		String inputColor = request.getParameter("color");

		if (inputDan == null) {
			inputDan = "1";
		}

		if (inputLimit == null) {
			inputLimit = "9";
		}

		if (inputColor == null) {
			inputColor = "inherit";
		}

		int dan = Integer.parseInt(inputDan);
		int limit = Integer.parseInt(inputLimit);

		response.getWriter().append(String.format("<style>* {color:%s;}</style>", inputColor));
		response.getWriter().append(String.format("=== %d 단 ===<br>", dan));
		response.getWriter().append(String.format("<div style=\"color:%s;\">=== %d 단 ===</div>", inputColor, dan));

		for (int i = 1; i <= limit; i++) {
			response.getWriter().append(String.format("%d * %d = %d<br>", dan, i, dan * i));
		}

	}

}
