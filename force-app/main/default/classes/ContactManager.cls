public with sharing class ContactManager {

    @AuraEnabled
    public static String createContact(String accountId, String firstName, String lastName, String email) {
        if (String.isBlank(accountId) || String.isBlank(lastName)) {
            return 'AccountId and LastName are required.';
        }

        Contact con = new Contact(
            FirstName = firstName,
            LastName = lastName,
            Email = email,
            AccountId = accountId
        );

        try {
            insert con;
            return 'Contact created with Id: ' + con.Id;
        } catch (DmlException e) {
            return 'Error: ' + e.getMessage();
        }
    }
}
