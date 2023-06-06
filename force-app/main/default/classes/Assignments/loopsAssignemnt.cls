public class loopsAssignemnt {
    
public integer whileLoopMethod(integer n){
    integer i = 1;
    while(i < = n){
        system.debug(i);
        i++;
    }
    return i;
}

public void printEven(){
    for(integer i = 1; i < = 100; i++){
        if(math.mod(i,2) == 0){
            system.debug(i);
        }
    }
}

public integer printPower(integer n){
    integer result = 1;
    for(integer i = 0; i < n; i++){
        result = result * n;
    }
    return result;
}
}