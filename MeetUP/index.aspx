﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MeetUP.index" %>
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
                <button class="booking-btn" id="Button1" runat="server">Book Appointment</button>
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
          <div class="col-md-4">
            <div class="border-box"></div>
            <div class="emp-box">
              <div class="img-box">
                <img src="/images/Amit sir.png" alt="Dr. Amit Lathigara">
              </div>
              <div class="name-box">
                <span><b>Dr. Amit Lathigara</b></span>
              </div>
              <div class="desc-box">
                <span>Dean / Director</span>
                <span>School of Engineering</span>
                <span>RK University</span>
                <span>Rajkot, Gujarat</span>
                <span  class="details-btn"><a href="#">See Details</a></span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="border-box"></div>
            <div class="emp-box">
              <div class="img-box">
                <img src="/images/Paresh sir.png" alt="Dr. Paresh Tanna">
              </div>
              <div class="name-box">
                <span><b>Dr. Paresh Tanna</b></span>
              </div>
              <div class="desc-box">
                <span>Professor / Nodal Officer</span>
                <span>School of Engineering</span>
                <span>RK University</span>
                <span>Rajkot, Gujarat</span>
                <span  class="details-btn"><a href="#">See Details</a></span>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="border-box"></div>
            <div class="emp-box">
              <div class="img-box">
                <img src="/images/Bhoomi mam.png" alt="Bhoomi Dangar">
              </div>
              <div class="name-box">
                <span><b>Bhoomi Dangar</b></span>
              </div>
              <div class="desc-box">
                <span>Assistant Professor</span>
                <span>School of Engineering</span>
                <span>RK University</span>
                <span>Rajkot, Gujarat</span>
                <span  class="details-btn"><a href="#">See Details</a></span>
              </div>
            </div>
          </div>
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
                <button class="booking-btn" id="Button2" runat="server">Get Appointment</button>
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
