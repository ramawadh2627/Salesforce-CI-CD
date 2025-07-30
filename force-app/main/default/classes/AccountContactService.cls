public with sharing class AccountContactService {
    
    // Method to get Contacts for a given Account Id
    public static Map<Id, List<Contact>> getContactsByAccountId(Id accountId) {
        Map<Id, List<Contact>> accountContactMap = new Map<Id, List<Contact>>();
        
        // Query Contacts for the given AccountId
        List<Contact> conactList = [
            SELECT Id, FirstName, LastName, Email, AccountId
            FROM Contact
            WHERE AccountId = :accountId
        ];
        
        // Add to the map
        if (!conactList.isEmpty()) {
            accountContactMap.put(accountId, conactList);
        }
        
        return accountContactMap;
    }
}