// ===================  setup required vars
var inquirer = require("inquirer");
var mysql = require("mysql");

// =================== CONNECT to SQL 
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "camazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  startUp();
});



// =================== inquirer 
function startUp() {

  inquirer.prompt([{

      type: "confirm",
      name: "confirm",
      message: "Welcome to Camazon! Would you like to view inventory?",
      default: true

  }]).then(function(user) {
      if (user.confirm === true) {
          inventory();
      } else {
          console.log("Thanks. See you next time.");
      }
  });
}
