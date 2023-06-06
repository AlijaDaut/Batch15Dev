public  class Decimal_Assignment {
    public void decimalMethods(){
        string s1 = '123.456789';
        system.debug(s1);

        decimal d1 = decimal.valueOf(s1);
        system.debug(d1);

        decimal d2 = d1.setScale(2);
        system.debug(d2);


    }
}