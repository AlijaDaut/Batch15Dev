@isTest
public class SoqlParentChildAssignmentTest {

    @TestSetup
    static void makeData(){
        List<Account> listAcc = new list<Account>();
        for (Integer i = 0; i < 10; i++) {
            Account acc = new account();
            acc.Name = 'Sarajevo' + i;
            //add account to list
            listAcc.add(acc);
        }
        insert listAcc;
    
    
        List<Contact> lstcontact = new list<Contact>();
        for (Integer i = 0; i < 10; i++) {
            Contact con = new contact();
            con.lastname = 'test con ' + i;
            con.accountid = listAcc[0].id;
            //add account to list
            lstcontact.add(con);
        }
        insert lstcontact;
    }

    @IsTest
    static void testSoqlAssign1(){
        SoqlParentChildAssignment.printContactAccounts();
    }

     @IsTest
    static void testSoqlAssign2(){
        SoqlParentChildAssignment.printAccountContacts();
        
    }
    
}