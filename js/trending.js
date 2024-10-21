// Cargar el DOM
document.addEventListener('DOMContentLoaded', () => {
    const trendingContainer = document.querySelector('.trending-items');

    // Función para cargar señas trending
    const loadTrendingSigns = () => {
        fetch('/api/trending')
            .then(response => response.json())
            .then(data => {
                trendingContainer.innerHTML = ''; // Limpiar contenedor

                if (data.length > 0) {
                    data.forEach(sign => {
                        const trendingItem = document.createElement('div');
                        trendingItem.classList.add('trending-item');
                        trendingItem.innerHTML = `
                            <img src="${sign.imagen}" alt="${sign.palabra}">
                            <p>${sign.palabra}</p>
                        `;
                        trendingItem.addEventListener('click', () => {
                            window.location.href = `/sign.html?word=${sign.palabra}`;
                        });
                        trendingContainer.appendChild(trendingItem);
                    });
                } else {
                    trendingContainer.innerHTML = '<p>No se encontraron señas</p>';
                }
            })
            .catch(error => {
                console.error('Error loading trending signs:', error);
                trendingContainer.innerHTML = '<p>Error al cargar las señas</p>';
            });
    };

    loadTrendingSigns();
});
