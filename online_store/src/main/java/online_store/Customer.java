package online_store;

public class Customer {
	
	private int pid, cardno, year, cvv;
	private String name, month;
	
	public Customer(int pid, int cardno, int year, int cvv, String name, String month) {
		this.pid = pid;
		this.cardno = cardno;
		this.year = year;
		this.cvv = cvv;
		this.name = name;
		this.month = month;
	}

	public int getPid() {
		return pid;
	}

	public int getCardno() {
		return cardno;
	}

	public int getYear() {
		return year;
	}

	public int getCvv() {
		return cvv;
	}

	public String getName() {
		return name;
	}

	public String getMonth() {
		return month;
	}
	

}
