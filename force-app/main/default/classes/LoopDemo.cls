public class LoopDemo {
    // print 1 to 25
    public void print_int_while(){


        //1. initialize
        integer i = 1;
        //whenever value of i is less than 25, go inside while block
        //2. exit condition

        while(i <= 25){
            system.debug(i);
            //increment or decrement
            i++;
        }
        system.debug('after while i ===> '+ i);
    }

    public void print_int_while2(){

    }

    //printing multiple of 5 for n numbers
    public void print5multiple(integer n){
        integer i = 0;
        while(i <= n) {
            //remainder of 5/1, 5/2, 5/3
            integer remainder = math.mod(i, 5);
            if(remainder == 0){
                system.debug(i);
            }
            i++;

        }
    }
}