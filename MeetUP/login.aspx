<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MeetUP.login" %>

<!DOCTYPE html>
<html5>

    <head runat="server">
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
        <title>Login</title>
        <link href="css/login.css" rel="stylesheet" />
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
                            <asp:TextBox runat="server" ID="txtemail" class="input_email" placeholder="Enter Email"></asp:TextBox>
                            <div class="error_text">
                                <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="* required" ForeColor="Red" ControlToValidate ="txtemail" SetFocusOnError="True" runat="server" ErrorMessage="required email"></asp:RequiredFieldValidator></span>                                
                            </div>
                        </div>
                        <div class="input_box">                          
                            <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" class="input_password"  placeholder="Enter Password"></asp:TextBox>
                            <div class="error_text">
                                <span><asp:RequiredFieldValidator ID="f_email" Text="* required" ForeColor="Red" ControlToValidate ="txtpassword" SetFocusOnError="True" runat="server" ErrorMessage="required email"></asp:RequiredFieldValidator></span>
                            </div>
                        </div>
                        <div class="uppr_footer">
                                <input type="checkbox" class="checkbox">
                            <span class="remember_txt">Keep me logged in</span>
                            <a class="forgot_pass" href="Forgot_password.aspx">Forgot Password ?</a>
                        </div>
                        <div class="btn_box">                           
                            <asp:Button class="login_btn" ID="login_btn" runat="server" Text="Log in" OnClick="login_btn_Click" ></asp:Button>
                        </div>
                        <div class="footer_link">
                            <a class="new_account" href="signup.aspx"> Create new account ?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>