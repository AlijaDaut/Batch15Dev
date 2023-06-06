public class ForLoopDemo {
    //print Hello 10 times
    public void print_Hello(){
        //traditional for loop OE for i loop

        for(integer i = 1; i <= 10; i++){
            system.debug('Hello');
        }
    }

    public void print_N_numbers(integer n){
        string printStr = '';
        for (integer i = 0; i < n; i++) {
            //system.debug(i);
            printStr = printStr + i + ',';
        }
        system.debug(printStr);
    }

    public void print_N_numbers2(integer n){
        string s = 'this';
        s += ' is a string';// s obzirom da je ovo u outside for loop onda ide jedno za drugim
        for (integer i = 0; i < n; i++) {
            s += i;
            system.debug(s); //this is a string01234
    
        }
        system.debug(s);
    }

    public void print_N_odd_numbers(integer startInt, integer endInt){
        for (integer i = startInt; i < endInt; i++) {
            //print only if i is ODD.
            // 7/2 => remainder >1

            //number        //quotient    //remainder
            // 6/3          //2           0
            // 7/5          //1           2
            integer remainder = math.mod(i, 2);

            //when we divide 2 by any number, if remainder is 0 then it is even number
            //if remainder is 1 than it is ODD number
            if (remainder == 1) {
                system.debug(i);
            }
        }
    }
}