public class ContactManager {
    public static Id createContact(String firstName, String lastName, String email) {
        Contact newContact = new Contact(
            FirstName = firstName,
        LastName = lastName,
        Email = email
            );
        
        insert newContact;
        return newContact.Id;
    }
}