<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MeetUP.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/profile.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <asp:MultiView ID="MultiView_1" runat="server" ActiveViewIndex="0">
         <%--view 1st start--%>
        <asp:View ID="View_1" runat="server">
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
                    <asp:Button ID="profile_s" runat="server" class="btn-sec" Text="Profile Settings" />
                    <asp:Button ID="appoint_s" runat="server" class="btn-sec" Text="Your Appointment" onclick="appoint_s_Click"/>
                  <%--  <button>Profile Settings</button>
                    <button>Your Appointment</button>--%>
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
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="lnametxt">Last name :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="lnametxt" class="mbl-no" placeholder="Shikat" required>--%>
                                         <asp:TextBox ID="lnametxt" runat="server" class="mbl-no" placeholder="Enter lname"></asp:TextBox>                                         
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="dnametxt">Display name :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="dnametxt" class="mbl-no" placeholder="Eftakhar Mahmud" required>--%>
                                        <asp:TextBox ID="dnametxt" runat="server" class="mbl-no" placeholder="Profile display name"></asp:TextBox>                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="emailtxt">Email :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="emailtxt" class="mbl-no" placeholder="eshikat355@rku.ac.in" required>--%>
                                        <asp:TextBox ID="emailtxt" runat="server" class="mbl-no" placeholder="example@gmail.com" ReadOnly="True"></asp:TextBox>                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="phonetxt">Phone no :</label>
                                    </td>
                                    <td>
                                        <%--<input type="text" ID="phonetxt" class="mbl-no" placeholder="+91 83459 82386" required>--%>
                                        <asp:TextBox ID="phonetxt" runat="server" class="mbl-no" placeholder="+91xxxxxxxxxx"></asp:TextBox>                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="desigtxt">Current designation :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="desigtxt" runat="server" class="mbl-no" placeholder="current designation"></asp:TextBox>                                      
                                    </td>
                                </tr>                                
                            </table><br><br>        
                        <div class="submit-btn">
                            <asp:Button ID="edit_profile" class="edit-btn" runat="server" Text="Edit" onclick="edit_profile_Click"/>
                            <asp:Button ID="save_profile" class="save-btn" runat="server" Text="Save" onclick="save_profile_Click"/>
                           <%-- <button class="edit-btn">Edit</button>
                            <button class="save-btn">Save</button>--%>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
    </section>
        </asp:View>
         <%--view 1st end--%>

         <%--view 2nd start--%>
        <asp:View ID="View_2" runat="server">

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
              <span>Eftakhar Mahmud</span>
            </div>
            <div class="emailtxt">
              <span>eshikat355@rku.ac.in</span>
            </div>
            <div class="mobnotxt">
              <span>+91 83459 82386</span>
            </div>
            <div class="btn-sec">
                 <asp:Button ID="profile_s1" runat="server" class="btn-sec" Text="Profile Settings" OnClick="profile_s1_Click" />
                 <asp:Button ID="appoint_1" runat="server" class="btn-sec" Text="Your Appointment" />
             <%-- <button>Profile Settings</button>
              <button>Your Appointment</button>--%>
            </div>
          </div>
        </div>
        <div class="profile-col-2 form-col">
          <div class="inner-container">
            <table class="table table-striped appoint_tbl">
              <div class="tbl-head">
                <h3>Appointment Details</h3>
              </div>
              <thead class="tbl-thead">
                <tr>
                  <th scope="col">Appointments</th>
                  <th scope="col">Status</th>
                  <th scope="col">Cancelation</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="tbl-col-1">appoint_id_1</td>
                  <td class="accepted-col">Accepted</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
                <tr>
                  <td class="tbl-col-1">appoint_id_2</td>
                  <td class="accepted-col">Accepted</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
                <tr>
                  <td class="tbl-col-1">appoint_id_3</td>
                  <td class="rejected-col">Rejected</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
                <tr>
                  <td class="tbl-col-1">appoint_id_4</td>
                  <td class="pending-col">Pending</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
                <tr>
                  <td class="tbl-col-1">appoint_id_5</td>
                  <td class="rejected-col">Rejected</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
                <tr>
                  <td class="tbl-col-1">appoint_id_6</td>
                  <td class="pending-col">Pending</td>
                  <td>
                    <button class="cancle-bt">Cancle</button>
                    <button class="print-btn"><img src="/images/print_icon.png" alt=""></button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>

        </asp:View>
         <%--view 2nd end--%>

     </asp:MultiView>
</asp:Content>
