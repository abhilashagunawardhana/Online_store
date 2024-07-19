package online_store;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatePaymentServlet")
public class updatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Handle POST requests to update payment information
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pid = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String cardNo = request.getParameter("cardno");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String cvv = request.getParameter("cvv");
		boolean isTrue;
		
		isTrue = PaymentDBUtil.updatePayment(pid, name, cardNo, month, year, cvv);
		
		if(isTrue == true) {
			
			
			List<Payment> payments = PaymentDBUtil.retrievePayments(); // Retrieve all payment details
            request.setAttribute("payments", payments);
			RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
			dis.forward(request, response);
		}
	}

}
