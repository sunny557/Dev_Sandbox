public class ShowRelatedContacts {
    public List<Contact> contactList{get;set;}
    public List<SelectOption> accountNames{get;set;}
    public string selectedAccount{get;set;}
    public ShowRelatedContacts(){
       contactList = new List<Contact>();
       accountNames = new List<SelectOption>(); 
       accountNames.add(new SelectOption('', '--None--') );
        for(Account actobj:[select id,name from Account limit 20]){
            accountNames.add(new SelectOption(actobj.Id, actobj.Name));
        }
    }
    public pagereference retrieveContacts(){
        if(selectedAccount!=''){
            contactList = [select id,name,email from contact where accountId =: selectedAccount];
        }
        return Null;
    }
}