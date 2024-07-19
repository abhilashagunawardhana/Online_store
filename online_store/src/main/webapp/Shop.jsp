<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Store Cart</title>
    <link rel="stylesheet" href="Shop.css">
    
    <script type="text/javascript">document.addEventListener("DOMContentLoaded", function() {
        const popup = document.getElementById("welcome-popup");
        const closeBtn = document.getElementById("close-popup");

        // Show the popup on page load
        popup.style.display = "block";

        // Close the popup when the close button is clicked
        closeBtn.addEventListener("click", function() {
            popup.style.display = "none";
        });

        // Close the popup when clicking outside of it
        window.addEventListener("click", function(event) {
            if (event.target == popup) {
                popup.style.display = "none";
            }
        });
    });</script>
    
</head>
<body>

<!-- include header.jsp -->
<jsp:include page="header.jsp" />

<div id="welcome-popup" class="popup">
        <div class="popup-content">
            <span class="close" id="close-popup">&times;</span>
            <br><h2>  Today 30% Discount Available!  </h2><br>
            
        </div>
    </div>

    <br><br>
        <h1 class="abcd">Welcome to the Music Store</h1><br><br><br><br>
    
    <div class="album-container">
        <div class="album"><br>
            <img class="album-image" src="./img/Album1.png" alt="Album 1">
            <h2>Thriller</h2>
            <p>Artist: Michael Jackson</p>
            <p>Price: $9.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album2.png" alt="Album 2">
            <h2>Love Story</h2>
            <p>Artist: Tayler Swift</p>
            <p>Price: $12.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album3.png" alt="Album 3">
            <h2>The Scientist</h2>
            <p>Artist: Coldplay</p>
            <p>Price: $11.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
    </div><br><br><br><br>
    
    <div class="album-container">
        <div class="album"><br>
            <img class="album-image" src="./img/Album4.png" alt="Album 4">
            <h2>Photograph</h2>
            <p>Artist: Ed Sheeran</p>
            <p>Price: $14.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album5.png" alt="Album 5">
            <h2>Mockingbird</h2>
            <p>Artist: Eminem</p>
            <p>Price: $9.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album6.png" alt="Album 6">
            <h2>Heartless</h2>
            <p>Artist: The Weeknd</p>
            <p>Price: $13.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
    </div><br><br><br><br>
    
     <div class="album-container">
        <div class="album"><br>
            <img class="album-image" src="./img/Album7.png" alt="Album 1">
            <h2>Good Girl Gone Bad</h2>
            <p>Artist: Rihanna</p>
            <p>Price: $9.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album8.png" alt="Album 2">
            <h2>Nevermind</h2>
            <p>Artist: Nirvana</p>
            <p>Price: $12.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album9.png" alt="Album 3">
            <h2>Believe</h2>
            <p>Artist: Justin Bieber</p>
            <p>Price: $11.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
    </div><br><br><br><br>
    
    <div class="album-container">
        <div class="album"><br>
            <img class="album-image" src="./img/Album10.png" alt="Album 4">
            <h2>Honeymoon</h2>
            <p>Artist: Lana Del Rey</p>
            <p>Price: $14.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album11.png" alt="Album 5">
            <h2>Thank U, Next</h2>
            <p>Artist: Ariana Grande</p>
            <p>Price: $9.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
        <div class="album"><br>
            <img class="album-image" src="./img/Album12.png" alt="Album 6">
            <h2>Take Care</h2>
            <p>Artist: Drake</p>
            <p>Price: $13.99</p><br>
            <a class="buy-button" href="payment.jsp">Buy Now</a>
        </div>
        
    </div>
    
    <div class="footer-container">
  <jsp:include page="footer.jsp" />
  </div>
    
</body>
</html>