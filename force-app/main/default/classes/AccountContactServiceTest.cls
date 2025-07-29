@isTest
private class AccountContactServiceTest {
    
    @isTest
    static void testGetContactsByAccountId() {
        
        Account testAccount = new Account(Name = 'Test Account1');
        insert testAccount;
        
       
        List<Contact> testContacts = new List<Contact>{
            new Contact(FirstName = 'John', LastName = 'Doe', Email = 'john.doe@example.com', AccountId = testAccount.Id),
            new Contact(FirstName = 'Jane', LastName = 'Smith', Email = 'jane.smith@example.com', AccountId = testAccount.Id)
        };
        insert testContacts;
        
       
        Test.startTest();
        Map<Id, List<Contact>> result = AccountContactService.getContactsByAccountId(testAccount.Id);
        Test.stopTest();
        
      
        System.assertNotEquals(null, result, 'Result map should not be null');
        System.assert(result.containsKey(testAccount.Id), 'Result map should contain the Account Id');
        System.assertEquals(2, result.get(testAccount.Id).size(), 'There should be 2 contacts returned');
    }
}