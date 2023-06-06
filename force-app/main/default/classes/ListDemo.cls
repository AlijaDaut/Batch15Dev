public class ListDemo {
   public static void candidatesList(){
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('List of candidates ' + listC);
   }
   public static string candidateList(integer i){
    List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('List of candidates ' + listC);

        string returnValue = '';
        //size -> 4
        //maximum index 3
        integer size = listC.size();
        if (i < size) {
            returnValue = listC.get(i);
        } else {
            returnValue = 'No such value exists';
        }
      
        //returnValue = listC.get(i);
        return returnValue;
   }

public static void randomIntegerList() {
    List<integer> intList = new list<integer>();
    intList.add(90);
    intList.add(15);
    intList.add(77);
    intList.add(21);
    intList.add(15);
    intList.add(15);
    system.debug('Int list === > ' + intList);
    integer size = intList.size();
    system.debug('size of list is ' + size);

    integer int3 = intList.get(3);
    //OR
    integer int31 = intList[3];
    system.debug('int3 is ' + int3);
    system.debug('int31 is ' + int31);
}

public static void friendList(){
    List<string> friends = new list<string>();
    friends.add('Abba');
    friends.add('Brata');
    friends.add('Bobo');
    system.debug('before ' + friends);

    friends.sort();
    system.debug('after ' + friends);

}
   
}