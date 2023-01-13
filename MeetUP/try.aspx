<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="MeetUP._try" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>

<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server"> 
    <link href="css/details_popup.css" rel="stylesheet" />
    <title>POP UP</title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div id="popup" class="main">
       <%-- <button id="close" class="close_btn">
            <img src="/images/close.png" alt="">
        </button>--%>
        <div class="emp-name">
            <span>Dr. Amit Lathigara</span>
        </div>
        <div class="emp-designation">
            <span>Dean / Director</span>
        </div>
        <div class="container">
            <table class="details-tbl">
                <caption class="tbl-head">Details</caption>
                <tr>
                    <td class="td-1">
                        Department
                    </td>
                    <td>
                        something
                    </td>
                </tr>
                <tr>
                    <td class="td-1">
                        Teaching Experience
                    </td>
                    <td>
                        something
                    </td>
                </tr>
                <tr>
                    <td class="td-1">
                        Industrial Experience
                    </td>
                    <td>
                        something
                    </td>
                </tr>
                <tr>
                    <td class="td-1">
                        Total Experience
                    </td>
                    <td>
                        something
                    </td>
                </tr>
                <tr>
                    <td class="td-1">
                        Qualification
                    </td>
                    <td>
                        something
                    </td>
                </tr>
                <tr>
                    <td class="td-1">
                        Specialization
                    </td>
                    <td>
                        something
                    </td>
                </tr>
            </table>
        </div>
    </div>
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">  
</asp:ScriptManager> 

        <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">  
    <iframe style=" width: 600px; height: 575px;" id="irm1" src="WebForm2.aspx" runat="server"></iframe>  
   <br/>  
    <asp:Button ID="Button2" runat="server" Text="Close" />  
</asp:Panel>

    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button2"  
        CancelControlID="close" BackgroundCssClass="Background">  
    </cc1:ModalPopupExtender>  --%>
    </form>  
</body>  

</html>  