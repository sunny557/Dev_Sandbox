public class SaveAccountWithProperties {
    public string accountName{get;set;}
    public string accountType{get;set;}
    public PageReference saveAccount(){
        Account actobj = new Account();
        actobj.Name = accountName;
        actobj.Type = accounttype;
        insert actobj;
        return new PageReference('/'+actobj.Id);
    }
}