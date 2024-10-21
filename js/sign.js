// Cargar el DOM
document.addEventListener('DOMContentLoaded', () => {
    const params = new URLSearchParams(window.location.search);
    const word = params.get('word');

    const backButton = document.getElementById('back-button');
    backButton.addEventListener('click', () => {
        window.history.back();
    });

    const searchButton = document.getElementById('search-button');
    const searchBar = document.getElementById('search-bar');
    const searchError = document.getElementById('search-error');

    // Función para realizar la búsqueda
    const performSearch = () => {
        const query = searchBar.value;
        // Limpiar mensajes de error anteriores
        if (query) {
            fetch(`/api/search?q=${query}`)
                .then(response => response.json())
                .then(data => {
                    if (data.length > 0) {
                        window.location.href = `/sign.html?word=${query}`;
                    } else {
                        showTemporaryMessage(searchError, 'Palabra no encontrada');
                    }
                })
                .catch(error => {
                    console.error('Error fetching sign:', error);
                    showTemporaryMessage(searchError, 'Error al buscar la palabra');
                });
        } else {
            showTemporaryMessage(searchError, 'Por favor, ingrese una palabra para buscar');
        }
    };

    searchButton.addEventListener('click', performSearch);

    // Agregar evento para buscar con la tecla Enter
    searchBar.addEventListener('keypress', (event) => {
        if (event.key === 'Enter') {
            performSearch();
        }
    });

    if (word) {
        fetch(`/api/sign?word=${word}`)
            .then(response => response.json())
            .then(data => {
                if (data.length > 0) {
                    const sign = data[0];
                    document.getElementById('sign-word').textContent = sign.palabra || sign.letra;
                    document.getElementById('sign-description').textContent = sign.descripcion;
                    document.getElementById('sign-image').src = sign.imagen;
                    document.getElementById('sign-image').alt = `Imagen de la seña ${sign.palabra || sign.letra}`;
                } else {
                    document.getElementById('sign-word').textContent = "Seña no encontrada";
                    document.getElementById('sign-description').textContent = "";
                    document.getElementById('sign-image').style.display = "none";
                }
            })
            .catch(error => {
                console.error('Error fetching sign:', error);
                document.getElementById('sign-word').textContent = "Error cargando la seña";
            });
    } else {
        document.getElementById('sign-word').textContent = "No se especificó ninguna palabra";
        document.getElementById('sign-description').textContent = "";
        document.getElementById('sign-image').style.display = "none";
    }
});

// Función para mostrar un mensaje temporal
const showTemporaryMessage = (element, message, duration = 3000) => {
    element.innerHTML = `<p>${message}</p>`;
    setTimeout(() => {
        element.innerHTML = '';
    }, duration);
};
