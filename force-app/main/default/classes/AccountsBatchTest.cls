@isTest
public class AccountsBatchTest {
   
    @isTest 
    public static void testBatch1() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }
        insert listAcc;

        //for async apex, startTest and stopTest are mandatory
        Test.startTest();
        AccountsBatch ab = new accountsBatch();
        database.executeBatch(ab, 900);
        Test.stopTest();

        //assert
        List<account> allAccounts = [select id, description from account];
        for (account eachAcc : allAccounts) {
            Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));

        }
    }
}