/**
 * Created by Domo on 2017-05-13.
 */

document.getElementById("hideButton").style.display="none";
$(document).ready(function(){

    $("#edit").change(function(){
        if($("#edit").is(":checked")){
            document.getElementById("hideButton").style.display="block";
            $("#name").prop('disabled',false);
            $("#last_name").prop('disabled',false);
            $("#company_name").prop('disabled',false);
            $("#nip").prop('disabled',false);
            $("#email").prop('disabled',false);
            $("#tel").prop('disabled',false);
            $("#password").prop('disabled',false);
            $("#date").prop('disabled',false);
            $("#country").prop('disabled',false);
            $("#region").prop('disabled',false);
            $("#city").prop('disabled',false);
            $("#street").prop('disabled',false);
            $("#house_number").prop('disabled',false);
            $("#place_number").prop('disabled',false);
            $("#code").prop('disabled',false);
        }else {
            document.getElementById("hideButton").style.display="none";
            $("#name").prop('disabled',true);
            $("#last_name").prop('disabled',true);
            $("#company_name").prop('disabled',true);
            $("#nip").prop('disabled',true);
            $("#email").prop('disabled',true);
            $("#tel").prop('disabled',true);
            $("#password").prop('disabled',true);
            $("#date").prop('disabled',true);
            $("#country").prop('disabled',true);
            $("#region").prop('disabled',true);
            $("#city").prop('disabled',true);
            $("#street").prop('disabled',true);
            $("#house_number").prop('disabled',true);
            $("#place_number").prop('disabled',true);
            $("#code").prop('disabled',true);
        }
    });

});
