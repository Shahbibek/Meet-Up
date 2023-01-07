<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_pass_link.aspx.cs" Inherits="MeetUP.forgot_pass_link" %>

<!DOCTYPE html>
<html5>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <title>Forgot Password</title>
        <link href="./css/forgot_pass2.css" rel="stylesheet" />
    </head>

    <body>
        <div class="logo">
            <a href="#"><img src="./images/Logo.png"></a>
        </div>
        <div class="container">
            <div class="corner">
                <img src="./images/corner.png">
            </div>
            <div class="form_box">
                <form class="input_form" id="MyForm" runat="server">
                    <img class="lock_icon" src="./images/message_icon.png" alt="Lock Icon"><br><br>
                    <span class="form_heading">Check your email</span>
                    <p class="form_desc">We sent a password reset link to <span>example@gmail.com</span></p>
                    <div class="btn_box">
                        <button class="openEmail_btn" id="openEmail_btn" runat="server">Reset password</button>
                    </div>
                    <div class="footer_link">
                        <p>Didn’t receive the email ? <a href="#"> Click to resend</a></p><br>
                        <a class="back_login" href="#">
                            <img class="back_arrow" src="./images/back_orange.png" alt="Back">
                            <span>Back to Log in</span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </body>