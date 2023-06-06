public class MapDemo {
    public static void mapStringInteger() {
        //string --> key
        //value --> integer
        //MAP<key DT, value DT>
        map<string, integer> map1 = new map<string, integer>();
        //in map, we PUT key value pair
        map1.put('one', 101);
        map1.put('two', 202);
        map1.put('three', 303);
        map1.put('one', 1001);
        map1.put('ten', 1001);

        system.debug(map1);

    }
}