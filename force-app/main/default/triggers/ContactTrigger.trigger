trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (Trigger.isBefore && Trigger.isUpdate) {
       //call handler here
       ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
       ContactTriggerHandler.validateContactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
       
       
        //check if leadSource is partner referral
            //we have to check if OLD (trigger.old or oldMap) Contact LeadSource is partner referral then throw error
        
        //we can throw error using addError method.
        //addError methods works on Trigger.new only.
        // for (contact eachContact : trigger.new) {
        //     //we want to get here OLD CONTACT
        //     contact oldC = trigger.oldMap.get(eachContact.Id);
        //     if(oldC.LeadSource == 'Partner Referral'){
        //         //throw error
        //         eachContact.addError('Cannot update contat if leadsource is partner referral');
        //     }
        // }
    }

    

 
 
 
 

 
 
    //trigger.isBefore is true when record reaches BEFORE trigger of timeline

    // if (Trigger.isBefore) {
    //     system.debug('before trigger called.');
    //     if (Trigger.isInsert) {
    //         system.debug('before insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('before update trigger called');
    //     }
    // }


    // if (Trigger.isAfter) {
    //     system.debug('after trigger called.');
    //      if (Trigger.isInsert) {
    //         system.debug('after insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('after update trigger called');
    //     }
    // }
}