global class AccountBatchApex implements Database.Batchable<sObject> , Database.Stateful
{
    global Integer numberOfdirectCustmoers=0;
    global  Database.QueryLocator start(Database.BatchableContext  BC)
    {
            String query = 'select id,name, AccountNumber,Type from Account';
            return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext  BC, List<Account> acclist)
    {
        for(Account acc: acclist)
        {
            if(acc.Type.equals('Customer - Direct'))
            {
                numberOfdirectCustmoers++;
            }
        }
    }  
    global void finish(Database.BatchableContext BC)
    {
        system.debug('Account with type Customer-direct' + numberOfdirectCustmoers);
     }
}