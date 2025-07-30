@isTest
public class ContactManagerTest {
    @isTest
    static void testCreateContact() {
        String firstName = 'Test';
        String lastName = 'User';
        String email = 'testuser@example.com';
        
        Test.startTest();
        Id contactId = ContactManager.createContact(firstName, lastName, email);
        Test.stopTest();
        
        // Verify the contact was created
        Contact insertedContact = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE Id = :contactId LIMIT 1];
        
        System.assertEquals(firstName, insertedContact.FirstName);
        System.assertEquals(lastName, insertedContact.LastName);
        System.assertEquals(email, insertedContact.Email);
    }
}