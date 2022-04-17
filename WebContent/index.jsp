<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <title>LOGIN</title>
    
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
</head>
<body class="whole-body" style="background-image:url('pic/im37.webp');background-repeat:no-repeat;"> 
<div class="card" style="width:max-content;margin:0 auto;margin-top:50px">
  <div class="card-body">                                                        
   <form action="login" method= "post">
   <div class="my-class">
       <h1>LOGIN FORM</h1>
       <div class="pic">
        <img src="./pic/logo.png" alt="logo" class="centre">
       </div>
       
       <div class="form-group">
         <label for="username"><b>Username</b></label>
         <input type="text" id="Username"  placeholder="Enter your Username" 
         class="form-control" required name="username">
       </div>

       <div class="form-group" id="password">
         <label for="password"><b>Password</b></label>
         <input type="text" id="Password" placeholder="Enter your password" 
         class="form-control" required name="password">
       </div>

       <div class="form-group">
         <a href="forgot_password.jsp"style="color:navy">forgot password?</a>
       </div>

       <div class="form-group">
         <button type="submit" class="btn btn-primary" style="background-color:forestgreen;"> Login</button>
       </div>
       </form>
       <div class="form-group">
        <p>Not a member? <a href=""style="color:navy">Sign up now</a></p>
       </div>
     
   </div>
   </div>
   </div>
</body>
</html>