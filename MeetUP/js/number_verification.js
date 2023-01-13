﻿window.onload = function () {
    render();
};
function render() {
    window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');
    recaptchaVerifier.render();
}
function phoneAuth() {    
    var number = document.getElementById('mobileNo').value;
    //phone number authentication function of firebase
    //it takes two parameter first one is number,,,second one is recaptcha
    firebase.auth().signInWithPhoneNumber(number, window.recaptchaVerifier).then(function (confirmationResult) {
        //s is in lowercase
        window.confirmationResult = confirmationResult;
        coderesult = confirmationResult;
        console.log(coderesult);
        alert("Message sent Successfully");
    }).catch(function (error) {
        alert(error.message);
    });
}
function codeverify() {
    var code = document.getElementById('OTPtxt').value;
    coderesult.confirm(code).then(function (result) {
        location.href = "book_appointment.aspx";
        //alert("Successfully Verified");
        //var user = result.user;
        //console.log(user);       
    }).catch(function (error) {
        alert(error.message);
    });
}