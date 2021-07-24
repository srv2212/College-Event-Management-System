const express = require('express')
const app = express()
var oracledb = require('oracledb');
var dbConfig = require('./dbconfig.js');
const path = require('path')
var http = require("http");
var url = require("url");
const pubdirpath = path.join(__dirname,'/public')
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(pubdirpath))
let connection;
var oracledb = require('oracledb');

app.post('/signup', (req, res) => {
  var username = String(req.body.Username);
   var email = String(req.body.email);
   var password = String(req.body.password);
   var phonenum = req.body.phone_number;
  (async function() {
    try{
    connection = await oracledb.getConnection({
      user : 'SYSTEM',
      password : 'niranjan2000',
      connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
 });
 console.log("Successfully connected to Oracle!")

 const sqlQuery = `INSERT INTO co_ordinator VALUES (:1, :2,:3,:4,:5)`;

 binds = [ [null,username,email,password,phonenum ]];
 
 result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});
 
 console.log("Number of inserted rows:", result.rowsAffected);
 return res.redirect('success.html');
} catch(err) {
  console.log("Error: ", err);
} finally {
  if (connection) {
    try {
      await connection.close();
    } catch(err) {
     console.error(err);
    }
  }
}
})()
  
  
  });
app.post('/blog',(req,res)=>{
    var emails = String(req.body.email);
    var passkey = String(req.body.pass);
    var obtained1 = '';
    var obtained2 = '';
    var redirect=0;
    (async function() {
    try{
       connection = await oracledb.getConnection({
            user : 'SYSTEM',
            password : 'niranjan2000',
            connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
       });
       console.log("Successfully connected to Oracle!")
       connection.execute(
        `SELECT password
         FROM co_ordinator where email_id = :emails`,
        [emails],  
       function(err, result) {
          if (err) {
            console.error(err.message);
            return;
          }
          obtained1 = String(result.rows);
          
          if(obtained1 === passkey && result){
            redirect = 1;
          }
          
          if (redirect)
    {
        console.log("Success!");
        return res.redirect('admin.html');
    }
    else
    {
        console.log("Error!");
    }
          connection.close();
       });
   }
    catch(err) {
        console.log("Error: ", err);
      } finally {
        if (connection) {
          try {
            
          } catch(err) {
           
          }
        }
      }
    })()
})
app.post('/add_location',(req,res)=>{
  var building = String(req.body.building);
  var roomno = String(req.body.roomno);
  (async function() {
    try{
    connection = await oracledb.getConnection({
      user : 'SYSTEM',
      password : 'niranjan2000',
      connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
 });
 console.log("Successfully connected to Oracle!")
 const sqlQuery = `INSERT INTO location VALUES (:1, :2,:3)`;

 binds = [ [null,building,roomno ]];
 
 result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});
 
 console.log("Number of inserted rows:", result.rowsAffected);
 return res.redirect('success.html');
} catch(err) {
  console.log("Error: ", err);
} finally {
  if (connection) {
    try {
      await connection.close();
    } catch(err) {
     console.error(err);
    }
  }
}
})()
})

app.post('/add_college',(req,res)=>{
  var name = String(req.body.clgname);
  var address = String(req.body.clgaddress);
  (async function() {
    try{
    connection = await oracledb.getConnection({
      user : 'SYSTEM',
      password : 'niranjan2000',
      connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
 });
 console.log("Successfully connected to Oracle!")
 const sqlQuery = `INSERT INTO college VALUES (:1, :2,:3)`;

 binds = [ [null,name,address]];
 
 result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});
 
 console.log("Number of inserted rows:", result.rowsAffected);
 return res.redirect('success.html');
} catch(err) {
  console.log("Error: ", err);
} finally {
  if (connection) {
    try {
      await connection.close();
    } catch(err) {
     console.error(err);
    }
  }
}
})()
})

