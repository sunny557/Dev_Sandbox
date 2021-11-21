public class AccountRecordsCls {
    public List<Account> accountList{get;set;}
    public AccountRecordsCls(ApexPages.StandardController stdController){
        accountList = new List<Account>();
        accountList = [select id,name,type,rating from Account limit 14];
    }    
}