$(function(){
    $("#klient1, #klient2").change(function(){
        $("#name, #company_name").val("").attr("readonly",true);
        if($("#klient1").is(":checked")){
            $("#name").removeAttr("readonly");
            $("#name").focus();
            document.getElementById("name").style.display="none";

        }
        else if($("#klient2").is(":checked")){
            $("#company_name").removeAttr("readonly");
            $("#company_name").focus();   
        }
    });
});
//Walidacja
$(document).ready(function() {

    //Walidacja login
    $('#login').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 5 && name_length <= 15) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Login musi mieć więcej niż 4 i mniej niż 16 znaków!").removeClass("ok").addClass("error");

        }
    });
    //Walidacja haslo
    $('#password').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#name').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#last_name').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#company_name').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#nip').on('blur', function () {
        var input = $(this);
        var pattern =/^[0-9]{10}$/;
        var is_phone_number = pattern.test(input.val());
        if (is_phone_number >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Podaj NIP").removeClass("ok").addClass("error");

        }
    });
    $('#tel').on('blur', function () {
        var input = $(this);
        var pattern =/^[0-9]+$/;
        var is_phone_number = pattern.test(input.val());
        if (is_phone_number >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Podaj numer telefonu").removeClass("ok").addClass("error");

        }
    });
    //Walidacja email
    $('#email').on('blur', function() {
        var input = $(this);
        var pattern = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        var is_email = pattern.test(input.val());
        if(is_email){
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text("Wprowadzono poprawny email.").removeClass("error").addClass("ok");
        }
        else{
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Wprowadź poprawny email!").removeClass("ok").addClass("error");
        }
    });
    $('#house_number').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Podaj numer domu").removeClass("ok").addClass("error");

        }
    });
    //Walidacja kod pocztowy
    $('#code').on('blur', function() {
        var input = $(this);
        var pattern = /^[0-9]{2}-[0-9]{3}$/;
        var is_code = pattern.test(input.val());
        if(is_code){
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else{
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("Wprowadź poprawny kod pocztowy w formacie xx-xxx").removeClass("ok").addClass("error");
        }
    });
    $('#country').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#region').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#city').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
    $('#street').on('blur', function () {
        var input = $(this);
        var name_length = input.val().length;
        if (name_length >= 1) {
            input.removeClass("invalid").addClass("valid");
            input.next('.message').text(" ").removeClass("error").addClass("ok");
        }
        else {
            input.removeClass("valid").addClass("invalid");
            input.next('.message').text("To pole nie może być puste").removeClass("ok").addClass("error");

        }
    });
});




function checkPassword() {
    var password=document.getElementById("password").value;
    var confirm_password=document.getElementById("confirm_password").value;
    if(password==""){document.getElementById("confirm_password").style.border="3px solid #ff0000";}
    else if(password==confirm_password){
        document.getElementById("confirm_password").style.border="3px solid #008000";
      //  document.getElementById("confirm_password").next(".message").text(" ").removeClass("error").addClass("ok");

    }
    else {

        // document.getElementById("confirm_password").next(".message").text("Hasła muszu być takie same ").removeClass("ok").addClass("error");
     document.getElementById("confirm_password").style.border="3px solid #ff0000";
    }

}

function company(){
    document.getElementById("name1").style.display="none";
    document.getElementById("lastName1").style.display="none";
    document.getElementById("companyName1").style.display="block";
    document.getElementById("nip1").style.display="block";
}
function client(){
    document.getElementById("name1").style.display="block";
    document.getElementById("lastName1").style.display="block";
    document.getElementById("companyName1").style.display="none";
    document.getElementById("nip1").style.display="none";
}