document.addEventListener("DOMContentLoaded", () => {
  const navToggle = document.getElementById("navToggle");
  const mainNav = document.getElementById("mainNav");
  const yearSpan = document.getElementById("year");

  // Hamburger menu toggle
  if (navToggle && mainNav) {
    navToggle.addEventListener("click", () => {
      mainNav.classList.toggle("open");
    });

    // Close nav when clicking a link (mobile)
    mainNav.addEventListener("click", event => {
      if (event.target.tagName.toLowerCase() === "a") {
        mainNav.classList.remove("open");
      }
    });
  }

  // Set current year in footer
  if (yearSpan) {
    yearSpan.textContent = new Date().getFullYear();
  }

  // Smooth scroll for in-page anchors
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener("click", event => {
      const targetId = anchor.getAttribute("href");
      if (!targetId || targetId === "#" || !document.querySelector(targetId)) {
        return;
      }
      event.preventDefault();
      const target = document.querySelector(targetId);
      const offsetTop = target.getBoundingClientRect().top + window.scrollY - 72;

      window.scrollTo({
        top: offsetTop,
        behavior: "smooth"
      });
    });
  });
});
