public class DmlDemo {
   public static void dmlInsertDemo1() {
        //create one account record.

        //create new instance of account

        account acc = new account();
        acc.Name = 'Salesforce';
        acc.Website = 'www.salesforce.com';

        //dml
        insert acc;
        system.debug('inserted acc: ' + acc);
   }

   public static void dmInsertDemoCO1() {
        // create new instance
        department__c d = new department__c();
       
        // set field names
        d.Name__c = 'Human Resources';
        d.Short_Code__c = 'HR';

        // insert dml
        insert d; // create RECORD in our ORG. So we can see it in All Records.
   }

   public static void dmInsertDemoCO2() {
        //req: create neew recod in Salesforce Project object

        //1. create new instance
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_name__c = 'Learn DML';
        sp.Status__c = 'New';

        //create record
        //INSERT statement
        insert sp;
   }

   public static void dmlUpdateDemo1() {
    //create account
    account acc = new account();
    acc.Name = 'Softinnovas';
    system.debug('before insert DML: ' + acc);
    insert acc;
    system.debug('after insert DML: ' + acc);

    //we can update record if we have record id.
    acc.Name = 'Softinnovas INC.';
    acc.Website = 'www.softinnovas.com';

    //update statement
    update acc;
    system.debug('after update dml: ' + acc);
}

public static void dmlUpdateDemo2() { 
    account acc = [select name from account order by createddate desc limit 1];

    acc.name = 'Softinnovas Inc.';
    //system.debug('webiste : ' acc.webiste); // NOT work
    //acc.webiste = 'www.sfinnovas.com';//YES
    update acc;

}

public static void dmlInsertDemo3(){
    //soql to get acc record
    account acc = [select id, name from account order by createddate desc limit 1];

    contact c = new contact();
    c.lastname = 'Biden';
    //relationship
    c.accountid = acc.id; //get id from account record.

    //insert statement
    insert c;
}
   

}