// trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

//     if(trigger.isInsert && trigger.isBefore){
//         system.debug('before insert trigger called');
//       }
     
//       if(trigger.isInsert && trigger.isAfter){
//         system.debug('after insert trigger called');
//       }
    
//       if(trigger.isUpdate && trigger.isBefore){
//         system.debug('before update trigger called');
//       }
     
//       if(trigger.isUpdate && trigger.isAfter){
//         system.debug('after update trigger called');
//       }
      
//       if(trigger.isDelete && trigger.isBefore){
//         system.debug('before delete trigger called');
//       }
//       if(trigger.isDelete && trigger.isAfter){
//         system.debug('after delete trigger called');
//       }
      
//       if(trigger.isUndelete && trigger.isAfter){
//         system.debug('after undelete trigger called');
//       }
     
//     }