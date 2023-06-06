trigger AccTriggerAssign on Account (before insert,after insert, before update,  after update) {

    if (Trigger.isInsert && Trigger.isAfter){
        AccountTrigHandlerAssign.createContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}