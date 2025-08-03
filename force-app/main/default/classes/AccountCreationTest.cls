@isTest
 private class AccountCreationTest{
    @isTest
    static void testCreateAccount(){
        Id accId = AccountCreation.createAccount();

        Account acc = [Select Id , name from Account Where Id = :accId];
        System.assertEquals('Sample Account', acc.Name);
    }
 }