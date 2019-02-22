<%@ page import="java.time.LocalTime" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<br>

<div>
<% 
 String result = "";
 String sesso = "";
 if(request.getParameter("genere")==null || request.getParameter("genere").isEmpty()){
     sesso = "registrato/a";
 }else if(request.getParameter("genere").equals("M")){
     sesso = "registrato"; 
 }else if(request.getParameter("genere").equals("F")){
     sesso = "registrata"; 
 }
 if(request.getParameter("name")==null || request.getParameter("name").isEmpty()){
     result += "Devi inserire il tuo nome<br>";
 }
 if(request.getParameter("surname")==null || request.getParameter("surname").isEmpty()){
     result += "Devi inserire il tuo cognome<br>";
 }
 if(request.getParameter("mail")==null || request.getParameter("mail").isEmpty()){
     result += "Devi inserire il tuo indirizzo mail<br>";
 }
 if(result.isEmpty()){
     result = "Grazie "+request.getParameter("name")+" "+request.getParameter("surname")+" per esserti "+sesso+". A breve riceverai una mail all'indirizzo "+request.getParameter("mail")+"."; 
 }
%>
 <p align="center"><%= result %></p>
</div>

<br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>