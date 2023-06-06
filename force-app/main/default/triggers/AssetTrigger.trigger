trigger AssetTrigger on Asset (before insert, before update, after insert, after update) {

    if (Trigger.isBefore && Trigger.isInsert) {
        //call handler here
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }

        
    if (Trigger.isBefore && Trigger.isUpdate) {
        //call handler here
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            }        
    
}