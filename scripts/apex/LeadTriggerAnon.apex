List<Lead> leadList = new List<lead>();

leadList.add (new Lead(LastName = 'Lead 1', Company = 'Bobo'));
leadList.add (new Lead(LastName = 'Lead 2', Company = 'Smrad'));
leadList.add (new Lead(LastName = 'Lead 3', Company = 'Dingi'));
leadList.add (new Lead(LastName = 'Lead 4', Company = 'Dojng'));
leadList.add (new Lead(LastName = 'Lead 5', Company = 'Albas'));
insert leadList;

for (Lead eachLead : leadList) {
   eachLead.Description = 'Field updated from Anonymous';
 }
update leadList;











// for (Integer i = 0; i < 4; i++) {
//     Lead ld = new Lead();
//     ld.Lastname = 'Dean' +i;
//     ld.Company = 'Dean doo';
//     ld.Status = 'Working - Contacted';
//     leadList.add(ld);
// }
// insert leadList;

// for (Lead eachLead : leadList) {
//     eachLead.description = 'Field updated from Anonymous';
// }
// update leadList;