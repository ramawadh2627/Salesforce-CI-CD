public with sharing class AccountManager {
    
   
    public static void createAccount() {
        Account acc = new Account();
        acc.Name = 'ram';
        insert acc;
    }
}
