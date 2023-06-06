public  class String_Assignment {
    public void stringAssignment(){
        string localString = 'Thanks for the session on the string';
        system.debug(localString);

        integer localStringLength = localString.length();
        system.debug('Length of local string is ' + localStringLength);

        string localStringUpp = localString.toUpperCase();
        system.debug('Local string to uppercase looks like ' + localStringUpp);

        boolean checkString = localString.contains('session');
        system.debug('It contains session... ' + checkString);

        boolean checkString2 = localString.contains('sessions');
        system.debug('It contains sessions... ' + checkString2);
        
        boolean checkString3 = localString.containsIgnoreCase('SESSION');
        system.debug('It contains SESSION... ' + checkString3);


    }
}