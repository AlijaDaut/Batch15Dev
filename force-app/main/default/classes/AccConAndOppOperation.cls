public class AccConAndOppOperation {
   public static list <account> getAccounts() {
    list<account> listAcc = [select name, annualrevenue, type,accountsource from account];
    return listAcc;
   }

   public static void getOpportunities(string leadsource, string stagename) {
        list<opportunity> listOpp = [select name from opportunity where leadsource = :leadsource and stagename = :stagename];
        system.debug(listOpp);
 }

    public static void printOpportunities() {
        list<account> listAcc = [select name,AnnualRevenue,(select name, amount from opportunities where stagename = 'Closed won') from account where type = 'Cusmer - direct' ];
        system.debug('all accounts ' + listAcc);

        for (account acc : listAcc) {
            system.debug('account name: ' + acc.name);
            for (opportunity opp : acc.opportunities) {
                system.debug('opp name ' +  opp.name);
            }

            system.debug('----------');

        }
    }

    public static account createAccount (string name, decimal annualrevenue, string type) {
        if (name == '') {
            system.debug('Account without name cannot be created');
            return null;
        }

        account acc = new Account();
        acc.name = name;
        acc.AnnualRevenue = annualRevenue;
        acc.type = type;
        insert acc;
        return acc;

    }

    public static decimal getSumOpp () {
        decimal sum = 0;

        list<opportunity> listOpp = [select amount from opportunity where stagename = 'closed won' and amount != null];
        
        for (opportunity opp : listOpp) {
            sum += opp.Amount;
        }
        
        return sum;
    }

    public static decimal getSumOpp2 () {

       AggregateResult result = [select sum(amount) from opportunity where stagename = 'closed won' and amount != null];
        
        decimal sum = (decimal)(result.get('expr0'));
        return sum;
    }

    public static list<account> getAccountOppFilter(string stagename) {

        list<Account> listAcc = [select id from account where id in (select accountid  from opportunity where stagename = :stagename)];
        system.debug('all accounts ' + listAcc);
        
        
        return listAcc;
    }


}