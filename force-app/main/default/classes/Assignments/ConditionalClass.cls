public class ConditionalClass {
   public string ifClassMethod(integer x){

        string output_Month = 'Not a valid Month';

        if (x==1) {
            output_Month = 'January';
        }
        else if (x==2) {
            output_Month = 'February';
        }
        else {output_Month = 'Not a valid Month';
        } 

        return output_Month;
 }

        public string caseMethod (string month){
            string output_Quarter = 'Enter a proper Month name';

            switch on month {
                when 'January', 'February', 'March'{
                    output_Quarter = 'Quarter 1';
                }
                when 'April', 'May', 'June'{ 
                    output_Quarter = 'Quarter 2';
                }
                when 'July', 'August', 'September'{ 
                    output_Quarter  = 'Quarter 3';
                }
                when 'October', 'November', 'December' {
                    output_Quarter = 'Quarter 4';
                }
                when else { 
                    output_Quarter = 'Not a valid Quarter';
                }

                }
                return output_Quarter;
            }
        }