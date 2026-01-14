const express = require('express');
const app = express();
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.get('/', (req, res) => {
res.sendFile(__dirname + '/public/index.html');
});
app.get('/ajuda', (req, res) => {
res.send('Pàgina d’Ajuda');
});
app.get('/contacte', (req, res) => {
res.send('Pàgina de contacte');
});
app.get('/envia', (req, res) => {
res.send('dades enviades');
});
app.post('/dades', (req, res) => {
res.send(`Dades rebudes: ${req.body.valor}`);
});
app.get('/usuaris', (req, res) => {
res.send('Llista d’usuaris');
});
app.post('/crear', (req, res) => {
res.send('Usuari creat');
});
const http = require('http');
const fs = require('fs');
const querystring = require('querystring');
const server = http.createServer((req, res) => {
if (req.method === 'POST' && req.url === '/formulari.html'){
    fs .readFile('./public/formulari.html', 'utf8', (err, data) => {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end(data);
    });
}
else if (req.method === 'POST' && req.url === '/procesar'){
    let body = '';
    req.on('data', chunk => {
        body += chunk.toString();
    });
    req.on('end', () => {
        const formData = querystring.parse(body);
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end(`Formulari rebut. Benvingut, ${formData.usuari}`);
        console.log('Dades del formulari:', formData);
    })
    }else{
        res.end('Ruta no trobada');
    }
    if (email !== confirmacioEmail) {
        errors.push("Els correus electrònics no coincideixen.");
    }
});
app.post('/procesar', (req, res) => {
const nom = req.body.usuari;
res.send(`Formulari rebut. Benvingut, ${nom}`);
});
app.use(express.json());
app.post('/contacte', (req, res) => {
const { nom, email, missatge } = req.body;
// Validació bàsica
if (!nom || !email || !missatge) {
return res.status(400).json({ missatge: "Tots els camps són obligatoris" });
}
console.log("Missatge rebut:", { nom, email, missatge });
res.json({ missatge: `Gràcies per contactar-nos, ${nom}. Hem rebut el teu missatge.` });
});
app.listen(3000, () => {
console.log('Servidor escoltant a http://localhost:3000');
});



