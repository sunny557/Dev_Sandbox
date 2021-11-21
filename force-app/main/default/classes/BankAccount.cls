public class BankAccount {
	public string accountholdername;
    public string adharnumber;
    private string pannumber;
    private Integer balance;
   
    public void printbalance(){
        system.debug('balanace of the person is '+this.balance);
    }
    public void setpannumber(string i_pannumber){
        this.pannumber = i_pannumber;
    }
    public void getPannumber(){
        system.debug('Pan number of the person is' +this.accountholdername + ' is ' +this.pannumber);
    }
}