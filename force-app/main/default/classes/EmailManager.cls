public class EmailManager 
{
	public static void sendMail(string address, String subject, String body)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
           	mail.setToAddresses(toAddresses);
        	mail.setSubject(subject);
        	mail.setPlainTextBody(body);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
        	
    }
}


/*
string address = 'suneeth0557@gmail.com';
string subject = 'Speaker Confirmation for the session';
String body = 'Thank you for speaking at the conference';
EmailManager.sendMail(address, subject, body);
*/