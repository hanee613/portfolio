package com.test.diary;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/joinok.do")
public class JoinOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String day = req.getParameter("day");
		String telfir = req.getParameter("telfir");
		String telsec = req.getParameter("telsec");
		String telthi = req.getParameter("telthi");
		String email = req.getParameter("email");
		String intro = req.getParameter("intro");
		String img = req.getParameter("img");
		
		String birth = year.substring(2) + month + day;
		String tel = telfir + "-" + telsec + "-" + telthi;
		
		MemberDTO dto = new MemberDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setBirth(birth);
		dto.setEmail(email);
		dto.setTel(tel);
		dto.setIntro(intro);
		dto.setImg(img);
		
		DiaryDAO dao = new DiaryDAO();
		
		int result = dao.joinMember(dto);
		
	    
	    
		MemberDTO list = dao.joinShow(id);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		
		
	    
	    
	    RequestDispatcher dispatcher = req.getRequestDispatcher("joinok.jsp");
		dispatcher.forward(req, resp);

		

	}

}