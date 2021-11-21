public class wrapperExample {
    public List<AccountWrapper> accountWrapperList{get;set;}
    
    public List<AccountWrapper> selectedWrapperList{get;set;}
    
    public WrapperExample (){
        accountWrapperList = new List<AccountWrapper>();
        selectedWrapperList = new List<AccountWrapper>();
        AccountWrapper wrapobj1 = new AccountWrapper();
        wrapobj1.accountName = 'Test Corp';
        wrapobj1.accountType = 'Other';
        wrapobj1.isChecked = false;
        accountWrapperList.add(wrapobj1);
        AccountWrapper wrapobj2 = new AccountWrapper();
        wrapobj2.accountName = 'POC Corp';
        wrapobj2.accountType = 'Prospect';
        wrapobj2.isChecked = false;
        accountWrapperList.add(wrapobj2);
        for(Account actobj:[select id,name,type from Account Limit 5]){
            AccountWrapper wrapperobj = new AccountWrapper();
            wrapperobj.accountName = actobj.Name;
            wrapperobj.accountType = actobj.Type;
            wrapperobj.isChecked = false;
            accountWrapperList.add(wrapperobj);
            
        }
    }
    
    public void displaySelectedRecords(){
        selectedWrapperList = new List<AccountWrapper>();
        for(AccountWrapper wrapobj:accountWrapperList){
            if(wrapobj.isChecked){
                selectedWrapperList.add(wrapobj);
            }
        }
    }
    
    public Class AccountWrapper{
        public boolean isChecked{get;set;}
        public string accountName{get;set;}
        public string accountType{get;set;}
    }
}