public class AccountApexController {
    @AuraEnabled
    public static List<Account> getAccount(){
        List<Account> accounts = [Select Id, Name From Account Limit 10];
        return accounts;
    }

}