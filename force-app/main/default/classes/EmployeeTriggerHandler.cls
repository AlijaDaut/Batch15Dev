public class EmployeeTriggerHandler {
    
    //Creating new employee or updating employee
        //if joining is blank then update join date to Today's date.

//- object? Employee__c
//- event? before or after? before, why, why, why? Same record update, before is MORE efficient. No DML needed.
//- insert or update? both.
    
    public static void updateJoinDate(List<Employee__c> empTriggerNew) {
        if(Trigger.isInsert || Trigger.isUpdate) {
            for(Employee__c newEmp: empTriggerNew){
                if(newEMp.JoinDAte__c == null) {
                    newEmp.JoinDate__c = date.today();
                }
            }
        }
    }
}