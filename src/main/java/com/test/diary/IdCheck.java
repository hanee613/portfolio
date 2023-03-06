package com.test.diary;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/idcheck.do")
public class IdCheck extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 아이디 중복 검사
		DiaryDAO dao = new DiaryDAO();

		int result = dao.checkid(req.getParameter("id"));

		/*
		 * { "use": 1 //값이 숫자일 때는 쌍따옴표 붙여도 안붙여도 상관없음 }
		 */

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");


		PrintWriter writer = resp.getWriter();

		writer.print("{");
		writer.printf("\"use\": %d", result);
		writer.print("}");

		writer.close();

	}

}