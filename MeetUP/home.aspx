<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MeetUP.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:Literal ID="Literal1" runat="server" Text="Welcome To Home Page"></asp:Literal>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div>
                    <asp:Label ID="txtemail" runat="server"></asp:Label> 
                </div>
                <br />
                <br />
                <br />
                <br />
                <div>
                     <asp:Button ID="btn_logout" runat="server" Text="Logout" onclick="btn_logout_Click"/>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
            </center>
        </div>
    </form>
</body>
</html>