app.post('/add_event',(req,res)=>{
  var even_name = String(req.body.event_name);
  var category = String(req.body.category);
  var part_count = Number(req.body.part_count);
  var fee_native = Number(req.body.fee_native);
  var fee_other = Number(req.body.fee_other);
  var win_id = Number(req.body.winner_id);
  var run_id = Number(req.body.runner_id);
  var even_status = String(req.body.event_status);
  var timing =String(req.body.timing);
  var even_date =String(req.body.event_date);
  var prize_pool =String(req.body.event_date);
  var loc_id = Number(req.body.locs_id);
  var cor_id = Number(req.body.cord_id);
  (async function() {
    try{
    connection = await oracledb.getConnection({
      user : 'SYSTEM',
      password : 'niranjan2000',
      connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
 });
 console.log("Successfully connected to Oracle!")
 const sqlQuery = `INSERT INTO event VALUES (:1, :2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14)`;

 binds = [ [null,even_name,category,part_count,fee_native,fee_other,win_id,run_id,even_status,timing,even_date,prize_pool,loc_id,cor_id]];
 
 result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});
 
 console.log("Number of inserted rows:", result.rowsAffected);
 return res.redirect('success.html');
} catch(err) {
  console.log("Error: ", err);
} finally {
  if (connection) {
    try {
      await connection.close();
    } catch(err) {
     console.error(err);
    }
  }
}
})()
})

app.get('/view_loc',(req,res)=>{
  
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT *
       FROM location`,
      [],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        function makeTableHTML(myArray) {
          var result = "<table border=1>";
          for(var i=0; i<myArray.length; i++) {
            result+="<th>Location_id</th><th>Building</th><th>Room Number</th>"
              result += "<tr>";
              for(var j=0; j<myArray[i].length; j++){
                  result += "<td>"+myArray[i][j]+"</td>";
              }
              result += "</tr>";
          }
          result += "</table>";
      
          return result;
      }
      res.send(makeTableHTML(result.rows))
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})
app.get('/view_clg',(req,res)=>{
  
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT *
       FROM college`,
      [],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        function makeTableHTML(myArray) {
          var result = "<table border=1>";
          for(var i=0; i<myArray.length; i++) {
            result+="<th>College id</th><th>College Name</th><th>Address</th>"
              result += "<tr>";
              for(var j=0; j<myArray[i].length; j++){
                  result += "<td>"+myArray[i][j]+"</td>";
              }
              result += "</tr>";
          }
          result += "</table>";
      
          return result;
      }
      res.send(makeTableHTML(result.rows))
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})

app.post('/view_eve',(req,res)=>{
  
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT *
       FROM event`,
      [],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        function makeTableHTML(myArray) {
          var result = "<table border=1>";
          for(var i=0; i<myArray.length; i++) {
            result+="<th>Event id</th><th>Event Name</th><th>Category</th><th>No. of Participants</th><th>Fee(CEG)</th><th>Fee(Others)</th><th>Winner id</th><th>Runner id</th><th>Event Status</th><th>Timing</th><th>Event date</th><th>Total prize</th><th>Location Id</th>"
              result += "<tr>";
              for(var j=0; j<myArray[i].length; j++){
                  result += "<td>"+myArray[i][j]+"</td>";
              }
              result += "</tr>";
          }
          result += "</table>";
      
          return result;
      }
      res.send(makeTableHTML(result.rows))
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})

app.post('/signuppart', (req, res) => {
   var email = String(req.body.email);
   var password = String(req.body.password);
   var collegename = String(req.body.clgname);
  var sem = String(req.body.current_semester)
   var phonenum = req.body.phone_number;
   var usrname = String(req.body.user_name);
   var clgid = Number(req.body.coll_id);
  (async function() {
    try{
    connection = await oracledb.getConnection({
      user : 'SYSTEM',
      password : 'niranjan2000',
      connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
 });
 console.log("Successfully connected to Oracle!")
 const sqlQuery = `INSERT INTO app_user VALUES (:1, :2,:3,:4,:5,:6,:7,:8)`;

 binds = [ [null,email,password,collegename,sem,phonenum ,usrname,clgid]];
 
 result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});
 
 console.log("Number of inserted rows:", result.rowsAffected);
 return res.redirect('success.html');
} catch(err) {
  console.log("Error: ", err);
} finally {
  if (connection) {
    try {
      await connection.close();
    } catch(err) {
     console.error(err);
    }
  }
}
})()
});

app.post('/portfolio',(req,res)=>{
  var emails = String(req.body.email);
  var passkey = String(req.body.pass);
  var obtained1 = '';
  var obtained2 = '';
  var redirect=0;
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT password
       FROM app_user where email_id = :emails`,
      [emails],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        obtained1 = String(result.rows);
        
        if(obtained1 === passkey && result){
          redirect = 1;
        }
        
        if (redirect)
  {
      console.log("Success!");
      return res.redirect('userops.html');
  }
  else
  {
      console.log("Error!");
  }
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})

