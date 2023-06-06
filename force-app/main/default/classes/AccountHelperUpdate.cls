public class AccountHelperUpdate {
    @InvocableMethod
    public static void updateAccountWebsite(List<Id> accIds) {
     List<Account> accountToUpdate = new List<Account>();
     List<Account> accList = [SELECT id,name, Website FROM Account WHERE Id in :accIds];
     for (Account  eachAcc : accList) {
         eachAcc.Website='www.softinnovas.com';
         accountToUpdate.add(eachAcc);
     }
     if (!accountToUpdate.isEmpty()) {
         update accountToUpdate;
     }
    }
}