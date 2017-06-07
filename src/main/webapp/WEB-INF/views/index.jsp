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
            <a class="menu" href="/">Start</a>
            <a class="menu" href="/about">O Firmie</a>
            <a class="menu" href="/offer">Oferta</a>
            <a class="menu active" href="/contact">Kontakt</a>
            <a class="register" href="/user/register">Rejestracja</a>
            <a class="login" href="/user/login">Logowanie</a>
            
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
            <p>copyright © 2017 <a href="/">Super-Kurier</a></p>
        </footer>
    
    </div>
</body>
</html>
