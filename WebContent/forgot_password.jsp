<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <title>LOGIN</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
</head>
<body class="background"style="background-image:url('pic/im10.webp');"> 
<div class="card" style="width:max-content;margin:0 auto;margin-top:50px">
  <div class="card-body">                                                                                                          
   <form action="login" method= "post">
   <div class="my-class">
       <h1>RESET PASSWORD</h1>
       <div class="pic">
        <img src="./pic/logo.png" alt="logo" class="centre">
       </div>
       
      

       <div class="form-group" id="password">
         <label for="email"><b>Email</b></label>
         <input type="text" id="EMAIL" placeholder="Enter your email" class="form-control" required name="email">
       </div>

      
       <div class="form-group">
         <button type="submit" class="btn btn-primary"style="background-color:darkgreen";> Submit</button>
       </div>
       </form>
       <div class="form-group">
        <p>Already have an account <a href=""style="color:navy;">Sign in now</a></p>
       </div>
     
   </div>
</body>
</html>