public class AccountTrigHandlerAssign {
    
    public static void createContact(List<Account> accTriggerNew, List<Account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

        List<Contact> contactList = new List<Contact>();

        for (account eachAcc : accTriggerNew) {
            Contact newContact = new Contact();
            newContact.LastName = eachAcc.Name;
            newContact.accountid = eachAcc.Id;
            contactList.add(newContact);
        }

        if(!contactList.isEmpty()) {
            insert contactList;
        }
    }
}