public  class Datetime_Assignment {
    public void dateMethods(){
        date varDate = date.newInstance(2001,01, 01);
        system.debug('The date is ' + varDate);
    }

    public void timeMethods(){
        time varTime = time.newInstance(06, 21, 29, 16);
        system.debug('The exact time is ' + varTime);
    
    }

    public void datetimeMethods(){
        datetime varDateTime = datetime.newInstanceGmt(2001, 01, 01, 06, 21, 29);
        system.debug('The GMT is ' + varDateTime);
    }
}