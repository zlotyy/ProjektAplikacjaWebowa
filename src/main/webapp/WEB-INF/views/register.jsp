<%--TAGLIBY uzywamy np. wtedy gdy chcemy zapisac dane z formularza do obiektu modelu--%>
<%@taglib prefix="accForm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="detForm" uri="http://www.springframework.org/tags/form" %>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="../../resources/js/javascript.js"></script>
</head>

<body >
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
        <a class="login" href="/user/login">Logowanie</a>

    </nav>
    <div class="content">
        <section>
            <accForm:form modelAttribute="account" action="save" method="POST">
                <div class="row">
                    <label for="login">Login</label>
                    <!--                autofocus do ustawienia kursora po wlaczeniu strony-->
                    <accForm:input path="login" id="login" type="login" />
                    <accForm:errors path="login"/>
                    <span class="message"></span>
                </div>
                <div class="row">
                    <label for="password">Haslo</label>
                    <accForm:input path="password" id="password" type="password" />
                    <accForm:errors path="password"/>
                    <span class="message"></span>
                </div>
                <div class="row" >
                    <label for="confirm_password">Potwierdz haslo</label>
                    <input id="confirm_password" type="password" onblur="checkPassword()" required >

                </div>

                <detForm:form modelAttribute="accountDetails" action="save" method="POST">
                <%--<form action="#" method="post" autocomplete="off">--%>
                    <div class="row">
                        <label for="isCompany">Klient indywidualny</label>
                        <%--<input id="klient1" name="test" type="radio"  required />--%>
                        <detForm:radiobutton path="isCompany" id="isCompany" name="test" value="false" checked="checked" onclick="client()"/>
                        <detForm:errors path="isCompany"/>
                    </div>
                    <div class="row">
                        <label for="isCompany">Klient biznesowy</label>
                        <%--<input id="klient2" name="test" type="radio"  required />--%>
                        <detForm:radiobutton path="isCompany" id="isCompany" name="test" value="true" onclick="company()" />
                        <detForm:errors path="isCompany"/>
                    </div>



                    <div class="row" id="name1">
                        <label for= "name">Imie</label>
                        <detForm:input path="name" id="name" type="name"/>
                        <detForm:errors path="name"/>
                        <span class="message"></span>
                    </div>
                    <div class="row" id="lastName1">
                        <label for= "last_name">Nazwisko</label>
                        <detForm:input path="lastName" id="last_name" type="last_name"/>
                        <detForm:errors path="lastName"/>
                        <span class="message"></span>
                    </div>
                    <div class="row" id="companyName1"style="display:none;">
                        <label for= "company_name">Firma</label>
                        <detForm:input path="companyName" id="company_name" type="text"/>
                        <detForm:errors path="companyName"/>
                        <span class="message"></span>
                    </div>
                    <div class="row" id="nip1"style="display:none;">
                        <label for= "nip">NIP</label>
                        <detForm:input path="NIP" id="nip" type="text"/>
                        <detForm:errors path="NIP"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="email">Adres e-mail</label>
                        <detForm:input path="email" id="email" type="email" onblur="validateemail()" />
                        <detForm:errors path="email"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="tel">Numer telefonu</label>
                        <detForm:input path="phoneNumber" id="tel" type="tel"/>
                        <detForm:errors path="phoneNumber"/>
                        <span class="message"></span>
                    </div>
                    <%--<div class="row">
                        <label for="date">Data urodzenia</label>
                        <detForm:input path="date" id="date" type="date"/>
                        <detForm:errors path="date"/>
                    </div>--%>
                    <div class="row">
                        <label for="country">Kraj</label>
                        <detForm:input path="country" list="country" name="country" class="datalist-input" id="country" /><%--
                        <input list="country" name="country" class="datalist-input" />--%>

                        <datalist id="country">
                            <option value="Afghanistan" />
                            <option value="Albania" />
                            <option value="Algeria" />
                            <option value="American Samoa" />
                            <option value="Andorra" />
                            <option value="Angola" />
                            <option value="Anguilla" />
                            <option value="Antarctica" />
                            <option value="Antigua and Barbuda" />
                            <option value="Argentina" />
                            <option value="Armenia" />
                            <option value="Aruba" />
                            <option value="Australia" />
                            <option value="Austria" />
                            <option value="Azerbaijan" />
                            <option value="Bahamas" />
                            <option value="Bahrain" />
                            <option value="Bangladesh" />
                            <option value="Barbados" />
                            <option value="Belarus" />
                            <option value="Belgium" />
                            <option value="Belize" />
                            <option value="Benin" />
                            <option value="Bermuda" />
                            <option value="Bhutan" />
                            <option value="Bolivia" />
                            <option value="Bosnia and Herzegovina" />
                            <option value="Botswana" />
                            <option value="Bouvet Island" />
                            <option value="Brazil" />
                            <option value="British Indian Ocean Territory" />
                            <option value="Brunei Darussalam" />
                            <option value="Bulgaria" />
                            <option value="Burkina Faso" />
                            <option value="Burundi" />
                            <option value="Cambodia" />
                            <option value="Cameroon" />
                            <option value="Canada" />
                            <option value="Cape Verde" />
                            <option value="Cayman Islands" />
                            <option value="Central African Republic" />
                            <option value="Chad" />
                            <option value="Chile" />
                            <option value="China" />
                            <option value="Christmas Island" />
                            <option value="Cocos (Keeling) Islands" />
                            <option value="Colombia" />
                            <option value="Comoros" />
                            <option value="Congo" />
                            <option value="Congo, The Democratic Republic of The" />
                            <option value="Cook Islands" />
                            <option value="Costa Rica" />
                            <option value="Cote D'ivoire" />
                            <option value="Croatia" />
                            <option value="Cuba" />
                            <option value="Cyprus" />
                            <option value="Czech Republic" />
                            <option value="Denmark" />
                            <option value="Djibouti" />
                            <option value="Dominica" />
                            <option value="Dominican Republic" />
                            <option value="Ecuador" />
                            <option value="Egypt" />
                            <option value="El Salvador" />
                            <option value="Equatorial Guinea" />
                            <option value="Eritrea" />
                            <option value="Estonia" />
                            <option value="Ethiopia" />
                            <option value="Falkland Islands (Malvinas)" />
                            <option value="Faroe Islands" />
                            <option value="Fiji" />
                            <option value="Finland" />
                            <option value="France" />
                            <option value="French Guiana" />
                            <option value="French Polynesia" />
                            <option value="French Southern Territories" />
                            <option value="Gabon" />
                            <option value="Gambia" />
                            <option value="Georgia" />
                            <option value="Germany" />
                            <option value="Ghana" />
                            <option value="Gibraltar" />
                            <option value="Greece" />
                            <option value="Greenland" />
                            <option value="Grenada" />
                            <option value="Guadeloupe" />
                            <option value="Guam" />
                            <option value="Guatemala" />
                            <option value="Guinea" />
                            <option value="Guinea-bissau" />
                            <option value="Guyana" />
                            <option value="Haiti" />
                            <option value="Heard Island and Mcdonald Islands" />
                            <option value="Holy See (Vatican City State)" />
                            <option value="Honduras" />
                            <option value="Hong Kong" />
                            <option value="Hungary" />
                            <option value="Iceland" />
                            <option value="India" />
                            <option value="Indonesia" />
                            <option value="Iran, Islamic Republic of" />
                            <option value="Iraq" />
                            <option value="Ireland" />
                            <option value="Israel" />
                            <option value="Italy" />
                            <option value="Jamaica" />
                            <option value="Japan" />
                            <option value="Jordan" />
                            <option value="Kazakhstan" />
                            <option value="Kenya" />
                            <option value="Kiribati" />
                            <option value="Korea, Democratic People's Republic of" />
                            <option value="Korea, Republic of" />
                            <option value="Kuwait" />
                            <option value="Kyrgyzstan" />
                            <option value="Lao People's Democratic Republic" />
                            <option value="Latvia" />
                            <option value="Lebanon" />
                            <option value="Lesotho" />
                            <option value="Liberia" />
                            <option value="Libyan Arab Jamahiriya" />
                            <option value="Liechtenstein" />
                            <option value="Lithuania" />
                            <option value="Luxembourg" />
                            <option value="Macao" />
                            <option value="Macedonia, The Former Yugoslav Republic of" />
                            <option value="Madagascar" />
                            <option value="Malawi" />
                            <option value="Malaysia" />
                            <option value="Maldives" />
                            <option value="Mali" />
                            <option value="Malta" />
                            <option value="Marshall Islands" />
                            <option value="Martinique" />
                            <option value="Mauritania" />
                            <option value="Mauritius" />
                            <option value="Mayotte" />
                            <option value="Mexico" />
                            <option value="Micronesia, Federated States of" />
                            <option value="Moldova, Republic of" />
                            <option value="Monaco" />
                            <option value="Mongolia" />
                            <option value="Montserrat" />
                            <option value="Morocco" />
                            <option value="Mozambique" />
                            <option value="Myanmar" />
                            <option value="Namibia" />
                            <option value="Nauru" />
                            <option value="Nepal" />
                            <option value="Netherlands" />
                            <option value="Netherlands Antilles" />
                            <option value="New Caledonia" />
                            <option value="New Zealand" />
                            <option value="Nicaragua" />
                            <option value="Niger" />
                            <option value="Nigeria" />
                            <option value="Niue" />
                            <option value="Norfolk Island" />
                            <option value="Northern Mariana Islands" />
                            <option value="Norway" />
                            <option value="Oman" />
                            <option value="Pakistan" />
                            <option value="Palau" />
                            <option value="Palestinian Territory, Occupied" />
                            <option value="Panama" />
                            <option value="Papua New Guinea" />
                            <option value="Paraguay" />
                            <option value="Peru" />
                            <option value="Philippines" />
                            <option value="Pitcairn" />
                            <option value="Poland" />
                            <option value="Portugal" />
                            <option value="Puerto Rico" />
                            <option value="Qatar" />
                            <option value="Reunion" />
                            <option value="Romania" />
                            <option value="Russian Federation" />
                            <option value="Rwanda" />
                            <option value="Saint Helena" />
                            <option value="Saint Kitts and Nevis" />
                            <option value="Saint Lucia" />
                            <option value="Saint Pierre and Miquelon" />
                            <option value="Saint Vincent and The Grenadines" />
                            <option value="Samoa" />
                            <option value="San Marino" />
                            <option value="Sao Tome and Principe" />
                            <option value="Saudi Arabia" />
                            <option value="Senegal" />
                            <option value="Serbia and Montenegro" />
                            <option value="Seychelles" />
                            <option value="Sierra Leone" />
                            <option value="Singapore" />
                            <option value="Slovakia" />
                            <option value="Slovenia" />
                            <option value="Solomon Islands" />
                            <option value="Somalia" />
                            <option value="South Africa" />
                            <option value="South Georgia and The South Sandwich Islands" />
                            <option value="Spain" />
                            <option value="Sri Lanka" />
                            <option value="Sudan" />
                            <option value="Suriname" />
                            <option value="Svalbard and Jan Mayen" />
                            <option value="Swaziland" />
                            <option value="Sweden" />
                            <option value="Switzerland" />
                            <option value="Syrian Arab Republic" />
                            <option value="Taiwan, Province of China" />
                            <option value="Tajikistan" />
                            <option value="Tanzania, United Republic of" />
                            <option value="Thailand" />
                            <option value="Timor-leste" />
                            <option value="Togo" />
                            <option value="Tokelau" />
                            <option value="Tonga" />
                            <option value="Trinidad and Tobago" />
                            <option value="Tunisia" />
                            <option value="Turkey" />
                            <option value="Turkmenistan" />
                            <option value="Turks and Caicos Islands" />
                            <option value="Tuvalu" />
                            <option value="Uganda" />
                            <option value="Ukraine" />
                            <option value="United Arab Emirates" />
                            <option value="United Kingdom" />
                            <option value="United States" />
                            <option value="United States Minor Outlying Islands" />
                            <option value="Uruguay" />
                            <option value="Uzbekistan" />
                            <option value="Vanuatu" />
                            <option value="Venezuela" />
                            <option value="Viet Nam" />
                            <option value="Virgin Islands, British" />
                            <option value="Virgin Islands, U.S" />
                            <option value="Wallis and Futuna" />
                            <option value="Western Sahara" />
                            <option value="Yemen" />
                            <option value="Zambia" />
                            <option value="Zimbabwe" />
                        </datalist>
                        <detForm:errors path="country"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="region">Wojewodztwo</label>
                        <detForm:input path="county" id="region" type="text" />
                        <detForm:errors path="county"/>
                        <span class="message"></span>
                        <%--<input id="region" type="text" list="regions">--%>
                        <%--<input id="region" type="text">--%>
                        <datalist id="regions">
                            <option value="Dolnośląskie">Dolnośląskie</option>
                            <option value="Kujawsko-Pomorskie">Kujawsko-Pomorskie</option>
                            <option value="Lubelskie">Lubelskie</option>
                            <option value="Lubuskie">Lubuskie</option>
                            <option value="Łódzkie">Łódzkie</option>
                            <option value="Małopolskie">Małopolskie</option>
                            <option value="Mazowieckie">    Mazowieckie</option>
                            <option value="Opolskie">Opolskie</option>
                            <option value="Podkarpackie">Podkarpackie</option>
                            <option value="Podlaskie">Podlaskie</option>
                            <option value="Pomorskie">Pomorskie</option>
                            <option value="Śląskie">Śląskie</option>
                            <option value="Świętokrzyskie">Świętokrzyskie</option>
                            <option value="Warmińsko-Mazurskie">Warmińsko-Mazurskie</option>
                            <option value="Wielkopolskie">Wielkopolskie</option>
                            <option value="Zachodnio-Pomorskie">Zachodnio-Pomorskie</option>
                        </datalist>
                    </div>
                    <div class="row">
                        <label for="city">Miasto</label>
                        <detForm:input path="city" id="city" type="text"/>
                        <detForm:errors path="city"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="street">Ulica</label>
                        <detForm:input path="street" id="street" type="text"/>
                        <detForm:errors path="street"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="house_number">Nr domu</label>
                        <detForm:input path="houseNumber" id="house_number" type="text"/>
                        <detForm:errors path="houseNumber"/>
                        <span class="message"></span>
                    </div>
                    <div class="row">
                        <label for="place_number">Nr lokalu</label>
                        <detForm:input path="placeNumber" id="place_number" type="text"/>
                        <detForm:errors path="placeNumber"/>
                    </div>
                    <div class="row">
                        <label for="code">Kod Pocztowy</label>
                        <detForm:input path="postCode" id="code" type="text" pattern="\d{2}-\d{3}$" placeholder="xx-xxx" />
                        <detForm:errors path="postCode"/>
                        <span class="message"></span>

<%--                        <input id="code" type="text" pattern="\d{2}-\d{3}$" placeholder="xx-xxx">--%>
                    </div>
                    <div class="row">
                        <input id="rules" type="checkbox" required>
                        <span>Akceptuje regulamin</span>
                    </div>
                    <div class="row">
                        <%--<input type="submit">--%>
                        <button>Prześlij</button>
                    </div>
                <%--</form>--%>
            </detForm:form>
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
