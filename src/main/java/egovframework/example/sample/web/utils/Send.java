package egovframework.example.sample.web.utils;

import java.text.DecimalFormat;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class Send {	
	
	static Properties getProperties(){
	    Properties properties = new Properties();
	    properties.put("mail.smtp.user", "admin@troymarketworld.com"); // 프로톤 메일 계정
	    properties.put("mail.smtp.host", "smtp.protonmail.ch");
	    properties.put("mail.smtp.port", "587");
	    properties.put("mail.smtp.starttls.enable", "true");
	    properties.put("mail.smtp.auth", "true");
	    properties.put("mail.smtp.debug", "true");
	    properties.put("mail.smtp.starttls.required", "true");
	    properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
	    return properties;
	}
	
	public static class senderAccount extends javax.mail.Authenticator
	{
		public PasswordAuthentication getPasswordAuthentication()
		{
			// @gmail.com 제외한 계정 ID, PASS
			return new PasswordAuthentication("admin@troymarketworld.com", "CRHP8777H156HR3P"); // @gmail.com. 제외																// PASS
		}
	}
	
	public static boolean sendMailText(String email, String title, String context){
		Properties properties = getProperties();
		try{
			Log.print("sendMailText "+email+" "+context, "sendcheck");
			Authenticator auth = new senderAccount();
			Session session = Session.getInstance(properties, auth);
			session.setDebug(true); // 메일을 전송할 때 상세한 상황을 콘솔에 출력한다.
			MimeMessage msg = new MimeMessage(session);
			msg.setSubject(title);
			Address fromAddr = new InternetAddress("admin@troymarketworld.com"); // 보내는사람
			msg.setFrom(fromAddr);
			Address toAddr = new InternetAddress(email); // 받는사람 EMAIL
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			String mailcontent = context;
			msg.setContent(mailcontent, "text/html;charset=utf-8"); // 메일 전송될
			try {
				Transport.send(msg);
				Log.print("sendMailText success",  "sendcheck");
				return true;
			} catch (Exception e) {
				Log.print("sendMailText Transport Err" + e.getMessage(),  "sendcheck");
				return false;
			}
		}catch (Exception e){
			e.printStackTrace();
			Log.print("sendMailText Err : " + e.getMessage(), "err");
			return false;
		}
	}		

}
