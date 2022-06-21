package com.care.hotel.member.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired JavaMailSender mailSender;
	
	public void sendMail(String to, String subject, String content) {
		MimeMessage message = mailSender.createMimeMessage();

		try {
			String content1 = "회원님의 인증번호는 " + content +" 입니다.";
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setSubject(subject); // 이메일의 제목
			messageHelper.setText(content1);// 이메일의 본문
			messageHelper.setTo(to); // 수신자
			
			mailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
}
