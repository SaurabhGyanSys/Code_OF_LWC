/*@isTest
public with sharing class parentToChildTest {
    @isTest
    static void parentToChildTest() {
        List<Account> acc = new List<Account>();
        Account acc1 = new Account();
        acc1.Name = 'Account Name';
        acc1.Phone = '432567345';
        acc.add(acc1);
        List<Contact> co= new List<Contact>();
        Contact co1= new Contact();
        co1.Phone='123456789';
        co.add(co1);
        Test.startTest();
        parentToChildHandler.parentToChildMethod(acc);
        Test.stopTest();
    }
}*/



@isTest
public class parentToChildTest {
    @isTest static void parentToChildTest() {
        Account acct = new Account(Name = 'Account Name');
        insert acct;
        contact con = new contact(LastName = 'Dixit', accountId = acct.Id);
        insert con;
        Test.startTest();
        acct.phone = '1234567890';
        update acct;
        Test.stopTest();
    }

}