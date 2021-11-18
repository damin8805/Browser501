package time;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//servlet: java처럼 생겼는데 실행시키면 웹으로 감, 콘솔창x
//	 ㄴ web에서 수행되고 있는 또다른 JAVA다. 
//	   ㄴ MVC model 1: client의 요청을 받아서(http://localhost/time) 서버에서 처리한 후 client에 html 문서 형식으로 브라우저에 전달.
//	   ㄴ MVC model 2: client의 요청을 받아서 서버에서 처리한 후 결과를 jsp에 전달해서 브라우저에서 실행

@WebServlet("/time")
public class Time_Servlet extends HttpServlet { //sevlet상속받음, 없으면 순수한 java임
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		response.setCharacterEncoding("utf-8");
		Calendar c = Calendar.getInstance(); //싱글톤=>이거실행하면 캘린더클래스의 메소드 다 쓸수있음
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute = c.get(Calendar.MINUTE);//static변수,고정상수
		int second = c.get(Calendar.SECOND);
		System.out.println("서버의 시간 콘솔 출력 - " + hour + ":" + minute + ":" + second);
		PrintWriter pw = response.getWriter();
		pw.println("<html><body><br><br>");
		pw.println("web 출력: " + hour + ":" + minute + ":" + second + "<br>");
		pw.println("</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 doGet(request, response);
	}

}
