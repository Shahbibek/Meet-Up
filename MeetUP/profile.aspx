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
                    <span>Eftakhar Mahmud</span>
                </div>
                <div class="emailtxt">
                    <span>eshikat355@rku.ac.in</span>
                </div>
                <div class="mobnotxt">
                    <span>+91 83459 82386</span>
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
                                        <input type="text" ID="fnametxt" class="mbl-no" placeholder="Eftakhar Mahmud" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="lnametxt">Last name :</label>
                                    </td>
                                    <td>
                                        <input type="text" ID="lnametxt" class="mbl-no" placeholder="Shikat" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="dnametxt">Display name :</label>
                                    </td>
                                    <td>
                                        <input type="text" ID="dnametxt" class="mbl-no" placeholder="Eftakhar Mahmud" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="emailtxt">Email :</label>
                                    </td>
                                    <td>
                                        <input type="text" ID="emailtxt" class="mbl-no" placeholder="eshikat355@rku.ac.in" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="phonetxt">Phone no :</label>
                                    </td>
                                    <td>
                                        <input type="text" ID="phonetxt" class="mbl-no" placeholder="+91 83459 82386" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl-td">
                                        <label for="desigtxt">Current designation :</label>
                                    </td>
                                    <td>
                                        <select ID="desigtxt" class="mbl-no" placeholder="Enter mobile no." required>
                                            <option value="">Student</option>
                                            <option value="">Gurdian</option>
                                            <option value="">Teacher</option>                                </select>
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
