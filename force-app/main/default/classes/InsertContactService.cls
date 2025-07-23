public with sharing class InsertContactService {
    
    public static Id createContact(String firstName, String lastName, String email, Id accountId) {
        if (String.isBlank(lastName)) {
            throw new AuraHandledException('Last Name is required.');
        }
        
        Contact con = new Contact(
            FirstName = firstName,
        LastName = lastName,
        Email = email,
        AccountId = accountId
            );
        insert con;
        return con.Id;
    }
}