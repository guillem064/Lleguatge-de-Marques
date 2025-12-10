function changeImage(canvi) {
    document.getElementById('dacm').src = canvi;
    document.getElementById('dacm').style.visibility = 'visible';
}
function canviaColor(element) {
    element.style.backgroundColor = "lightblue";
}

function restauraColor(element) {
    element.style.backgroundColor = "white";
}

function canviaTextColor(element) {
    element.style.color = "black";
}
function restauraTextColor(element) {
    element.style.color = "white";
}
let temps = 0;

function iniciarRellotge() {
    setInterval(() => {
        temps++;

        let hores = Math.floor(temps / 3600);
        let minuts = Math.floor((temps % 3600) / 60);
        let segons = temps % 60;

        hores = hores.toString().padStart(2, '0');
        minuts = minuts.toString().padStart(2, '0');
        segons = segons.toString().padStart(2, '0');

        document.getElementById("rellotge").innerText = `Temps: ${hores}:${minuts}:${segons}`;
    }, 1000);
}

// Iniciar rellotge en carregar la pàgina
window.onload = iniciarRellotge;

function validar() {
    const p1 = document.getElementById("pwd1").value;
    const p2 = document.getElementById("pwd2").value;

    if (p1 === "" || p2 === "") {
        alert("Error: Els camps no poden estar buits.");
    } 
    if (p1.length < 8) {
        alert("Error: La contrasenya ha de tenir almenys 8 caràcters.");
    }
    else if (p1 !== p2) {
        alert("Error: Les contrasenyes no coincideixen.");
    } 
    else {
        alert("S’ha canviat correctament la contrasenya");
    }
}