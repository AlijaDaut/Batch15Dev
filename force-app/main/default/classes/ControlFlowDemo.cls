public class ControlFlowDemo {
    public void checkBigger(integer a, integer b){
        //check and print which one is bigger

        if(a>b) { 
            system.debug('a is bigger than b');
    }   else {
            system.debug('b is bigger than a');

         }    
    }

    public void checkNumber(integer a){
        if(a > 0){
            system.debug('a is positive number');
            //check if number is even or odd
            	//if number is divisible by 2
            integer remainder = math.mod(a, 2);
            if(remainder == 1){
                system.debug(a + ' is odd');
            } else {
                system.debug(a + ' is even');
            }
        } else {
            if(a == 0) {
                system.debug('a is zero');
            } else {
                system.debug('a is negative');
            }
        }
    }
}
