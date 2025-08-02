@isTest
private class AccountManagerTest {
    
    @isTest
    static void testCreateAccount() {
        Test.startTest();
        Id accId = AccountManager.createAccount();
        Test.stopTest();
        
        // Query to verify the account was created
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accId];
        System.assertNotEquals(null, acc);
        System.assertEquals('ram', acc.Name);
    }
}