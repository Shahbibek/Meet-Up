<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MeetUP.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/profile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="profile-section">
        <div class="profile-container">
            <div class="pro-heading">
                <span>Your Profile</span>
            </div>
          <div class="profile-row">
            <div class="profile-col-1">
            <div class="pro-details">
              <a href="#"><img src="/images/Profile photo.jpg" alt="Profile photo"></a>
                <div class="dname">
                    <%--<span>Eftakhar Mahmud</span>--%>
                    <span><asp:Label ID="d_name" runat="server" Text="your name"></asp:Label></span>
                </div>
                <div class="emailtxt">
                    <%--<span>eshikat355@rku.ac.in</span>--%>
                    <span><asp:Label ID="email_id" runat="server" Text="example@gmail.com"></asp:Label></span>                  
                </div>
                <div class="mobnotxt">
                    <%--<span>+91 83459 82386</span>--%>
                     <span><asp:Label ID="mob_no" runat="server" Text="+91xxxxxxxxxx"></asp:Label></span>
                </div>
                <div class="btn-sec">
                    <button>Profile Settings</button>
                    <button>Your Appointment</button>
                </div>
            </div>
        </div>
            <div class="profile-col-2 form-col">
                <div class="inner-container">
                    <div id="MyForm" class="appointment_form">
        
                            <table>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="fnametxt">First name :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="fnametxt" class="mbl-no" placeholder="Eftakhar Mahmud" required>--%>
                                        <asp:TextBox ID="fnametxt" runat="server" class="mbl-no" placeholder="Enter fname"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="* required" ForeColor="Red" ControlToValidate ="fnametxt" SetFocusOnError="True" runat="server" ErrorMessage="required fname"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="lnametxt">Last name :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="lnametxt" class="mbl-no" placeholder="Shikat" required>--%>
                                         <asp:TextBox ID="lnametxt" runat="server" class="mbl-no" placeholder="Enter lname"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="* required" ForeColor="Red" ControlToValidate ="lnametxt" SetFocusOnError="True" runat="server" ErrorMessage="required lname"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="dnametxt">Display name :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="dnametxt" class="mbl-no" placeholder="Eftakhar Mahmud" required>--%>
                                        <asp:TextBox ID="dnametxt" runat="server" class="mbl-no" placeholder="Profile display name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="* required" ForeColor="Red" ControlToValidate ="dnametxt" SetFocusOnError="True" runat="server" ErrorMessage="required display name"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="emailtxt">Email :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="emailtxt" class="mbl-no" placeholder="eshikat355@rku.ac.in" required>--%>
                                         <asp:TextBox ID="emailtxt" runat="server" class="mbl-no" placeholder="example@gmail.com"></asp:TextBox>
                                         <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="* required" ForeColor="Red" ControlToValidate ="emailtxt" SetFocusOnError="True" runat="server" ErrorMessage="required email"></asp:RequiredFieldValidator>--%>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*invalid email" ControlToValidate ="emailtxt" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Email is not valid"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="phonetxt">Phone no :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="phonetxt" class="mbl-no" placeholder="+91 83459 82386" required>--%>
                                        <asp:TextBox ID="phonetxt" runat="server" class="mbl-no" placeholder="+91xxxxxxxxxx"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="* required" ForeColor="Red" ControlToValidate ="phonetxt" SetFocusOnError="True" runat="server" ErrorMessage="required phone no"></asp:RequiredFieldValidator>--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="*invalid mobile_no" ControlToValidate ="phonetxt" ValidationExpression="^([0]|\+91)?[789]\d{9}$" ForeColor="Red" ErrorMessage="mobile no is not valid"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="desigtxt">Current designation :</label>
                                    </td>
                                    <td>
                                       <%-- <select ID="desigtxt" class="mbl-no" placeholder="Enter mobile no." required>
                                            <option value="">Student</option>
                                            <option value="">Gurdian</option>
                                            <option value="">Teacher</option>                                
                                        </select>--%>
                                        <asp:DropDownList ID="desigtxt" runat="server" class="mbl-no">
                                            <asp:ListItem Value="select">Select</asp:ListItem>
                                            <asp:ListItem>Student</asp:ListItem>
                                            <asp:ListItem>Teacher</asp:ListItem>
                                            <asp:ListItem>Staff</asp:ListItem>
                                            <asp:ListItem>Professor</asp:ListItem>
                                            <asp:ListItem>Guardians</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                       </asp:DropDownList>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="* required" ForeColor="Red" ControlToValidate ="desigtxt" InitialValue="select" SetFocusOnError="True" runat="server" ErrorMessage="required designation"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>                                
                            </table><br><br>        
                        <div class="submit-btn">
                            <button class="edit-btn">Edit</button>
                            <button class="save-btn">Save</button>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
    </section>
</asp:Content>
