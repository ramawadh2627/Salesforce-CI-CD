@isTest
private class AccountHelperTest {
    
    @isTest
    static void testGetAccountsByRating() {
        // Create test data
        Account acc1 = new Account(Name = 'Test Account 1', Rating = 'Hot');
        Account acc2 = new Account(Name = 'Test Account 2', Rating = 'Warm');
        Account acc3 = new Account(Name = 'Test Account 3', Rating = 'Hot');
        insert new List<Account>{ acc1, acc2, acc3 };
        
        // Call the method
        Test.startTest();
        List<Account> hotAccounts = AccountHelper.getAccountsByRating('Hot');
        Test.stopTest();
        
        // Assert results
        System.assertEquals(2, hotAccounts.size(), 'Expected 2 accounts with rating Hot');
        for (Account acc : hotAccounts) {
            System.assertEquals('Hot', acc.Rating);
        }
    }
}