// Cargar el DOM
document.addEventListener('DOMContentLoaded', () => {
    const params = new URLSearchParams(window.location.search);
    const letter = params.get('letter');
    const letterTitle = document.getElementById('letter-title');
    const letterGrid = document.getElementById('letter-grid');

    if (letter) {
        letterTitle.textContent = `Palabras con la letra ${letter}`;
        
        fetch(`/api/words?letter=${letter}`)
            .then(response => response.json())
            .then(data => {
                letterGrid.innerHTML = '';
                data.forEach(word => {
                    const wordItem = document.createElement('div');
                    wordItem.classList.add('letter-grid-item');
                    wordItem.innerHTML = `
                        <img src="${word.imagen}" alt="Imagen de ${word.palabra}">
                        <p><a href="sign.html?word=${word.palabra}">${word.palabra}</a></p>
                    `;
                    letterGrid.appendChild(wordItem);
                });
            })
            .catch(error => {
                console.error('Error loading words:', error);
                letterGrid.innerHTML = '<p>Error al cargar las palabras</p>';
            });
    } else {
        letterTitle.textContent = "No se especificó ninguna letra";
        letterGrid.innerHTML = '';
    }
});
