package online_store;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Method to insert payment information into the database
    public static boolean insertpayment(String name, String cardNo, String month, String year, String cvv) {
    	
    	boolean isSuccess = false;
        
        try {
        	
        	con = DBConnect.getConnection();
        	stmt = con. createStatement();
        	
        	// SQL query to insert payment data into the 'payment' table
        	String sql = "insert into payment values (0, '"+name+"' , '"+cardNo+"' , '"+month+"' , '"+year+"' , '"+cvv+"')";
        	int rs = stmt.executeUpdate(sql);
        	
        	if(rs > 0) {
        		isSuccess = true;
        	} else {
        		isSuccess = false;
        	}
        	
        }
        	catch (Exception e) {
        	e.printStackTrace();
        	}
    	
    	return isSuccess;
    	
    }
    
    // Method to retrieve a list of payments from the database
    public static List<Payment> retrievePayments() {
        List<Payment> payments = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM payment";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int paymentId = rs.getInt("pid");
                String name = rs.getString("name");
                String cardNo = rs.getString("cardno");
                String month = rs.getString("month");
                String year = rs.getString("year");
                String cvv = rs.getString("cvv");

                Payment payment = new Payment(paymentId, name, cardNo, month, year, cvv);
                payments.add(payment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources in a finally block
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return payments;
    }
    
    // Method to update payment information in the database
    public static boolean updatePayment(int id,String name,String cardNo , String month, String year, String cvv) {
    	
    	boolean isSuccess = false;
        	try {
        		
        		con = DBConnect.getConnection();
        		
        		// SQL query to update payment data in the 'payment' table
        		String sql = "update payment set name='"+name+"',cardno='"+cardNo+"',month='"+month+"' ,year='"+year+"', cvv='"+cvv+"' "+"where pid ='"+id+"'";
        		java.sql.PreparedStatement pstmt = con.prepareStatement(sql);
        		
        		int rs = pstmt.executeUpdate(sql);
        		 
        		if(rs > 0) {
        			isSuccess = true;
        		}
        		else {
        			isSuccess = false;
        		}
        		
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	
        	return isSuccess;
        }
    
    // Method to delete a payment from the database
    public static boolean deletePayment(int id) {
        boolean isDeleted = false;
        Connection con = null;

        try {
            con = DBConnect.getConnection();
            String sql = "DELETE FROM payment WHERE pid=?";
            java.sql.PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, id);

            int rowsDeleted = pstmt.executeUpdate();
            if (rowsDeleted > 0) {
                isDeleted = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isDeleted;
    }
}
