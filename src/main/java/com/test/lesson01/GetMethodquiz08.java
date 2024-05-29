package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodquiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
			
		// response header set (한글 깨짐 방지)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//request parms
		String keyword = request.getParameter("keyword");
		
		//list 정의
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		// 탐색 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>결과</title></head><body>");
		Iterator<String> iter = list.iterator();
			while(iter.hasNext()) {
				String line = iter.next();

//				//1)
//				if(line.contains(keyword)) {
//				line = line.replace(keyword,"<b>"+ keyword + "</b>");
//				out.print(line + "<br>");
//			}
			
				//2)
				if(line.contains(keyword)) {
				String[] words = line.split(keyword); // 0 앞문장 1 뒷문장	split keyword 기준으로 자른다.
				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
				
			//  3) line.indexOf(keyword); // keyword가 있을시 index를 반환 없을시 -1
			
			}			
							
		}
			
		out.print("</body></html>");
	}

}