package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMehtodQuiz10 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
			private final Map<String, String> userMap =  new HashMap<>() {
			    {
			        put("id", "marobiana");
			        put("password", "qwerty1234");
			        put("name", "신보람");
			    }
			};

	@Override
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		// response header (filter 적용했기때문에 인코딩(utf-8) 생략)
		response.setContentType("text/html");
		
		//request params
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// 아이디 / 비밀번호 일치 확인 =>출력
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>결과</title></head><body>");
		if(id.equals(userMap.get("id")) == false) {
			out.print("id가 일치하지 않습니다.");
		} else if (password.equals(userMap.get("password")) == false) {
			out.print("password 가 일치하지 않습니다.");
		} else {			
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		
		out.print("</body></html>");
		
	}
}
