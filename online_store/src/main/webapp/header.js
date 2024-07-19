/**
 * 
 */
 // main.js

document.addEventListener("DOMContentLoaded", function () {
    const mobileNavButton = document.querySelector(".mobile-nav-button");
    const mobileMenu = document.querySelector(".mobile-menu");
    const closeButton = document.querySelector(".close-button");

    mobileNavButton.addEventListener("click", () => {
        mobileMenu.classList.add("open");
    });

    closeButton.addEventListener("click", () => {
        mobileMenu.classList.remove("open");
    });
});