app.post('/make_payment', (req, res) => {
  var payment_id = Number(req.body.pay_id);
  var amount = Number(req.body.amount);
  var userid = Number(req.body.us_id);
  var eveid = Number(req.body.ev_id);
  var date = String(req.body.date);
 (async function() {
   try{
   connection = await oracledb.getConnection({
     user : 'SYSTEM',
     password : 'niranjan2000',
     connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
});
console.log("Successfully connected to Oracle!")
const sqlQuery = `INSERT INTO payment VALUES (:1, :2,:3,:4,:5)`;

binds = [ [payment_id,amount,userid,eveid,date ]];

result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});

console.log("Number of inserted rows:", result.rowsAffected);
return res.redirect('success.html');
} catch(err) {
 console.log("Error: ", err);
} finally {
 if (connection) {
   try {
     await connection.close();
   } catch(err) {
    console.error(err);
   }
 }
}
})()
});

app.post('/view_eve_name',(req,res)=>{
  
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT *
       FROM events_for_user`,
      [],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        function makeTableHTML(myArray) {
          var result = "<table border=1>";
          for(var i=0; i<myArray.length; i++) {
            result+="<th>Event id</th><th>Event Name</th><th>Category</th><th>Event date</th><th>Timing</th>"
              result += "<tr>";
              for(var j=0; j<myArray[i].length; j++){
                  result += "<td>"+myArray[i][j]+"</td>";
              }
              result += "</tr>";
          }
          result += "</table>";
      
          return result;
      }
      res.send(makeTableHTML(result.rows))
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})

app.post('/register', (req, res) => {
  var eve_id = Number(req.body.event_id);
  var pay_id = Number(req.body.payment_id);
  var us_id = Number(req.body.user_id);
 (async function() {
   try{
   connection = await oracledb.getConnection({
     user : 'SYSTEM',
     password : 'niranjan2000',
     connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
});
console.log("Successfully connected to Oracle!")
const sqlQuery = `INSERT INTO registration VALUES (:1, :2,:3,:4)`;

binds = [ [null,eve_id,pay_id,us_id ]];

result = await connection.executeMany(sqlQuery, binds, {autoCommit:true});

console.log("Number of inserted rows:", result.rowsAffected);
return res.redirect('success.html');
} catch(err) {
 console.log("Error: ", err);
} finally {
 if (connection) {
   try {
     await connection.close();
   } catch(err) {
    console.error(err);
   }
 }
}
})()
});
app.get('/evdets',(req,res)=>{
  
  (async function() {
  try{
     connection = await oracledb.getConnection({
          user : 'SYSTEM',
          password : 'niranjan2000',
          connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING
     });
     console.log("Successfully connected to Oracle!")
     connection.execute(
      `SELECT *
       FROM event_location_date`,
      [],  
     function(err, result) {
        if (err) {
          console.error(err.message);
          return;
        }
        function makeTableHTML(myArray) {
          var result = "<table border=1>";
          for(var i=0; i<myArray.length; i++) {
            result+="<th>Event Name</th><th>Event Date</th><th>Timing</th><th>Building</th><th>Room no.</th>"
              result += "<tr>";
              for(var j=0; j<myArray[i].length; j++){
                  result += "<td>"+myArray[i][j]+"</td>";
              }
              result += "</tr>";
          }
          result += "</table>";
      
          return result;
      }
      res.send(makeTableHTML(result.rows))
        connection.close();
     });
 }
  catch(err) {
      console.log("Error: ", err);
    } finally {
      if (connection) {
        try {
          
        } catch(err) {
         
        }
      }
    }
  })()
})
app.listen(3000, () => {
    console.log('Server is up on port 3000.')
})

