<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MeetUP.login" %>

<!DOCTYPE html>
<html5>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <title>Login</title>
        <link href="./css/login.css" rel="stylesheet" />
    </head>

    <body>
        <div class="logo">
            <a href="#"><img src="./images/Logo.png"></a>
        </div>
        <div class="box_main">
            <div class="corner">
                <img src="./images/corner.png">S
            </div>
            <div class="container">
                <div class="banner">
                    <div class="heading_txt">
                        <span class="txt_get_your">Get your </span>
                        <span class="txt_appointment">Appointment</span>
                        <span class="txt_now">Now...</span>
                    </div>
                    <div class="img_box"></div>
                </div>
                <div class="form_box">
                    <form class="input_form" id="MyForm" runat="server" >
                        <div class="intro">
                            <span class="form_heading">Login</span>
                            <p class="form_desc">Welcome back!
                                Login with your data that you entered during registration .</p>
                        </div>
                        <div class="input_box">
                            <input type="email" ID="txtemail" class="input_email" placeholder="Enter email" required>
                        </div>
                        <div class="input_box">
                            <input type="password" ID="txtpassword" class="input_password" placeholder="Enter password"
                                required>
                        </div>
                        <div class="btn_box">
                            <button class="login_btn" id="reset_btn" runat="server">Log in</button>
                        </div>
                        <div class="footer_link">
                            <a class="new_account" href="#"> Create new account</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>