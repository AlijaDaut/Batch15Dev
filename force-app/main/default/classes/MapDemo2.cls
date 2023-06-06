public class MapDemo2 {
    public static void mapExample2() {
        //items --> price
        map<string, decimal> map2 = new map<string, decimal>();
        map2.put('apple', 5.5);
        map2.put('pen', 10.5);
        map2.put('shirt', 50.5);
        map2.put('laptop', 1500.00);
        system.debug('map is '+ map2);

        //prepare two maps
        //1. all itens and its prices whose values are less than 100
        //1. all itens and its prices whose values are more than 100

        map<string, decimal> lowerMap = new map<string, decimal>();
        map<string, decimal> higherMap = new map<string, decimal>();

        set<string> allItems = map2.keySet();

        for (string eachItem : allItems) {
            //get value of each Item
            //eachItem --> laptop
            //eachPrice --> 1500
            decimal eachPrice = map2.get(eachItem);
            if (eachPrice > 100) {
                //      key --> laptop, value --> 1500
                higherMap.put(eachItem, eachPrice);
                system.debug('HIGHER: ' + eachItem + ' --> ' + eachPrice); 
            }else {
                lowerMap.put(eachItem, eachPrice);
                system.debug('LOWER: ' + eachItem + ' --> ' + eachPrice); 
            }
        }
                system.debug('Higher map is '+ higherMap);
                system.debug('Lower map is '+ lowerMap);
                


    }
}