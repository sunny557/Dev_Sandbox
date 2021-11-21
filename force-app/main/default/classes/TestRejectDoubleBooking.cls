@isTest
public class TestRejectDoubleBooking {
	
    //Good Scenario
    static testMethod void TestSingleBooking() { 
    
    Datetime now = system.now();
    
    Speaker__c speaker= new Speaker__c(FirstName__c='Tin Tin', LastName__c='Silly');
    insert speaker;
    
    Session__c session = new Session__c(Name='Analytics Session', Session_Date__c=now);
    insert session;
    
    Session_Speaker__c assignment = 
        new Session_Speaker__c(Session__c=session.Id, Speaker__c=speaker.Id);
    Test.startTest();
    Database.SaveResult result = Database.insert(assignment, false);
    Test.stopTest();
    
    system.assert(result.isSuccess());
    
    }
    
    static testMethod void TestDoubleBooking() { 
    
    Datetime now = system.now();
    
    Speaker__c speaker= new Speaker__c(FirstName__c='Tin Tin', LastName__c='Silly');
    insert speaker;
    
    Session__c session1 = new Session__c(Name='Eienstien Analytics Intermediate', Session_Date__c=now);
    insert session1;
    Session__c session2 = new Session__c(Name='Machine Learning', Session_Date__c=now);
    insert session2;
     
    Session_Speaker__c assignment1 = 
        new Session_Speaker__c(Session__c=session1.Id, Speaker__c=speaker.Id);    
        insert  assignment1;
     
        
        Session_Speaker__c assignment2 = 
        new Session_Speaker__c(Session__c=session2.Id, Speaker__c=speaker.Id);    
        insert  assignment2;
        
    Test.startTest();
    Database.SaveResult result = Database.insert(assignment2, false);
    Test.stopTest();
    
    System.assert(!result .isSuccess());
    
    }
        
}