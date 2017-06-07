<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <a class="menu" href="/">Start</a>
            <a class="menu" href="/about">O Firmie</a>
            <a class="menu" href="/offer">Oferta</a>
            <a class="menu" href="/contact">Kontakt</a>
            <a class="register" href="/user/register">Rejestracja</a>
            <a class="login active" href="/user/login">Logowanie</a>
        </nav>

        <div class="content">
        <section>
            <form:form modelAttribute="email" action="/user/passwordRemember/sendEmail" method="POST">
                <div class="row">
                    <label for="email">Adres e-mail</label>
                    <%--<input id="email" type="email" required>--%>
                    <form:input path="email" id="email" type="email"/>
                    <form:errors path="email"/>
                </div> 
                <div class="row">
                    <%--<input type="submit" value="Wyślij przypomnienie" >--%>
                    <button>Wyślij przypomnienie</button>
                </div>
            </form:form>
        </section>
        </div>


        <footer>
            <p><strong>Mail:</strong><a href="mailto:mail@mail.pl">mail@mail.pl</a></p>
            <p>copyright © 2017 <a href="/">Super-Kurier</a></p>
        </footer>
    
    </div>
</body>
</html>
