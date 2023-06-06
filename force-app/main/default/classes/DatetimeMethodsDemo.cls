public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){

        date todayDate = date.today();
                                            //year,month,day
        date alijaBirthDate = date.newInstance(1995, 5, 18);

        integer ageInMonths = alijaBirthDate.monthsBetween(todayDate);
        system.debug('Alija age in months is ' + ageInMonths);

    }

    public void calculateAgeInDays(){
        date todayDate = date.today();
                                            //year,month,day
        date alijaBirthDate = date.newInstance(1995, 5, 18);

        integer ageInDays = alijaBirthDate.daysBetween(todayDate);
        system.debug('Alija age in days is ' + ageInDays);

    }

    public void subscriptionEndDate(){
        //first get todays date
        date todayDate = date.today();

        date endDate = todayDate.addDays(1000);
        system.debug('subscription end date: ' + endDate);

        //END date is today
        //subs was done 1000 days
        //what is the start date?

        date newEndDate = date.today();

        date newStartDate = newEndDate.addDays(-1000);
        system.debug('new start date: ' + newStartDate);

        // to just get YEAR component from YEAR use .year()
        integer newSDYear = newStartDate.year();
        //to get MONTH component from DATE use .month()
        integer newSDMonth = newStartDate.month();
        system.debug('year of new start date is ' + newSDYear);
        system.debug('month of new start date is ' + newSDMonth);

    }

    public void offerEndDateTime(){
        //current datetime
        datetime offerStart = datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime ' + offerEnd);
    }

}