<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Successful</title>
    <link rel="stylesheet" type="text/css" href="success.css">
    
    <script>
document.getElementById("downloadLink").addEventListener("click", function(event) {
    // Prevent the default behavior of the link
    event.preventDefault();

    // Get the file URL
    var fileURL = this.getAttribute("href");

    // Create an anchor element to trigger the download
    var downloadAnchor = document.createElement("a");
    downloadAnchor.style.display = "none";
    downloadAnchor.href = fileURL;
    downloadAnchor.download = "yourfile.pdf"; // Specify the desired file name
    document.body.appendChild(downloadAnchor);
    
    // Trigger the download
    downloadAnchor.click();
    
    // Clean up
    document.body.removeChild(downloadAnchor);
});
</script>
    
</head>
<body>
<div class="container">
	<img src="./img/pay.png" alt="Payment Image" style="display: block; margin: 0 auto;">
    <h1>Payment Successful!</h1>
    <p>Your payment has been successfully processed.</p>
    <p>Thank you for choosing our service.</p>
    
    <a href="./mp3/abc.mp3" download>
    <button>Download Album</button>
</a>
</div>
</body>
</html>