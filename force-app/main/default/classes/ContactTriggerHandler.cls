public class ContactTriggerHandler {
      //which all context variable we need here?
            //new, old or oldMap
    public static void validateContactUpdate1(
    List<contact> cTriggerNew, 
    List<contact> cTriggerOld,
    Map<id, contact> cTriggerNewMap,
    Map<id, Contact> cTriggerOldMap) {
      
        for(Contact newContact: cTriggerNew){
            //check if existing leadsource was partner referral
            //newContact.LeadSource can be partner referral
            //BUT
            //once its partner referaal - old contacts leadsource is partner referral then show error
            Contact oldContact = cTriggerOldMap.get(newContact.Id);
                if(oldContact.LeadSource == 'Partner Referral') {
                
                //addError works with Trigger.new or Trigger.newMap record.
                    //we cannot use addError with Tirgger.old or Trigger.oldMap
                newContact.addError('Cannot update contact with lead source as Partner Referral');
            }
        }

    }

    public static void validateContactUpdate2(
        List<contact> cTriggerNew, 
        List<contact> cTriggerOld,
        Map<id, contact> cTriggerNewMap, 
        Map<id, contact> cTriggerOldMap){

            //do not allow user to update leadsource

            //for each for trigger.new
                //check if leadsource is changed?
                    //old contact lead source != new contact lead source
                        //addError
            for (Contact newContact : cTriggerNew) {
                if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).leadsource) {
                    newContact.LeadSource.addError('Cannot update leadsource. Please user! Go away!');
                }
            }
        }

}