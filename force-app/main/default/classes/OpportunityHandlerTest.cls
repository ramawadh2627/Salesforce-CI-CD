@isTest
private class OpportunityHandlerTest {
    @isTest
    static void testCreateOpportunity() {
        // Arrange
        String testName = 'Test Opportunity';
        Date testCloseDate = Date.today().addDays(30);
        String testStageName = 'Prospecting';
        
        // Act
        Opportunity createdOpp = OpportunityHandler.createOpportunity(testName, testCloseDate, testStageName);
        
        // Assert
        System.assertNotEquals(null, createdOpp.Id, 'Opportunity ID should not be null');
        System.assertEquals(testName, createdOpp.Name);
        System.assertEquals(testCloseDate, createdOpp.CloseDate);
        System.assertEquals(testStageName, createdOpp.StageName);
    }
}