//Class explains you about the number of contacts associated with Account(Kinda Rollup Summary)

public class AccountProcessor {
    @future
    public static void CountContacts(List<Id> accountIds)
    {
        List<Account> AccountList = new List<Account>();
        for(Id accId:accountIds)
        {
            //query The Accountrecored based on Id
            //quqery to find thetotal number of contacts assocaiated with accountId
            //Set it on the new Field
            //Add the Updated account to the account List
           Account acc = [select name from Account where id=: accId];
            acc.NumberOfContacts__c = [select count() from contact where accountId=: accId];
            AccountList.Add(acc);
        }
        update AccountList;
    }
     
    public AccountProcessor() {
        List<Account >  accList = [select id from account];
        List<Id> accountIds = new List<Id>();
        for(Account acc:accList)
        {
            accountIds.add(acc.id);
        }
        AccountProcessor.CountContacts(accountIds);
    }
}