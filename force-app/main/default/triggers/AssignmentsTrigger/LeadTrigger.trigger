trigger LeadTrigger on Lead (before insert, before update) {
    
    
    List<lead> leadList = Trigger.new;


    if (Trigger.isBefore && Trigger.isInsert){ 
    for (Lead eachLead : leadList) {
        system.debug('eachLead ---> ' + eachLead);
    }
  }
  if (Trigger.isBefore && Trigger.isUpdate) {
    for (Lead eachLead : leadList) {
        system.debug('the id is ' + eachLead.id + 'the name is ' + eachLead.Name + ' the description is '+ eachLead.description);
    }
  }

}