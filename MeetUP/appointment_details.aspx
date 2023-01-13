<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="appointment_details.aspx.cs" Inherits="MeetUP.appointment_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="css/style.css" rel="stylesheet" />
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

</asp:Content>
