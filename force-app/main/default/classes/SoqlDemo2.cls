public class SoqlDemo2 {
    public static void accountContactSOQL() {
        list<contact> listCon = [select id, name, account.name, account.industry, account.annualRevenue, accountid from contact];
        
        for (contact eachContact : listCon) {
            system.debug('contact name is ' + eachContact.Name);
            string accName = eachContact.account.name;
            system.debug('account name is ' + accName + ', acc industry is ' + eachContact.account.Industry);

            decimal accRevenue = eachContact.account.AnnualRevenue;
            system.debug('account revenue is ' + accRevenue);
            system.debug('---');
        }
    }
}