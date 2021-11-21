public  with Sharing class opportunityController
{
	@AuraEnabled
    public static List<opportunity> getopportunities(){
        list<opportunity> opportunities =[select id,name from opportunity];
        return opportunities;
            
    }
}