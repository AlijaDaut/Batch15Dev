public class CasesQueueable implements Queueable {
    public Id defaultAccId;
    public List<case> cases;

    public CasesQueueable() {

    }
    public CasesQueueable(Id defaultAccId, list<case> cases) {
        this.defaultAccId = defaultAccId;
        this.cases = cases;
    }

    public void execute(QueueableContext qc){
        //update all case with default acc id
        for (case eachCase : cases) {
            eachCase.accountid = defaultAccId;
        }
        update cases;
    }

}