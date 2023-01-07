<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot_password.aspx.cs" Inherits="MeetUP.forgot_password" %>

<!DOCTYPE html>
<html5>

<head>
    <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
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
                    <asp:TextBox runat="server" ID="txtemail" class="input_email" placeholder="Enter Email"></asp:TextBox>
                    <div class="error_text">
                        <span><asp:RequiredFieldValidator ID="txt_email" Text="* required" ForeColor="Red" ControlToValidate ="txtemail" SetFocusOnError="True" runat="server" ErrorMessage="required email"></asp:RequiredFieldValidator></span>
                        <span><asp:RegularExpressionValidator ID="txt_email1" runat="server" Text="* please provide valid email" ControlToValidate ="txtemail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Email is not valid"></asp:RegularExpressionValidator></span>
                    </div>
                </div>
                <div class="btn_box">
                     <asp:Button runat="server" class="reset_btn" ID="btn_reset" Text="Reset Password" OnClick="reset_btn_Click"></asp:Button>
                </div>
                <div class="footer_link">
                    <a class="back_login" href="login.aspx">
                        <img class="back_arrow" src="./images/back_orange.png" alt="Back">
                        <span>Back to Log in</span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>