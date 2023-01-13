<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="book_appointment.aspx.cs" Inherits="MeetUP.book_appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/multiview.css" rel="stylesheet" />      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView_1" runat="server" ActiveViewIndex="0">
            
        <%--view 1st start--%>
        <asp:View ID="View_1" runat="server">
             <div class="main">
        <div class="container">
            <div class="heading">
                <span>Book Appointment</span>
            </div>
            <div class="appointment_form">
                <center>
                    <table>
                        <tr>
                            <td>
                                <label for="e_mail">Email :</label>
                            </td>
                            <td>                                
                                <asp:TextBox ID="emailtxt" runat="server" class="mbl-no" placeholder="Enter Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*invalid email" class="valid_email" ControlToValidate ="emailtxt" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Email is not valid"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="date1txt">Date of Booking :</label>
                            </td>
                            <td>                                
                                <asp:TextBox ID="datetxt" runat="server" Textmode="Date" class="mbl-no"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="* required" ForeColor="Red" ControlToValidate ="datetxt" SetFocusOnError="True" runat="server" ErrorMessage="required date"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="emp1txt">Meeting With :</label>
                            </td>
                            <td>
                                <%--<select ID="emptxt" class="mbl-no" placeholder="Enter mobile no." required>
                                    <option value="">Dr. Amit Lathigara</option>
                                    <option value="">Dr. Paresh Tanna</option>
                                    <option value="">Bhoomi Dangar</option>
                                    <option value="">Nirav Bhatt</option>
                                </select>--%>
                                <asp:DropDownList ID="emptxt" runat="server" DataTextField = "full_name" DataValueField = "id" class="mbl-no" AutoPostBack="True">
                                </asp:DropDownList> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="* required" ForeColor="Red" ControlToValidate ="emptxt" SetFocusOnError="True" runat="server" InitialValue="1" ErrorMessage="required to whom you want to meet with"></asp:RequiredFieldValidator>
                                    <%--<asp:ListItem Value="select">Select</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Teacher</asp:ListItem>
                                    <asp:ListItem>Staff</asp:ListItem>
                                    <asp:ListItem>Professor</asp:ListItem>
                                    <asp:ListItem>Dean</asp:ListItem>
                                    <asp:ListItem>Director</asp:ListItem>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desig1txt">Your Designation :</label>
                            </td>
                            <td>                                
                                 <asp:DropDownList ID="desigtxt" runat="server" class="mbl-no" AutoPostBack="True">
                                    <asp:ListItem Value="select">Select</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Teacher</asp:ListItem>
                                    <asp:ListItem>Staff</asp:ListItem>
                                    <asp:ListItem>Professor</asp:ListItem>
                                    <asp:ListItem>Guardians</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="* required" ForeColor="Red" ControlToValidate ="desigtxt" InitialValue="select" SetFocusOnError="True" runat="server" ErrorMessage="required designation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="Mob1txt">Mobile No :</label>
                            </td>
                            <td>                               
                                <%--<input id="mobtxt" type="submit" class="mbl-no" placeholder="+91xxxxxxxxxx"/>--%>
                                <asp:TextBox ID="mobtxt" runat="server" class="mbl-no" placeholder="+91xxxxxxxxxx"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="* required" ForeColor="Red" ControlToValidate ="mobtxt" SetFocusOnError="True" runat="server" ErrorMessage="required mobile number"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="resn1txt">Reason for Booking :</label>
                            </td>
                            <td>
                                <%--<input type="text" ID="resntxt" class="mbl-no" placeholder="Admission Purpose" required>--%>
                                <asp:TextBox ID="resntxt" runat="server" class="mbl-no" placeholder="Reason .."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="* required" ForeColor="Red" ControlToValidate ="resntxt" SetFocusOnError="True" runat="server" ErrorMessage="required booking reason"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desc1txt">If Personal Emergency ? Please specify :</label>
                            </td>
                            <td>
                                <%--<input type="text" ID="desctxt" class="mbl-no" placeholder="Need Help..." required>--%>
                                 <asp:TextBox ID="desctxt" runat="server" class="mbl-no" placeholder="Optional.."></asp:TextBox>                               
                            </td>
                        </tr>
                        <tr>

                        </tr>
                    </table><br><br>
                </center>
                <div class="submit-btn">
                    <asp:Button ID="btn_next_1" class="mbl-no" runat="server" Text="Next" onclick="btn_next_1_Click"/>
                </div>
            </div>
        </div>
    </div>
        </asp:View>
        <%--view 1st end--%>

        <%--view 2nd start--%>
        <asp:View ID="View_2" runat="server">
             <div class="main">
        <div class="container">
            <div class="heading">
                <span>Confirm Details</span>
            </div>
            <div class="appointment_form">
                <center>
                    <table>
                        <tr>
                            <td>
                                <label for="e_txt">Email :</label>
                            </td>
                            <td>
                               <%-- <input type="date" ID="datetxt" class="mbl-no" placeholder="Enter mobile no." required>--%>
                                <asp:Label runat="server" ID="email_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="datetxt">Date of Booking :</label>
                            </td>
                            <td>
                               <%-- <input type="date" ID="datetxt" class="mbl-no" placeholder="Enter mobile no." required>--%>
                                <asp:Label runat="server" ID="date_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="emptxt">Meeting With :</label>
                            </td>
                            <td>
                                <asp:Label runat="server" ID="emp_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desigtxt">Your Designation :</label>
                            </td>
                            <td>                                
                                <asp:Label runat="server" ID="desig_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="Mobtxt">Mobile No :</label>
                            </td>
                            <td>                                
                                <asp:Label runat="server" ID="mob_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="resntxt">Reason for Booking :</label>
                            </td>
                            <td>                               
                                <asp:Label runat="server" ID="resn_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desctxt">If Personal Emergency ? Please specify :</label>
                            </td>
                            <td>                                
                                <asp:Label runat="server" ID="desc_txt" class="mbl-no"></asp:Label>
                            </td>
                        </tr>
                        <tr>

                        </tr>
                    </table><br><br>
                </center>
                <div class="submit-btn">
                    <asp:Button ID="btn_back" class="mbl-no" runat="server" Text="Back" OnClick="btn_back_Click"/>
                    <asp:Button ID="btn_see_details" class="mbl-no" runat="server" Text="See Details" OnClick="btn_see_details_Click"/>
                    <asp:Button ID="btn_book" class="mbl-no" runat="server" Text="Submit" OnClick="btn_book_Click"/>
                </div>
            </div>
        </div>
    </div>
        </asp:View>
        <%--view 2nd end--%>
    </asp:MultiView>
</asp:Content>
