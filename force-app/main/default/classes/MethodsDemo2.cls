public class MethodsDemo2 {
    //create method, which accepts string, and check if that string contains A or a
    //return true if contains, else false

    public boolean nameContainsA(string name){ // moze bilo koje ime stringa npr. bobo pa ce biti bobo.containsIgnoreCase
        boolean containsA = name.containsIgnoreCase('a');
        return containsA;
    }
}