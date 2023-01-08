<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_pass_link.aspx.cs" Inherits="MeetUP.forgot_pass_link" %>

<!DOCTYPE html>
<html5>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
        <link href="forgot_pass2.css" rel="stylesheet" />
        <title>Forgot Password</title>
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
                    <p class="form_desc">We sent a password reset link to <span><asp:Label ID="txtemail" runat="server"></asp:Label></span></p>
                    <div class="btn_box">                        
                        <asp:Button runat="server" class="openEmail_btn" ID="open_email_btn" Text="Check Email" OnClick="open_email_btn_Click" ></asp:Button>                       
                    </div>
                    <div class="footer_link">
                        <p>Didn’t receive the email ? <a href="#"> Click to resend</a></p><br>
                        <a class="back_login" href="login.aspx">
                            <img class="back_arrow" src="./images/back_orange.png" alt="Back">
                            <span>Back to Log in</span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </body>