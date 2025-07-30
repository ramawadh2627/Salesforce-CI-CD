@isTest
private class ContactManagerTest {
    
    @isTest
    static void testCreateContactSuccess() {
        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        // Call the method
        Test.startTest();
        String result = ContactManager.createContact(
            testAccount.Id,
        'John',
        'Doe',
        'john.doe@example.com'
            );
        Test.stopTest();
        
        // Assert result
        System.assert(result.startsWith('Contact created with Id:'), 'Expected success message');
        
        // Verify contact was created
        Contact createdContact = [SELECT Id, FirstName, LastName, Email, AccountId 
                                  FROM Contact WHERE AccountId = :testAccount.Id LIMIT 1];
        System.assertEquals('John', createdContact.FirstName);
        System.assertEquals('Doe', createdContact.LastName);
        System.assertEquals('john.doe@example.com', createdContact.Email);
    }
    
    @isTest
    static void testCreateContactMissingAccountId() {
        // Call method with blank AccountId
        String result = ContactManager.createContact(
            '',
        'Jane',
        'Smith',
        'jane.smith@example.com'
            );
        
        System.assertEquals('AccountId and LastName are required.', result);
    }
    
    @isTest
    static void testCreateContactMissingLastName() {
        // Create test Account
        Account testAccount = new Account(Name = 'Test Account 2');
        insert testAccount;
        
        // Call method with blank LastName
        String result = ContactManager.createContact(
            testAccount.Id,
        'Jane',
        '',
        'jane.smith@example.com'
            );
        
        System.assertEquals('AccountId and LastName are required.', result);
    }
}