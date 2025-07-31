@isTest
private class AccountManagerTest {
    
    @isTest
    static void testCreateAccount() {
        String testName = 'Test Account';

        Test.startTest();
        Id accountId = AccountManager.createAccount(testName);
        Test.stopTest();

        // Verify that account is inserted
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        System.assertEquals(testName, acc.Name);
    }

    @isTest
    static void testCreateAccountWithBlankName() {
        try {
            Test.startTest();
            AccountManager.createAccount('');
            Test.stopTest();
            System.assert(false, 'Expected an exception for blank account name');
        } catch (AuraHandledException e) {
            System.assertEquals('Account name cannot be blank', e.getMessage());
        }
    }
}
