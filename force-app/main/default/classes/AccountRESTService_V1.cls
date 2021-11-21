/*************************************************************************************************
* Descriptioin - Sample Apex Rest Service with Get Method
* Author - Suneeth Tullimalla
***************************************************************************************************/
@RestResource(urlMapping='/v1/accounts/*')
global with sharing class AccountRESTService_V1 {
    
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Account result = [Select Id, name,Phone, Website, BillingState From Account WHERE Id= :accountId];
        return result;
    }
}