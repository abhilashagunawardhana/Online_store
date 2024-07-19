package online_store;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletePaymentServlet")
public class deletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("paymentID"));

	        boolean isDeleted = PaymentDBUtil.deletePayment(id);

	        if (isDeleted) {
	            // Redirect to the payment.jsp page with a success message
	        	List<Payment> payments = PaymentDBUtil.retrievePayments(); // Retrieve all payment
	            request.setAttribute("payments", payments); // Add payments to the request
	            RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
	            dis.forward(request, response);
	        } else {
	            // Redirect to an error page or handle the error as needed
	            response.sendRedirect("error.jsp");
	        }
	    }

}
