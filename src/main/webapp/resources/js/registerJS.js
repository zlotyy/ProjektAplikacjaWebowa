/**
 * Created by Złoty on 2017-04-16.
 */
function checkPasswordMatch() {
    var password = $("#password").val();
    var confirmPassword = $("#confirm_password").val();

    if (password != confirmPassword)
        $("#confirm_password").html("Passwords do not match!");
    else
        $("#confirm_password").html("Passwords match.");
}