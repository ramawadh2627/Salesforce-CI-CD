public with sharing class AccountHelper {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByRating(String ratingValue) {
        if (String.isBlank(ratingValue)) {
            return new List<Account>();
        }
        
        return [SELECT Id, Name, Rating FROM Account WHERE Rating = :ratingValue LIMIT 50];
    }
}