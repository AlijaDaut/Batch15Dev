public class Datetime_Assignment2 {
        
        public void diffofDate(){
        date varTomorrowDate = date.newInstance(2023, 06, 05);
        system.debug(varTomorrowDate);

        date varTodaysDate = date.newInstance(2023, 06, 04);
        integer diffBetweenDays = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('The difference between days is ' +  diffBetweenDays);
        }

        public void Timecheck(){
                datetime varTomorrowDateTime = datetime.newInstance(2023, 04, 05, 7, 0, 0);
                system.debug('Tomorrow date is ' + varTomorrowDateTime);

                datetime var10DaysDateTime = datetime.newInstancegmt(2023, 04, 15, 9, 0, 0);
                system.debug('Ten days later ' + var10DaysDateTime);

                long varDateTimeLong = 12339874361l;
                system.debug('Long is ' + varDateTimeLong);

                datetime addDays = var10DaysDatetime.addDays(10);
                system.debug('Add ten days ' + addDays);
        }
}