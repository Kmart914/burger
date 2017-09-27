var express = require("express");
var bodyParser = require("body-parser");
var methodOverride = require("method-override");

var port = 3333;

var app = express();

app.use(express.static("public"));

app.use(bodyParser.urlencoded({ extended: false}));

app.use(methodOverride("_method"));

var exphbs = require("express-handlebars");

var routes = require("./controllers/burger_controllers.js");

app.use("/", routes);

app.listen(port);
