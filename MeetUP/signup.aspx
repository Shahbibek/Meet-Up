<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="MeetUP.signup" %>

<!DOCTYPE html>
<html5>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <title>Resgister Now</title>
        <link href="./css/signup.css" rel="stylesheet" />
    </head>

    <body>
        <div class="logo">
            <a href="#"><img src="./images/Logo.png"></a>
        </div>
        <div class="box_main">
            <div class="corner">
                <img src="./images/corner.png">
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
                            <span class="form_heading">Register now</span>
                            <p class="form_desc">Give your information for register.</p>
                        </div>
                        <div class="input_box">
                            <input type="text" ID="txtfName" class="input_fName" placeholder="First Name" required>
                        </div>
                        <div class="input_box">
                            <input type="text" ID="txtlName" class="input_lName" placeholder="Last Name" required>
                        </div>
                        <div class="input_box">
                            <input type="email" ID="txtemail" class="input_email" placeholder="Enter email" required>
                            <div class="error_text">
                                <span></span>
                            </div>
                        </div>
                        <div class="input_box">
                            <input type="password" ID="txtpassword" class="input_password" placeholder="Create password"
                                required>
                            <div class="error_text">
                                <span></span>
                            </div>
                        </div>
                        <div class="input_box">
                            <input type="password" ID="txtcPassword" class="input_cPassword"
                                placeholder="Confirm password" required>
                            <div class="error_text">
                                <span></span>
                            </div>
                        </div>
                        <div class="btn_box">
                            <button class="register_btn" id="register_btn" runat="server">Register</button>
                        </div>
                        <div class="txt_have_acc">
                        </div>
                        <div class="footer">
                            <p>Already have an account ?</p>
                            <a class="footer_txt_login" href="#">Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>