public with sharing class ContactController 
{
    //Below Code will check the available contacts and return them
	@AuraEnabled
    public static List<Contact> findAll()
    {
        return [Select id,name,phone from Contact LIMIT 50];
    }
   //Below code explains about the filter search  
    @AuraEnabled
    public static List<Contact> findByName(String searchKey){
        String name='%'+searchKey+'%';
        return [select id,name,phone from contact where name Like:name Limit 50];
    }
    //Searhcing ID By Name
    @AuraEnabled

    public static Contact findById(String contactId) {

        return [SELECT id, name, title, phone, mobilephone, Account.Name FROM Contact WHERE Id = :contactId];
    }
    
}