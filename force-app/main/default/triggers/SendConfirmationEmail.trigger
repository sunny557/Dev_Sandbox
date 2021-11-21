trigger SendConfirmationEmail on Session_Speaker__c (after insert) {
	for(Session_Speaker__c newItem : trigger.new)
    {
        //Retreive SEssion name And Time + Speaker name and email Address
        Session_Speaker__c sessionSpeaker = 
            [SELECT Session__r.Name,
            		Session__r.Session_Date__c,
            		Speaker__r.FirstName__c,
            		Speaker__r.LastName__c,
            		Speaker__r.Email__c
            FROM Session_Speaker__c WHERE Id=:newItem.ID];
        
        //Send Confirmation email if we knowthe spekaer email address
        if(sessionSpeaker.Speaker__r.Email__c!= null){
            String address = sessionSpeaker.Speaker__r.Email__c;
            String subject= 'Speaker Confirmation';
            String message = 'Dear '+ sessionSpeaker.Speaker__r.FirstName__c + '\n your session"' + sessionSpeaker.Session__r.Name + '" on '+
                sessionSpeaker.Session__r.Session_Date__c+ 'is Confirmaed.\n\n' +
                'Thans for speaking at the conference!';
            EmailManager.sendMail(address, subject, message);
        }
    }
}