public class CheckDatatypes {
    public void methodBoolean() {
        Boolean checkBoolean = true;
        system.debug('Value of checkBoolean: ' + checkBoolean);
    }

    public void  methodinteger() {
        integer varFirst = 1;
        integer varSecond = 2;
        system.debug(varFirst);
        system.debug(varSecond);
    }

    public void  stringMethod() {
        string varName = 'Name';
        string var2Name = 'Alija';
        system.debug(varName);
        system.debug(var2Name);

    }

    public void methodId() {
        id checkId = '0010900001wfzgWAAQ';
        system.debug(checkId);
    }

    public void methodDouble() {
        double varfirst = 1.23;
        double varsecond = 209.764;
        system.debug('Value of varfirst: ' + varfirst);
        system.debug('Value of varsecond: ' + varsecond);

    }
    
}