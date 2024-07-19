package online_store;

public class Payment {
    private int paymentId;
    private String name;
    private String cardNo;
    private String month;
    private String year;
    private String cvv;
    
 // Constructor to initialize a Payment object with details
    public Payment(int paymentId, String name, String cardNo, String month, String year, String cvv) {
        this.paymentId = paymentId;
        this.name = name;
        this.cardNo = cardNo;
        this.month = month;
        this.year = year;
        this.cvv = cvv;
    }
    
 // Getters and setters for the attributes

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

    
    
}
