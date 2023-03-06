package com.test.diary;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/diary_add.do")
public class Diary_Add extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
req.setCharacterEncoding("UTF-8");
		
		//2. 
		String path = req.getRealPath("/pic");

		
		int size = 1024 * 1204 * 10;
		
		String id = "hanee";
		
		
		int result = 0;
		
		try {
			MultipartRequest multi = new MultipartRequest(
					req,
					path,
					size,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			
			String new_title = multi.getParameter("new_title");
			String new_diary = multi.getParameter("new_diary");
			String new_img = multi.getFilesystemName("imgfile");
			
			System.out.println(new_img);
			
			DiaryDAO dao = new DiaryDAO();
			
			result = dao.addDiary(new_title, new_diary, id, new_img);
			
			if(result == 1) {
				resp.sendRedirect("/diary/diary.jsp");
			}else {
				PrintWriter writer = resp.getWriter();
				writer.print("<script>");
				writer.print("alert('failed')");
				writer.print("history.back();");
				writer.print("</script>");
				writer.close();
			}

		} catch (Exception e) {
			System.out.println("doGet");
			e.printStackTrace();
		}
			
		
		
	}

}