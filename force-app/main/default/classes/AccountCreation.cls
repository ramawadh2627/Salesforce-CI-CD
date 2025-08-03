public with sharing class AccountCreation {
    public static id createAccount(){
        Account acc = new Account();
        acc.Name = 'Sample Account1';
        insert acc;
        return acc.id;
    }
}