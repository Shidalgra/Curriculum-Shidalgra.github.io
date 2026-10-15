document.addEventListener("DOMContentLoaded", () => {
    const translateBtn = document.getElementById("translate-btn");
    const translateText = document.getElementById("translate-text");

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