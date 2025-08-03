@isTest
public class SimpleGreetingTest {
    @isTest
    static void testSayHello() {
        String result = SimpleGreeting.sayHello('Ram');
        System.assertEquals('Hey, Ram!', result);
    }
}
