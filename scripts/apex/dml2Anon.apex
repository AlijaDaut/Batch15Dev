DmlDemo2.insertBulkWRONG();
DmlDemo2.soqlWrong();
DmlDemo2.bulkInsertRight();
DmlDemo2.bulkInsertRight2();
DmlDemo2.bulkUpdateRight();
DmlDemo2.accountUpdate();

delete [select id from account where createddate = today limit 50];

undelete [select id from account where isDeleted = true LIMIT 50 ALL ROWS];
// undelete [SELECT Id FROM Account WHERE isDeleted = true ALL ROWS]; vitapovo


//150 dml per transaction
    //how many records? insert + update + delete -> 10k
//100 soql per transaction
    //how many records we can fetch = > 50k

// 4 methods -> each method has one soql - 4 of 

string s1;//null
boolean b1 = string.isBlank(s1);
system.debug('b1 is ' + b1);

string s2 = '' ;
boolean b2 = string.isBlank(s2);
system.debug('b2 is ' + b2);

string s3 = '   ';
boolean b3 = string.isBlank(s3);
system.debug('b3 is ' + b3);
