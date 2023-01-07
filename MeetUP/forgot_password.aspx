<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_password.aspx.cs" Inherits="MeetUP.forgot_password" %>

<!DOCTYPE html>
<html5>

<head>
    <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <title>Forgot Password</title>
    <link href="./css/forgot_pass1.css" rel="stylesheet" />
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
            <form class="input_form" id="MyForm" runat="server" >
                <img class="lock_icon" src="./images/lock_icon.png" alt="Lock Icon"><br>
                <span class="form_heading">Forgot password ?</span>
                <p class="form_desc">No worries, we will send you reset instructions.</p>
                <div class="email_box">
                    <input type="email" ID="txtemail" class="input_email" placeholder="Enter email" required>
                </div>
                <div class="btn_box">
                    <button class="reset_btn" id="reset_btn" runat="server" onclick="login_btn_Click">Reset
                        password</button>
                </div>
                <div class="footer_link">
                    <a class="back_login" href="#">
                        <img class="back_arrow" src="./images/back_orange.png" alt="Back">
                        <span>Back to Log in</span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>