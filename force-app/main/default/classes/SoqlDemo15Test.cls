@isTest
public class SoqlDemo15Test {
  //we can create common records in a test class using TESTSETUp method.
    // we can use it in both test methods

    @TestSetup
    static void makeData(){
        //prepare data
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 15; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            ac.Industry = 'Energy';
            //add account to list
            listAcc.add(ac);
        }
        insert listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 30; i++) {
            Opportunity opp = new Opportunity(name = 'test opp', StageName='New', CloseDate=date.today(), amount = 50000, accountid = listAcc[0].Id);
            listOpp.add(opp);
        }
        insert listOpp;

    }

    @IsTest
    static void testSoql1(){
        //we can use account records and opp which we created in SETUP method HERE.
        SoqlDemo15.oppAccQuery();
    }

     @IsTest
    static void testSoql2(){
        //we can use account records created in SETUP method HERE.
        
    }
}