public class Accountcls {
    public Account actobj{get;set;}
    public Accountcls(){
        actobj = new Account();
    }
    public pagereference saveAccount(){
        insert actobj;
        return new pagereference('/'+actobj.Id);
    }

}