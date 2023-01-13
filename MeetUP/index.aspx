<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MeetUP.index" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- start banner section -->

    <section class="head-banner">
      <div class="head-container">
        <div class="head-row">
          <div class="col-head-banner top-intro">
            <div class="intro-box">
              <h1>MEET UP</h1>
              <div class="app-desc">
                <p>A online platform where user can meet or book an appointment to whom ever they want to meet. Schedule
                  your appointment in minutes...</p>
              </div>
              <div class="booking-btn-box">
                <%--<button class="booking-btn" id="Button1" runat="server" onclick="booking_btn">Book Appointment</button>--%>
                <asp:Button ID="booking_btn" class="booking-btn" runat="server" Text="Book Appointment" OnClick="booking_btn_Click"/>
              </div>
            </div>
          </div>
          <div class="col-head-banner top-banner">
            <div class="banner-box banner-bg">
              <img src="/images/appointment_pic.png" alt="Banner" class="banner-img">
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end banner section -->

    <!-- start section-2 -->

    <section class="section-2">
      <div class="sec2-container">
        <div class="emp-head-box">
          <div class="sec2-head">
            <h1>Need an appointment ?</h1>
          </div>
        </div>
        <div class="sec2-row">
          <div class="col-sec2 line-border">
            <div class="sec2-img-box">
              <img src="/images/appointment .png" alt="Schedule Appointment" class="sec2-img">
            </div>
          </div>
          <div class="col-sec2">
            <div class="sec2-txtbox">
              <div class="step-head">
                <span>Follow the steps :</span>
              </div>
              <div class="sec2-steps">
                <ul>
                  <li>Verify yourself using mobile no.</li>
                  <li>Choose Department/Management. </li>
                  <li>Select Date of Appointment.</li>
                  <li>Explain, Why theme of the meeting.</li>
                  <li>Get confirmation on mail...!!</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end section-2 -->

    <!-- start emp section -->

    <section class="emp-sec">
      <div class="container">
        <div class="emp-head-box">
          <div class="emp-head">
            <h1>Meet with</h1>
          </div>
        </div>
        <div class="row">
            <asp:Repeater ID="col_repeater" runat="server">
            
              <ItemTemplate>
                  <div class="col-md-4">
                    <div class="border-box"></div>
                    <div class="emp-box">
                      <div class="img-box">                        
                        <img src="<%#Eval("profile_url_repeater")%>" alt="logo">
                      </div>
                      <div class="name-box">
                        <span><b><%#Eval("name")%></b></span>
                      </div>
                      <div class="desc-box">
                        <span><%#Eval("designation")%></span>
                        <span><%#Eval("school")%></span>
                        <span><%#Eval("Institute")%></span>
                        <span><%#Eval("place")%></span>
                        <span class="details-btn" id="Button12" runat="server"><a href="#">See Details</a></span>
                      </div>
                    </div>
                  </div>                                              
                        <%--<asp:Button class="details-btn" ID="BtnShow" runat="server" Text="See Details" />--%>
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
                </ItemTemplate>
            </asp:Repeater>
        </div>
      </div>
    </section>

    <!-- end emp section -->

   
              

    <!-- start section 4 -->

    <section class="section-4">
      <div class="head-container">
        <div class="head-row">
          <div class="col-head-banner footer-left-bg">
            <div class="schedule-head">
              <h1>Schedule your appointment in minutes?</h1>
              <div class="app-desc">
                <p>The way to get started is to quit talking and being doing.</p>
                <p>Get your appointment booked.</p>
              </div>
              <div class="booking-btn-box">
                <%--<button class="booking-btn" id="btn_appoint" runat="server" onclick="btn_appointment">Get Appointment</button>--%>
                  <asp:Button ID="btn_appoint" class="booking-btn" runat="server" Text="Get Appointment" OnClick="btn_appoint_Click"/>
              </div>
            </div>
          </div>
          <div class="col-head-banner top-banner footer-bg">
            <div class="banner-box">
              <img src="/images/appointment-booking.png" alt="Banner" class="footer-img">
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end section 4 -->

</asp:Content>
