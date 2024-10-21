document.addEventListener('DOMContentLoaded', () => {
    const searchButton = document.getElementById('search-button');
    const searchBar = document.getElementById('search-bar');
    const searchResults = document.getElementById('search-results');
    const searchError = document.getElementById('search-error');
    const trendingContainer = document.querySelector('.trending-items');
    const alphabetContainer = document.getElementById('alphabet-container');
    const searchHistoryContainer = document.getElementById('search-history');
    const letterElement = document.getElementById('letter');
    const wordsContainer = document.getElementById('words-container');

    // Función para agregar una búsqueda al historial en Local Storage
    const addToHistory = (word) => {
        let history = JSON.parse(localStorage.getItem('searchHistory')) || [];
        history.push(word);
        localStorage.setItem('searchHistory', JSON.stringify(history));
    };

    // Función para mostrar el historial de búsqueda desde Local Storage
    const loadSearchHistory = () => {
        const history = JSON.parse(localStorage.getItem('searchHistory')) || [];
        searchHistoryContainer.innerHTML = ''; // Limpiar historial previo

        history.forEach(entry => {
            const historyItem = document.createElement('li');
            historyItem.classList.add('history-item');
            historyItem.innerHTML = `<a href="/sign.html?word=${entry}">${entry}</a>`;
            searchHistoryContainer.appendChild(historyItem);
        });
    };

    // Función para redirigir o mostrar mensaje de error
    const redirectOrShowError = (query, data) => {
        if (data.length > 0) {
            // Redirigir a sign.html con la palabra encontrada
            window.location.href = `/sign.html?word=${query}`;
        } else {
            // Mostrar mensaje de "palabra no encontrada"
            showTemporaryMessage(searchError, 'Palabra no encontrada');
        }
    };

    // Función para mostrar un mensaje temporal
    const showTemporaryMessage = (element, message, duration = 3000) => {
        element.innerHTML = `<p>${message}</p>`;
        setTimeout(() => {
            element.innerHTML = '';
        }, duration);
    };

    // Función para realizar la búsqueda
    const performSearch = () => {
        const query = searchBar.value;
        // Limpiar mensajes de error anteriores
        searchError.innerHTML = '';
        searchResults.innerHTML = '';
        
        if (query) {
            fetch(`/api/search?q=${query}`)
                .then(response => response.json())
                .then(data => {
                    redirectOrShowError(query, data);
                    addToHistory(query); // Agregar búsqueda al historial
                    loadSearchHistory(); // Cargar historial actualizado
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

    // Cargar señas trending
    const loadTrendingSigns = () => {
        fetch('/api/trending')
            .then(response => response.json())
            .then(data => {
                trendingContainer.innerHTML = '';
                data.forEach(sign => {
                    const trendingItem = document.createElement('div');
                    trendingItem.classList.add('trending-item');
                    trendingItem.innerHTML = `
                        <a href="sign.html?word=${sign.palabra}"><img src="${sign.imagen}" alt="${sign.palabra}"></a>
                        <p><a href="sign.html?word=${sign.palabra}">${sign.palabra}</a></p>
                    `;
                    trendingContainer.appendChild(trendingItem);
                });
            })
            .catch(error => {
                console.error('Error loading trending signs:', error);
                trendingContainer.innerHTML = '<p>Error al cargar las señas destacadas</p>';
            });
    };

    // Cargar alfabeto
    const loadAlphabet = () => {
        fetch('/api/alphabet')
            .then(response => response.json())
            .then(data => {
                alphabetContainer.innerHTML = '';
                data.forEach(letter => {
                    const letterItem = document.createElement('div');
                    letterItem.classList.add('letter');
                    letterItem.innerHTML = `
                        <a href="/sign.html?word=${letter.letra}">
                            <img src="${letter.imagen}" alt="Seña de la letra ${letter.letra}">
                            <p>${letter.letra}</p>
                        </a>
                    `;
                    alphabetContainer.appendChild(letterItem);
                });
            })
            .catch(error => {
                console.error('Error loading alphabet:', error);
                alphabetContainer.innerHTML = '<p>Error al cargar el alfabeto</p>';
            });
    };

    // Manejar clics en la búsqueda alfabética
    document.querySelectorAll('.alphabet-link').forEach(letterLink => {
        letterLink.addEventListener('click', (event) => {
            event.preventDefault();
            const letter = letterLink.textContent;
            window.location.href = `/letter.html?letter=${letter}`;
        });
    });

    // Cargar palabras de una letra específica en letter.html
    const loadWordsByLetter = () => {
        const params = new URLSearchParams(window.location.search);
        const letter = params.get('letter');
        if (letter) {
            fetch(`/api/words?letter=${letter}`)
                .then(response => response.json())
                .then(data => {
                    letterElement.textContent = letter;
                    wordsContainer.innerHTML = '';
                    data.forEach(word => {
                        const wordItem = document.createElement('div');
                        wordItem.classList.add('word-item');
                        wordItem.innerHTML = `
                            <a href="/sign.html?word=${word.palabra}">
                                <img src="${word.imagen}" alt="Seña de ${word.palabra}">
                                <p>${word.palabra}</p>
                            </a>
                        `;
                        wordsContainer.appendChild(wordItem);
                    });
                })
                .catch(error => {
                    console.error('Error loading words:', error);
                    wordsContainer.innerHTML = '<p>Error al cargar las palabras</p>';
                });
        }
    };

    loadTrendingSigns();
    loadAlphabet();
    loadSearchHistory(); // Cargar historial al cargar la página

    if (window.location.pathname === '/letter.html') {
        loadWordsByLetter();
    }
});
