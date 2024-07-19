<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Form</title>
    <link rel="stylesheet" href="payment.css">
</head>
<body>
<br>
<div class="container">
    <section class="payment-form">
        <h1>Enter Payment Information</h1>
        <form action="paymentInsert" method="post">
            <div class="form-group">
                <label for="name">Name on Card:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" pattern="[0-9]{13,16}" title="Enter card number" required>
            </div>
            <div class="form-group">
                <label for="expMonth">Expiration Month:</label>
                <input type="text" id="expMonth" name="expMonth" pattern="(0[1-9]|1[0-2])" title="Enter a valid expiration month (01-12)" required>
            </div>
            <div class="form-group">
                <label for="expYear">Expiration Year:</label>
                <input type="text" id="expYear" name="expYear" pattern="[0-9]{4}" title="Enter a valid expiration year (e.g., 2023)" required>
            </div>
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" pattern="[0-9]{3}" title="Enter a valid CVV (3-4 digits)" required>
            </div>
            <input type="submit" value="Add Payment Details">
        </form>
    </section>

    <section class="payment-details">
        <h2>Payment Details</h2>
        
    <c:forEach items="${payments}" var="payment">
    
    <c:set var="paymentId" value="${payment.paymentId}"/> 
    <c:set var="name" value="${payment.name}"/>
	<c:set var="cardNo" value="${payment.cardNo}"/>
	<c:set var="month" value="${payment.month}"/>
	<c:set var="year" value="${payment.year}"/>
	<c:set var="cvv" value="${payment.cvv}"/>
	
            <div class="payment-entry">
                <p><strong>${payment.name}</strong></p>
                <p>Card Number: ${payment.cardNo}</p>
                <p>Expiration Month: ${payment.month}</p>
                <p>Expiration Year: ${payment.year}</p>
                <p>CVV: ${payment.cvv}</p>
                <a href="deletePaymentServlet?paymentID=${payment.paymentId}"  class="delete-payment">Delete</a>
                
     <c:url value="UpdatePayment.jsp" var="paymentdata">
        <c:param name="paymentId" value="${paymentId}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="cardNo" value="${cardNo}"/>
		<c:param name="month" value="${month}"/>
		<c:param name="year" value="${year}"/>
		<c:param name="cvv" value="${cvv}"/>
		</c:url>
		<a href="${paymentdata}" class="update-review">Edit</a>
		<a href="PaySuccess.jsp" class="pay-now">Pay Now</a>
		
            </div>
        </c:forEach>
    </section>
</div>

</body>
</html>
