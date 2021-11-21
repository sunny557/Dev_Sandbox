trigger RejectDoubleBooking on Session_Speaker__c (before insert, before update) 
{
    for (Session_Speaker__c sessionSpeaker : trigger.new){
        //Reterieve session information including session date and time
        session__c session  = [SELECT Id, Session_Date__c FROM Session__c
                      WHERE Id=:sessionSpeaker.Session__c];
        
        //Reterieve conflicts: other addignments for thst speaker at the same time
        List<Session_Speaker__c> conflicts = [SELECT Id From Session_Speaker__c
                                             WHERE Speaker__c = :sessionSpeaker.Speaker__c
                                             And Session__r.Session_Date__c = :session.Session_Date__c];
        
        //If Conflicts exist and error(reject the database operations)
        if(!conflicts.isEmpty()){
            sessionSpeaker.addError('The Speaker is already booked at that time');
        }
        
    }	
}