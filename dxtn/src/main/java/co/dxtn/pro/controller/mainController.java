package co.dxtn.pro.controller;


import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class mainController {
	
	@Inject
	JavaMailSenderImpl mailSender;
	
	@RequestMapping("about")
	public String about() {
		System.out.println("===== about 입장 =====");
		return "/views/intro/about";
	}
	
	@RequestMapping("vision")
	public String vision() {
		System.out.println("===== vision 입장 =====");
		return "/views/intro/vision";
	}
	
	@RequestMapping("hello")
	public String hello() {
		System.out.println("===== hello 입장 =====");
		return "/views/intro/hello";
	}
	
	@RequestMapping("business")
	public String business() {
		System.out.println("===== business 입장 =====");
		return "/views/service/business";
	}
	
	@RequestMapping("customer")
	public String customer() {
		System.out.println("===== customer 입장 =====");
		return "/views/service/customer";
	}
	
	@RequestMapping("major")
	public String major() {
		System.out.println("===== major 입장 =====");
		return "/views/service/major";
	}
	
	@RequestMapping("talent")
	public String talent() {
		System.out.println("===== talent 입장 =====");
		return "/views/employ/talent";
	}
	
	@RequestMapping("map")
	public String map() {
		System.out.println("===== map 입장 =====");
		return "/views/help/map";
	}
	
	@RequestMapping("inquiry")
	public String inquiry() {
		System.out.println("===== inquiry 입장 =====");
		return "/views/help/inquiry";
	}
	
	@PostMapping("testMail")
	public String testMail(String uName, String uMail, String uMsg) {
		  System.out.println("===== mailTest 입장 =====");
	      System.out.println("test : " + uName);
	      System.out.println("test : " + uMail);	      
	      System.out.println("test : " + uMsg);	      
	      
	      String title = "안녕하세요";
	      
	      String msg = "";
	      msg += "<p style='color: #5a5a5a; font-size: 14px; display: block'> Name";
	      msg += "<input value='" + uName + "' readonly style='width: 200px;\r\n"
	      		+ "	padding: 10px;\r\n"
	      		+ "	margin-left: 40px;\r\n"
	      		+ "	box-sizing: border-box;\r\n"
	      		+ "	background: none;\r\n"
	      		+ "	outline: none;\r\n"
	      		+ "	resize: none;\r\n"
	      		+ "	transition: all .3s;\r\n"
	      		+ "	border: 0;\r\n"
	      		+ "	border-bottom: 2px solid #bebed2'>";
	      msg += "</p>";
	      msg += "<p style='color: #5a5a5a; font-size: 14px; display: block'> Email";
	      msg += "<input value='" + uMail + "' readonly style='width: 200px;\r\n"
		      		+ "	padding: 10px;\r\n"
		      		+ "	margin-left: 42px;\r\n"
		      		+ "	box-sizing: border-box;\r\n"
		      		+ "	background: none;\r\n"
		      		+ "	outline: none;\r\n"
		      		+ "	resize: none;\r\n"
		      		+ "	transition: all .3s;\r\n"
		      		+ "	border: 0;\r\n"
		      		+ "	border-bottom: 2px solid #bebed2'>";
	      msg += "</p>";
	      msg += "<p style='color: #5a5a5a; font-size: 14px; display: block'> Message";
	      msg += "<input value='" + uMsg + "' readonly style='width: 200px;\r\n"
		      		+ "	padding: 10px;\r\n"
		      		+ "	margin-left: 19px;\r\n"
		      		+ "	box-sizing: border-box;\r\n"
		      		+ "	background: none;\r\n"
		      		+ "	outline: none;\r\n"
		      		+ "	resize: none;\r\n"
		      		+ "	transition: all .3s;\r\n"
		      		+ "	border: 0;\r\n"
		      		+ "	border-bottom: 2px solid #bebed2'>";
	      msg += "</p>";
	      
	      String from = "hlee72883@gmail.com";
	      
	      String to = uMail;
	      
	      try {
	        
	         // 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성
	         MimeMessage message = mailSender.createMimeMessage();
	         MimeMessageHelper mailHelper = new MimeMessageHelper(message, true, "UTF-8");
	        
	         // 메일 내용 채우기
	         mailHelper.setFrom(from); // 보내는 사람 셋팅
	         mailHelper.setTo(to); // 받는 사람 셋팅
	         mailHelper.setSubject(title); // 제목 셋팅
	         mailHelper.setText(msg, true); // 내용 셋팅
	         // 메일 전송
	         mailSender.send(message);
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return "views/index";
	}
	
}



