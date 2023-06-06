public class MethodsDemo {
        //return type is MUST
    public void welcomeMessage(){
        system.debug('Hi there, welcome to the jungle!');
    }

    // method name = samplePrintMessage     
    //# of parameters => 1
    //datatype of parameter is string
        //message is the VARIABLE name which we use INSIDE

    public void samplePrintMessage(string message){
        system.debug(message);
    }

    public void newMessage(string name){
        system.debug('Hi ' + name + ', welcome to the world of apex!!');
    }

    public string returnMessage(string name){
        system.debug('inside returnMessage method');//debug uvijek moze i ovako, da nas podsjeti sta radimo
        string str = 'Hey' + name + ',nice to meet you buddy';
        return str;

    }
    
}