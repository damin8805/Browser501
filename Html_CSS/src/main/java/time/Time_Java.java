package time;

import java.util.Calendar;
//순수한 자바는 서버에서 실행
public class Time_Java {
	
	public static void main(String[] args) {
		Calendar c = Calendar.getInstance(); //싱글톤=>이거실행하면 캘린더클래스의 메소드 다 쓸수있음
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute = c.get(Calendar.MINUTE);//static변수,고정상수
		int second = c.get(Calendar.SECOND);
		System.out.println("서버의 시간 - "+hour+":"+minute+":"+second);
		
		
	}
}
