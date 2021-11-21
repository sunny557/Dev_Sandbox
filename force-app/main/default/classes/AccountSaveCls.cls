public class AccountSaveCls {

    public PageReference save() {
        return null;
    }

    public Account actobj{get;set;}
    
    public AccountSaveCls () {
        actobj = new Account();
    }
    
    public pagereference saveAccount(){
        insert actobj;
        return new pagereference('/'+actobj.Id);
    }
}