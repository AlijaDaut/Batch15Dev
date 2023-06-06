public class Candidate {
    public string name;
    public string gender;
    public static string companyName;
    public static integer count = 0;

    public Candidate(){
        count++;
    }

    public void details(){
        system.debug('name is ' + name);
        system.debug('gender is ' + gender);
        system.debug('company name is ' + companyName);
        system.debug('---------');
    }
}