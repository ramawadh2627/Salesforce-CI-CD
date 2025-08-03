public with sharing class AccountCreation {
    public static id createAccount(){
        Account acc = new Account();
        acc.Name = 'Sample Account';
        insert acc;
        return aac.id;
    }
}