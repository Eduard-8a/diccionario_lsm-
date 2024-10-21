// Cargar el DOM
document.addEventListener('DOMContentLoaded', () => {
    const searchButton = document.getElementById('search-button'); // Botón de búsqueda
    const searchBar = document.getElementById('search-bar'); // Campo de entrada de búsqueda
    const suggestions = document.getElementById('suggestions'); // Lista de sugerencias de autocompletado

    // Función para realizar la búsqueda
    const performSearch = () => {
        const query = searchBar.value.trim();
        if (query) {
            window.location.href = `/sign.html?word=${query}`;
        }
    };

    // Manejador de eventos para el botón de búsqueda
    searchButton.addEventListener('click', performSearch);

    // Manejador de eventos para la tecla Enter
    searchBar.addEventListener('keydown', (event) => {
        if (event.key === 'Enter') {
            performSearch();
        }
    });

    // Manejador de eventos para el autocompletado
    searchBar.addEventListener('input', () => {
        const query = searchBar.value.trim();
        if (query.length > 1) {
            fetch(`/api/autocomplete?term=${query}`)
                .then(response => response.json())
                .then(data => {
                    suggestions.innerHTML = '';
                    data.forEach(word => {
                        const option = document.createElement('option');
                        option.value = word;
                        suggestions.appendChild(option);
                    });
                })
                .catch(error => {
                    console.error('Error fetching autocomplete suggestions:', error);
                });
        } else {
            suggestions.innerHTML = '';
        }
    });
});
