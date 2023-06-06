public class RankHandler {
    public string rankPrize(integer rank){
        string prize = '';
        //write logic to set proper vale of prize variable
        if (rank ==1) {
            prize = 'Gold';
        } else if (rank ==2){
            prize = 'Silver';
        } else if (rank ==3){
            prize = 'Bronze';
        } else {
            if (rank < =10){
                prize = 'Iron';
            } else {
                prize = 'Aluminium';
            }
        }
        return prize;
    }
    public string rankPrizeSwitch(integer rank){
        string prize = '';

        switch on rank {
            when 1 {
                prize = 'Gold';
            }
            when 2 {
                prize = 'Silver';
            }
            when 3 {
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10 {
                prize = 'Iron';
            }
            when else {
                prize = 'Aluminium';
            }
        }

        return prize;

    }
}