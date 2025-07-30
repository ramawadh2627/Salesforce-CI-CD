public class OpportunityHandler {
    public static Opportunity createOpportunity(String name, Date closeDate, String stageName) {
        Opportunity opp = new Opportunity(
            Name = name,
        CloseDate = closeDate,
        StageName = stageName
            );
        insert opp;
        return opp;
    }
}