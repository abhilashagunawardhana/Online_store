<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="update.css">
</head>
<body>

<%
		String id = request.getParameter("paymentId");
		String name = request.getParameter("name");
		String cardno = request.getParameter("cardNo");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String cvv = request.getParameter("cvv");
		
	%>

 <h2>Update Payment</h2>
 
    <form action="updatePayment" method="post">
        <input type="text" name="id" value="<%= id %>"readonly><br><br>
        
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="<%= name %>" required><br><br>
        
        <label for="rating">Card Number:</label>
        <input type="number" name="cardno" id="cardno" value="<%= cardno %>" required><br><br>
        
        <label for="month">Expiration Month:</label>
        <input type="text" name="month" id="month" value="<%= month %>" required><br><br>
        
        <label for="comment">Expiration Year:</label>
        <input type="text" name="year" id="year" value="<%= year %>" required><br><br>
        
        <label for="comment">CVV:</label>
        <input type="text"name="cvv" id="cvv" value="<%= cvv %>" required><br><br>
        
        <input type="submit" name="submit" value="Update Payment">
    </form>

</body>
</html>