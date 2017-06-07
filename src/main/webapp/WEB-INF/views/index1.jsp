<%--
  Update
  User: Domino
  Date: 2017-04-30
  Time: 18:05
--%>
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

    <script type="text/javascript" src="../../resources/js/javascript.js"></script>
</head>

<body>
    <a id="log">Zalogowany</a><br>
    <div id="wrapper">
<!--    naglowek-->
        <header>
            
           <a href="/user/index1"><img src="../../resources/images/logo.png" alt="super-kurier " align= "center" height="200" width="200"/></a>
        </header>
<!--    menu -->
        <nav>
            <a class="menu1" href="/user/index1">Start</a>
            <a class="menu1" href="/customer/about">O Firmie</a>
            <a class="menu1" href="/customer/offer">Oferta</a>
            <a class="menu1" href="/customer/parcel/myparcel">Przesyłka</a>
            <a class="menu1" href="/account/myaccount">Konto</a>
            <a class="menu1" href="/customer/message">Konsultant</a>
            <a class="menu1" href="/customer/contact">Kontakt</a>
            <a class="login1" href="/user/logout">Wyloguj</a>
            
        </nav>
        
        <section>
            <article>
            <h1>Strona super-kurier</h1>
                  <p><img class="left" src="../../resources/images/opakowania-tekturowe.jpg" alt="ludzik" />Super-Kurier to nowoczesna platforma wysyłkowa umożliwiająca wysyłkę paczek zarówno na terenie całego kraju jak i za granicę.Wyróżnia nas szeroki wachlarz usług oraz dbałość o ich najwyższą jakość i niską cenę.<br/><br/>
                Nieustannie staramy się udoskonalać nasze usługi i ciągle poszerzać naszą ofertę.</p>
            </article>
<!--    iframe-->
        </section>
        
        <footer>
           
            <p><strong>Mail:</strong><a href="mailto:mail@mail.pl">mail@mail.pl</a></p>
            <p>copyright © 2017 <a href="/user/index1">Super-Kurier</a></p>
        </footer>
    
    </div>
</body>
</html>
