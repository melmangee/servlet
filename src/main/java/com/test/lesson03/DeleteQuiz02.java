package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz03_delete")
public class DeleteQuiz02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request header 생략
		// request param
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query
		String deleteQuery = "delete from `bookmark` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB연결 해제
		ms.disconnect();
		
		// 목록화면 이동 redirect
		response.sendRedirect("/lesson03/quiz02_1.jsp");
	}
}