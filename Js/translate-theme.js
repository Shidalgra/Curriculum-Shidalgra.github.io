document.addEventListener("DOMContentLoaded", () => {
    const translateBtn = document.getElementById("translate-btn");
    const translateText = document.getElementById("translate-text");
    const themeText = document.getElementById("theme-text");

    if (translateBtn) {
        translateBtn.addEventListener("click", (e) => {
            e.preventDefault();

            // Buscar el selector oculto de Google Translate
            const googleSelect = document.querySelector(".goog-te-combo");

            if (googleSelect) {
                // Determinamos el idioma actual basándonos directamente en el select de Google
                // Si el valor actual es 'es', significa que está en español y debemos cambiar a inglés ('en')
                if (googleSelect.value === "es") {
                    googleSelect.value = "en";
                    googleSelect.dispatchEvent(new Event("change"));
                    
                    // Textos fijos cuando pasa a Inglés
                    translateText.textContent = "Español";
                    if (themeText) {
                        themeText.textContent = document.body.classList.contains("dark-mode") ? "Dark" : "Light";
                    }
                } else {
                    // Si está en inglés, vacío o cualquier otro, lo pasamos a español ('es')
                    googleSelect.value = "es";
                    googleSelect.dispatchEvent(new Event("change"));
                    
                    // Textos fijos cuando pasa a Español
                    translateText.textContent = "English";
                    if (themeText) {
                        themeText.textContent = document.body.classList.contains("dark-mode") ? "Oscuro" : "Claro";
                    }
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
        div.style.display = "none";
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