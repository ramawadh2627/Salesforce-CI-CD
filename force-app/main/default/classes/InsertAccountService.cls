public with sharing class InsertAccountService {
    
    public static Id createAccount(String name) {
        if (String.isBlank(name)) {
            throw new AuraHandledException('Account Name cannot be blank.');
        }
        
        Account acc = new Account(Name = name);
        insert acc;
        return acc.Id;
    }
}