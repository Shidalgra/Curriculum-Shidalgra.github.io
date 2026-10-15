document.addEventListener("DOMContentLoaded", () => {
    const themeBtn = document.getElementById("theme-btn");
    const themeText = document.getElementById("theme-text");
    const bodyElement = document.body;

    // --- 1. Control de Modo Oscuro / Claro ---
    if (themeBtn) {
        themeBtn.addEventListener("click", (e) => {
            e.preventDefault();
            bodyElement.classList.toggle("dark-mode");

            const icon = themeBtn.querySelector("i");

            if (bodyElement.classList.contains("dark-mode")) {
                icon.className = "fa-solid fa-sun"; // Icono de sol
                if (themeText) themeText.textContent = "Light"; // Si está en oscuro, el botón ofrece pasar a claro
            } else {
                icon.className = "fa-solid fa-moon"; // Icono de luna
                if (themeText) themeText.textContent = "Dark"; // Si está en claro, el botón ofrece pasar a oscuro
            }
        });
    }
});