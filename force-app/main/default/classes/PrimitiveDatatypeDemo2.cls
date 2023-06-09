public class PrimitiveDatatypeDemo2 {
    public void printNewDate(){
        system.debug('create new date variable');

        //datatype              newInstance         (year,month,day)
        date                newDate1 = Date.newInstance(1992, 4, 15);
        system.debug(newDate1);

        date                newDate2 = Date.newInstance(2020, 3, 20);
        system.debug(newDate2);

        date todayDate = date.today();//will return us todays date
        //espace character -> back slash
        system.debug('today\'s date is ' + todayDate);
    }

    public void printNewTime(){
        Time myTime1 = time.newInstance(11, 10, 30, 50);
        system.debug(myTime1);
        Time myTime2 = time.newInstance(21, 12, 15, 40); //ako napisem recimo 25 sati broj, pocinje od 01
        system.debug(myTime2);
    }

    public void printNewDateTime(){
        //methodname to create new DATETIME is newInstance
        date newDate2 = Date.newInstance(2020, 3, 20);
        Time myTime1 = time.newInstance(11, 10, 30, 50);
        //1. new DateTime using date and time
        datetime dt1 = datetime.newInstance(newDate2, myTime1);
        system.debug('dt1 is ' + dt1);

        //2. new DateTime using year, month, day ---> time wil be midnight 00000
        datetime dt2 = datetime.newInstance(2021, 1, 5);
          //2021-01-05 0000 for argentina
            //what will this time be for GMT
             // 2021-01-05-0300
            //it creats datetime with users timezone midnight
        
        system.debug('dt2 is ' + dt2);//while printing, it prints gmt

        //3. datetime using year, month, day, hour, min, sec

        datetime dt3 = datetime.newInstance(2021, 5, 19, 6, 15, 50);
        system.debug('st3 is ' + dt3);

        datetime dt6 = datetime.now();//users time zone
        system.debug('dt6 is ' + dt6);//prints gmt
    

    }

    
}