@isTest
public class SimpleGreetingTest {
    @isTest
    static void testSayHello() {
        String result = SimpleGreeting.sayHello('Salesforce');
        System.assertEquals('Hello, Salesforce!', result);
    }
}
