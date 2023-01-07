<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="MeetUP.signup" %>

<!DOCTYPE html>
<html5>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Itim&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
        <link href="./css/signup.css" rel="stylesheet" />
        <title>Resgister Now</title>
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
                            <asp:TextBox runat="server" ID="txtfname" class="input_fName" placeholder="First Name"></asp:TextBox>                                                                                 
                            <div class="error_text">
                                <asp:RequiredFieldValidator ID="f_name" Text="* required" ForeColor="Red" ControlToValidate ="txtfname" SetFocusOnError="True" runat="server" ErrorMessage="required first name"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="input_box">                            
                            <asp:TextBox runat="server" ID="txtlname" class="input_lName" placeholder="Last Name"></asp:TextBox>
                            <div class="error_text">
                                <asp:RequiredFieldValidator ID="l_name" Text="* required" ForeColor="Red" ControlToValidate ="txtfname" SetFocusOnError="True" runat="server" ErrorMessage="required last name"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="input_box">                            
                            <asp:TextBox runat="server" ID="txtemail" class="input_email" placeholder="Enter Email"></asp:TextBox>
                            <div class="error_text">
                                <asp:RequiredFieldValidator ID="f_email" Text="* required" ForeColor="Red" ControlToValidate ="txtemail" SetFocusOnError="True" runat="server" ErrorMessage="required email"></asp:RequiredFieldValidator>
                                <span><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* please provide valid email" ControlToValidate ="txtemail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Email is not valid"></asp:RegularExpressionValidator></span>
                            </div>
                        </div>
                        <div class="input_box">                            
                            <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" class="input_password" placeholder="Create password"></asp:TextBox>
                            <div class="error_text">
                                <asp:RequiredFieldValidator ID="txt_password" Text="* required" ForeColor="Red" ControlToValidate ="txtpassword" SetFocusOnError="True" runat="server" ErrorMessage="required password"></asp:RequiredFieldValidator>
                                <span><asp:RegularExpressionValidator ID="txt_passsword_1" runat="server" Text="* must be of 8 digit" ControlToValidate ="txtpassword" ValidationExpression="^.{8,}$" ForeColor="Red" ErrorMessage="password must be of 8 digit including special character"></asp:RegularExpressionValidator></span>
                            </div> 
                        </div>
                        <div class="input_box">                            
                            <asp:TextBox runat="server" ID="txtcPassword" TextMode="Password" class="input_cPassword" placeholder="Confirm password"></asp:TextBox>
                            <div class="error_text">
                                <asp:RequiredFieldValidator ID="txt_cpassword" Text="* required" ForeColor="Red" ControlToValidate ="txtcPassword" SetFocusOnError="True" runat="server" ErrorMessage="required confirm password"></asp:RequiredFieldValidator>
                                <span><asp:CompareValidator ID="txt__password" runat="server" Text="* password must be same" ControlToValidate ="txtcPassword" Type="string" ControlToCompare="txtpassword" Operator="Equal" ForeColor="Red" ErrorMessage="password must be same"></asp:CompareValidator></span>                               
                            </div>
                        </div>
                        <div class="btn_box">
                            <asp:Button class="register_btn" ID="register_btn" runat="server" Text="Register" OnClick="register_btn_Click"></asp:Button>
                        </div>
                        <div class="txt_have_acc">
                        </div>
                        <div class="footer">
                            <p>Already have an account ?</p>
                            <a class="footer_txt_login" href="login.aspx">Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>