var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');
const PORT = process.env.PORT || 80
var compression = require('compression');
var app = express();
app.use(compression());
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
})); 
   
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(__dirname));
app.use('/json', express.static(path.join(path.join(__dirname, 'bhh_gama'),'geojson')))

app.get('/', function (request, response) {
    response.sendFile(path.join(__dirname + '/login.html'));
});

app.post('/auth', function (request, response) {
    var username = request.body.username;
    var password = request.body.password;
    if (username && password) {
        if (username == "root" && password == "root") {
            request.session.loggedin = true;
            request.session.username = username;
            response.redirect('/home');
        } else {
            response.send('Incorrect Username and/or Password!');
        }
        response.end();
    } else {
        response.send('Please enter Username and Password!');
        response.end();
    }
});

app.get('/home', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(__dirname + '/index_dash.html');
    } else {
        //response.send('Please login to view this page!');
        response.redirect('/');
        response.end();
    }
});

app.get('/geoai', function (request, response) {
    if (request.session.loggedin) {
        response.sendFile(__dirname + '/index_ai.html');
    } else {
        //response.send('Please login to view this page!');
        response.redirect('/');
        response.end();
    }
});


app.listen(PORT, () => console.log(`Listening on ${PORT}`))
