package online_store;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/paymentInsert")
public class paymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Handle POST requests to insert payment information
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter ("name");
		String cardNo = request.getParameter ("cardNumber");
		String month = request.getParameter ("expMonth");
		String year = request.getParameter ("expYear");
		String cvv = request.getParameter ("cvv");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertpayment(name, cardNo, month, year, cvv);
		
		if(isTrue == true) {
			
			List<Payment> payments = PaymentDBUtil.retrievePayments();
			request.setAttribute("payments", payments);
			
			RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
			dis. forward (request, response);
			
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2. forward (request, response);
		}
		
		
	}
	


}