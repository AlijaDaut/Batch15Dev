DatetimeMethodsDemo dm = new DatetimeMethodsDemo();
dm.offerEndDateTime();
dm.subscriptionEndDate();
dm.calculateAgeInDays();
dm.calculateAgeInMonths();

datetime alBirthdate = datetime.newInstance(1995, 18, 5);
long alijaLongBirthDate = alBirthdate.getTime();//this returns LONG data which is milliseconds from 1 Jan 1970
system.debug('my birthdate in miliseconds: ' + alijaLongBirthDate);//in milisecond from 1970

//external system may be ASK for DATETIME in milliseconds