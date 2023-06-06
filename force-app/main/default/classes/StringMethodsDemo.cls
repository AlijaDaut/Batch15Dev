public class StringMethodsDemo {
    public void stringMethod1(){
        system.debug('practice string methods');

        string sDesc = 'learning string methods in apex language.';

        //1. required: length methods returns integer
            //sDesc -> string variable for which we want to find lenght
            //length() -> string method which returns us lenght of string
        integer strLength = sDesc.length();
        system.debug('length od string is ' + strLength);

        //2. Convert sDesc to UPERCASE
            // we use method .toUpperCase();
                // which returns string by converting a string to UPPERCASE

        string upSDesc = sDesc.toUpperCase();
        system.debug('uppercase string ==> ' + upSDesc);

        //3. check if string contains 'apex' in it
        boolean checkApex = sDesc.contains('apex');
        system.debug('check if string contains apex ==> ' + checkApex);

        //3.b check if string contains salesforce

        boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug('check if string contains salesforce ==> ' + checkSalesforce);

        //3.c check if string contains APEX
        boolean checkApex2 = sDesc.contains('Apex');
        system.debug('Apex contains in string ==> ' + checkApex2);

        //containsIgnoreCase means --> apex == Apex == APEX == aPEX = APex
        boolean checkApex3 = sDesc.containsIgnoreCase('Apex'); //case insensitive method
        system.debug('Apex contains ignore case in string ==> ' + checkApex3);

    }

    public void stringMethod2() {
        //1. trim
        string username = ' alija  d  ';
        system.debug('acutal length '+ username.length());
        username = username.trim();
        system.debug('after trim ' + username);
        system.debug(username.length());

        string username2 = 'alija';
        //check if username is same as username2
        boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2 ==> ' + checkNames);

        boolean checkNames2 = username.equals('Alija D');
        system.debug('check if username is same as Alija D ==> ' + checkNames2);

        boolean checkNames3 = username.equalsIgnoreCase('Alija d');
        system.debug('check if username is same as Alija D (ignore case) ==> ' + checkNames3);

    }
}