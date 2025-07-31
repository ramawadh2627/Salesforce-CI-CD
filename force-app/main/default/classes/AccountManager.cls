public with sharing class AccountManager {
    
   
    public static Id createAccount() {
        Account acc = new Account();
        acc.Name = 'ram';
        insert acc;
    }
}
