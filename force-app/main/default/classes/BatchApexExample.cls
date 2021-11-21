global  class BatchApexExample implements Database.Batchable<sObject> {
    
    global  Database.QueryLocator start(Database.BatchableContext  BC)
    {
            String query = 'select id,name from Account';
            return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext  BC, List<Account> acclist)
    {
        for(Account acc: acclist)
        {
            acc.Name = acc.Name + 'MYTUTORIALRACK';
        }
        try {
            update acclist;
        } catch (Exception e) {
            system.debug(e);
        }
    }
    global void finish(Database.BatchableContext BC)
    {

     }
}