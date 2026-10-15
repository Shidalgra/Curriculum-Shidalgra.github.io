document.addEventListener("DOMContentLoaded", () => {
    const themeBtn = document.getElementById("theme-btn");
    const translateBtn = document.getElementById("translate-btn");
    const translateText = document.getElementById("translate-text");
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
                if (themeText) themeText.textContent = "White"; // Si está en oscuro, el botón ofrece pasar a claro
            } else {
                icon.className = "fa-solid fa-moon"; // Icono de luna
                if (themeText) themeText.textContent = "Dark"; // Si está en claro, el botón ofrece pasar a oscuro
            }
        });
    }

    // --- 2. Traducción real de toda la página ---
    if (translateBtn) {
        translateBtn.addEventListener("click", (e) => {
            e.preventDefault();

            // Buscar el selector oculto de Google Translate
            const googleSelect = document.querySelector(".goog-te-combo");

            if (googleSelect) {
                if (googleSelect.value === "" || googleSelect.value === "en") {
                    googleSelect.value = "es"; // Traducir al español
                    googleSelect.dispatchEvent(new Event("change"));
                    translateText.textContent = "English";
                } else {
                    googleSelect.value = "en"; // Regresar a inglés
                    googleSelect.dispatchEvent(new Event("change"));
                    translateText.textContent = "Español";
                }
            } else {
                alert("El sistema de traducción se está cargando. Inténtalo de nuevo en un segundo.");
            }
        });
    }

    // Inyectar el contenedor invisible necesario para Google Translate
    if (!document.getElementById("google_translate_element")) {
        let div = document.createElement("div");
        div.id = "google_translate_element";
        div.style.display = "none"; // Se oculta para no alterar tu diseño original
        document.body.appendChild(div);

        let script = document.createElement("script");
        script.type = "text/javascript";
        script.src = "https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit";
        document.body.appendChild(script);
    }
});

// Función de callback obligatoria para Google Translate
window.googleTranslateElementInit = function () {
    new google.translate.TranslateElement({
        pageLanguage: 'en',
        includedLanguages: 'es,en',
        autoDisplay: false
    }, 'google_translate_element');
};