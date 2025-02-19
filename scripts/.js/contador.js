function actualizarContador() {
    fetch('../../cgi-bin/contador.sh')
        .then(response => response.text())
        .then(data => {
            document.getElementById("contador").innerHTML = data;
        })
        .catch(error => console.error('Error:', error));
}

setInterval(actualizarContador, 60000);