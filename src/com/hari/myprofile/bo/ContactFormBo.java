package com.hari.myprofile.bo;

import java.io.StringWriter;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;

import com.hari.myprofile.helperClasses.VelocityEngineInitializer;
import com.hari.myprofile.vo.ContactFormVO;
import com.hari.myprofile.vo.MailElementsVO;

public class ContactFormBo {

	private static final String TO = "harakumar.smile@gmail.com";
	private static final String FROM = "hariharakumar88@gmail.com";

	public void sendMail(ContactFormVO conFormVo) throws MessagingException {

		// Get the session object
		Properties props = new Properties();

		Session session = Session.getDefaultInstance(props, null);

		// compose message
		StringBuffer mailSubject = new StringBuffer();
		StringBuffer mailBody = new StringBuffer();
		StringBuffer constructedBody = new StringBuffer();
		// Subject
		mailSubject.append("Message From ").append(conFormVo.getUserName());
		MailElementsVO mailVo = new MailElementsVO();
		mailVo.setSubject(mailSubject.toString());
		// Body
		mailVo.setBodyStart("Hello, \n\n");
		mailBody.append("Email Id: ").append(conFormVo.getEmail()).append("\n");
		mailBody.append("Phone Number: ").append(conFormVo.getPhone()).append("\n");
		mailBody.append("Message: ").append(conFormVo.getMessage()).append("\n\n");
		mailVo.setBodyString(mailBody.toString());
		mailVo.setBodyEnd("h4haritummala.appspot.com");
		constructedBody.append(mailVo.getBodyStart()).append(mailVo.getBodyString()).append(mailVo.getBodyEnd());
		mailVo.setConstructedBody(constructedBody.toString());
		MimeMessage message = new MimeMessage(session);
		setMessage(message, conFormVo, TO, mailVo);
		// send message

		Transport.send(message);

		sendMailtoSender(conFormVo, session);
	}

	private void sendMailtoSender(ContactFormVO conFormVo, Session session) throws MessagingException {
		StringBuffer mailSubject = new StringBuffer();
		MailElementsVO mailVo = new MailElementsVO();
		mailSubject.append("Thanks for your message ").append(conFormVo.getUserName()).append("! \n");
		mailVo.setSubject(mailSubject.toString());
		VelocityEngine ve = VelocityEngineInitializer.getVelocityEngine();
		/* create a context and add data */
		VelocityContext context = new VelocityContext();
		context.put("name", conFormVo.getUserName());
		/* now render the template into a StringWriter */
		Template t = new Template();
		t = getTemplate("emailTemplate.vm", ve);
		StringWriter writer = new StringWriter();
		t.merge(context, writer);
		/* show the mail */
		mailVo.setConstructedBody(writer.toString());
		MimeMessage message = new MimeMessage(session);
		setMessage(message, conFormVo, conFormVo.getEmail(), mailVo);
		Transport.send(message);
	}

	public static Template getTemplate(String template, VelocityEngine engine) {
		try {
			return engine.getTemplate(template);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	private void setMessage(MimeMessage message, ContactFormVO conFormVo, String to, MailElementsVO mailVo)
			throws MessagingException {
		message.setFrom(new InternetAddress(FROM));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		message.setSubject(mailVo.getSubject());
		if (mailVo.getConstructedBody().contains("html")) {
			message.setContent(mailVo.getConstructedBody(), "text/html"); 
		} else {
			message.setText(mailVo.getConstructedBody());
		}
		
	}

}