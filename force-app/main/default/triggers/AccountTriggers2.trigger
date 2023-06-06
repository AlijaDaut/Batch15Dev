trigger AccountTriggers2 on Account (before update, after update) {
    
    //isBefore will be true when trigger is running in BEFORE save(insert,update,delete) context
   // if(trigger.isBefore) {
     //   system.debug('before update account trigger');
    //}
    
    //isAfter will be true when trigger is running in AFTER save(insert,update,delete) context

    //if(trigger.isAfter) {
     //   system.debug('after update account trigger');

    //}

}