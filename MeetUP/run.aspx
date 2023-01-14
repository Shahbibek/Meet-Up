<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="run.aspx.cs" Inherits="MeetUP.run" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
     <%--<link href="css/details_popup.css" rel="stylesheet" />--%>
    <title></title>  
</head>  
<body>
    <form id="MyForm" runat="server">

    </form>
</body>
</html>  


 <!-- start popup Section -->
                      
           <%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <asp:Panel ID="show_panel" runat="server">
                 <div class="main">
        <button class="close_btn" id="close_button">
            <img src="/images/close.png" alt="">
        </button>
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
            </asp:Panel>
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" CancelControlID="close_button" PopupControlID="show_panel" TargetControlID="BtnShow">
            </asp:ModalPopupExtender>        --%>

                   <!-- end popup Section -->

                                    <%--new pop up start--%>
                       <%-- <asp:ScriptManager ID="ScriptManager2" runat="server">  
                        </asp:ScriptManager>  
                        <asp:Button ID="Button1" runat="server" Text="See Details" />  
                        <asp:Button ID="btn_show" runat="server" Text="See Details" class="details-btn"/> 
                        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panl1" TargetControlID="btn_show"  
                            CancelControlID="Button2" >  
                        </cc1:ModalPopupExtender>  
                        <asp:Panel ID="Panel1" runat="server" align="center" style = "display:none">  
                            <iframe id="Iframe1" src="try.aspx" runat="server" height="450px" width="605px"></iframe> 
                           <br/>  
                            <asp:Button ID="Button2" runat="server" Text="Close" />  
                            <asp:ImageButton ID="ImageButton1" runat="server" src="/images/close.png" class="close_btn"/>
                        </asp:Panel>--%>
                  
                                     <%--new pop up end--%>








<%--all set up--%>

<%--<asp:ScriptManager ID="ScriptManager1" runat="server">  
            </asp:ScriptManager>  
            <asp:Button ID="Button1" runat="server" Text="See Details" /> 
            <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"  
                CancelControlID="Button2" >  
            </cc1:ModalPopupExtender>  
            <asp:Panel ID="Panl1" runat="server" align="center" style = "display:none">  
                <iframe id="popup" src="try.aspx" runat="server" height="450px" width="605px"></iframe> 
               <br/>  
                <asp:Button ID="Button2" runat="server" Text="Close" />  
                <asp:ImageButton ID="Button2" runat="server" src="/images/close.png" class="close_btn"/>
            </asp:Panel>  --%>