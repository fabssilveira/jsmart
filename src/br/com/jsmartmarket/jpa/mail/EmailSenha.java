package br.com.jsmartmarket.jpa.mail;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.jsmartmarket.jpa.model.Cliente;

public class EmailSenha {

	public void enviaEmailNovaSenha(Cliente cliente, String senha) throws EmailException {
		
		SimpleEmail email = new SimpleEmail();
		email.setHostName("smtp.gmail.com"); // o servidor SMTP para envio do e‐mail
		email.addTo(cliente.getEmail()); //destinatário
		email.setFrom("contato@gygatech.com.br"); // remetente
		email.setSubject("JSmart Market - Recuperação de Senha"); // assunto do e‐mail
		
		StringBuilder sb1 = new StringBuilder();
		sb1.append("Obrigado por utilizar o JSmart Market.");
		sb1.append("\n");
		sb1.append("\n");
		sb1.append("A sua nova senha temporária é: "+senha);
		sb1.append("\n");
		sb1.append("\n");
		sb1.append("Por segurança, após o login no site vá até a página de alteração cadastral e realize uma alteração da senha.");
		sb1.append("\n");
		sb1.append("\n");
		sb1.append("Este email é gerado automaticamente pelo sistema JSmart Market. Por favor não responda esse email.");
				
		email.setMsg(sb1.toString()); //conteudo do e‐mail
		email.setAuthenticator(new DefaultAuthenticator("contato@gygatech.com.br", "6510330022"));
		email.setSmtpPort(587);
		email.setStartTLSEnabled(true);
		email.send();
	}
	
}
