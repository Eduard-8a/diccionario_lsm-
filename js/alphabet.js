// Cargar el DOM
document.addEventListener('DOMContentLoaded', () => {
    const alphabetContainer = document.getElementById('alphabet-container');

    // Función para cargar señas del alfabeto
    const loadAlphabetSigns = () => {
        fetch('/api/alphabet')
            .then(response => response.json())
            .then(data => {
                alphabetContainer.innerHTML = ''; // Limpiar contenedor
                if (data.length > 0) {
                    data.forEach(sign => {
                        const alphabetItem = document.createElement('div');
                        alphabetItem.classList.add('alphabet-item');
                        alphabetItem.innerHTML = `
                            <img src="${sign.imagen}" alt="${sign.letra}">
                            <p>${sign.letra}</p>
                        `;
                        alphabetItem.addEventListener('click', () => {
                            window.location.href = `/sign.html?word=${sign.letra}`;
                        });
                        alphabetContainer.appendChild(alphabetItem);
                    });
                } else {
                    alphabetContainer.innerHTML = '<p>No se encontraron señas para el alfabeto</p>';
                }
            })
            .catch(error => {
                console.error('Error loading alphabet signs:', error);
                alphabetContainer.innerHTML = '<p>Error al cargar señas para el alfabeto</p>';
            });
    };

    loadAlphabetSigns();
});
