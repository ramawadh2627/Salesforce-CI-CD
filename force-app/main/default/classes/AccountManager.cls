public with sharing class AccountManager {
    
    @AuraEnabled
    public static Id createAccount(String accountName) {
        if (String.isBlank(accountName)) {
            throw new AuraHandledException('Account name cannot be blank');
        }

        Account acc = new Account(Name = accountName);
        insert acc;
        return acc.Id;
    }
}
