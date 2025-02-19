let currentIndex = 0;

function showPersonajes() {
    const personajes = document.querySelectorAll('.personaje');
    personajes.forEach((personaje, index) => {
        personaje.classList.add('hidden');
        if (index >= currentIndex && index < currentIndex + 3) {
            personaje.classList.remove('hidden');
        }
    });
}

function moveLeft() {
    if (currentIndex > 0) {
        currentIndex--;
        showPersonajes();
    }
}

function moveRight() {
    const personajes = document.querySelectorAll('.personaje');
    if (currentIndex < personajes.length - 3) {
        currentIndex++;
        showPersonajes();
    }
}

window.onload = function () {
    actualizarContador();
    showPersonajes();
    document.querySelector('.slider-control .left').addEventListener('click', moveLeft);
    document.querySelector('.slider-control .right').addEventListener('click', moveRight);
};