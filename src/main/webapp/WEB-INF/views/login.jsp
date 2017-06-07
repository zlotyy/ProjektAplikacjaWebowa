<%@taglib prefix="accForm" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
<!--    kodowanie znaków, możemy używać polskich znaków -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--    sposób wyświetlania na urzadzeniach mobilnych -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Super-Kurier</title>
<!--    importujemy czcionke ktora chcemy uzyc (google fonts) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=latin-ext" rel="stylesheet">
<!--    favicon(obrazek) -->
    <link rel="shortcut icon" href="../../resources/images/favicon.ico" type="imgae/x-icon" />
<!--    link do pliku css-->
    <link rel="stylesheet" href="../../resources/css/style.css">
    
</head>

<body>
     <a id="log">Niezalogowany</a><br>
    <div id="wrapper">
<!--    naglowek-->
        <header>
           <a href="/"><img src="../../resources/images/logo.png" alt="super-kurier " align= "center" height="200" width="200"/></a>
        </header>
<!--    menu -->
        <nav>
            <a class="menu active" href="/">Start</a>
            <a class="menu" href="/about">O Firmie</a>
            <a class="menu" href="/offer">Oferta</a>
            <a class="menu" href="/contact">Kontakt</a>
            <a class="register" href="/user/register">Rejestracja</a>
            <a class="login" href="/user/login">Logowanie</a>
            
        </nav>
        
        <div class="content">
            <section>
                 <accForm:form modelAttribute="accountLogin" action="check" method="POST">
                     <div class="row">
                         <label for="login">Login </label>
                         <accForm:input path="login" id="login" type="login"/>
                     <accForm:errors path="login"/>
               </div>

                <div class="row">
               <label for="password">Hasło</label>
                     <accForm:input path="password" id="password" type="password"/>
                     <accForm:errors path="password"/>

                   <span><p><a href="/user/passwordRemember">Zapomniałeś hasła?</a></p></span>
               </div>
                   <div class="row">
                   <input type="submit" value="Login">
               </div>
             </accForm:form>
            </section>
        </div>
        
        <footer>
           
            <p><strong>Mail:</strong><a href="mailto:mail@mail.pl">mail@mail.pl</a></p>
            <p>copyright © 2017 <a href="/">Super-Kurier</a></p>
        </footer>
    
    </div>
</body>
</html>
