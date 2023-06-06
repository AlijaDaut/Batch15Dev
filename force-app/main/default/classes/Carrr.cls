public class Carrr {
    //variables created directly inside class body are called CLASS VARIABLES
    
    
    
    //IF we DO NOT specify access modifier, it is PRIVATE by default,
    //we cannot get the value or set the values outside class
    private string carNumber;
    public string name;
    public integer mfgYear;
    public string color;
    decimal price;
    //class variables are sometimes called global variables
    // why global? because class variables are accesible in all methods of the class

    public void details(){
        system.debug('Car number is ' + carNumber);
        system.debug('Car name is ' + name);
        system.debug('Manufacturing year ' + mfgYear);
        system.debug('Color of car is ' + color);
        system.debug('Price of car is ' + price);
        printCarAge();
    }

    //constructor is same as class name
    //constructor does not return anything
    public Carrr(){
        //constructor code is called automatically when new instance is created
        
        //construcotrs are used a lot to assign class variables values by default
        //constructors are also used to do some operation as soon as object is created
        system.debug('mew car is created, constructor called automatically');
        mfgYear = 2023;
    }

    private void printCarAge(){
        integer currentYear = date.today().year();
        system.debug('car age is ' + (currentYear - mfgYear));
    }

    public carrr(string nm){
        //nm is parameter
        //name is class variable
        name = nm;
        mfgYear = 2023;
    }
    public carrr (string nm, string carnum, string clr, integer yr, decimal pc){
        name=nm;
        carNumber = carnum;
        color = clr;
        mfgYear = yr;
        price = pc; 
        //automatically do some operation
        details();
    }
}