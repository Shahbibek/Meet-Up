<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print_pdf_meetup_team.aspx.cs" Inherits="MeetUP.print_pdf_meetup_team" %>

<!DOCTYPE html>
<html5>

<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Fruktur&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Istok+Web&display=swap" rel="stylesheet" />
    <link href="css/appointment_pdf.css" rel="stylesheet" />
    <title>Meet Up</title>
</head>

<body>
    <section class="main">
        <div class="container">
            <div class="header">
                <div>
                    <span class="logo">MEETUP</span>
                </div>
                <div>
                    <span class="tag-line">Schedule your appointment in minutes...</span>
                </div>
            </div>
            <div class="pdf-section">
                <span class="sec-head">User</span>
                <table>
                    <tr>
                        <td><span class="attribute-name">First Name :</span></td>
                        <td><span class="attribute-item">Eftakhar Mahmud</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Last Name :</span></td>
                        <td><span class="attribute-item">Shikat</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Email :</span></td>
                        <td><span class="attribute-item">example@gmail.com</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Mobile No :</span></td>
                        <td><span class="attribute-item">+91 XXXXXXXXXX</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Designation :</span></td>
                        <td><span class="attribute-item">Student</span></td>
                    </tr>
                </table>
            </div>
            <div class="pdf-section">
                <span class="sec-head">Meet With</span>
                <table>
                    <tr>
                        <td><span class="attribute-name">Name :</span></td>
                        <td><span class="attribute-item">Dr. Paresh Tanna</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Position :</span></td>
                        <td><span class="attribute-item">Professor/Nodal Officer</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Department :</span></td>
                        <td><span class="attribute-item">School of Engineering</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Branch :</span></td>
                        <td><span class="attribute-item">Computer Engineering</span></td>
                    </tr>
                </table>
            </div>
            <div class="pdf-section">
                <span class="sec-head">Meeting Details</span>
                <table>
                    <tr>
                        <td><span class="attribute-name">Reason for booking :</span></td>
                        <td><span class="attribute-item">Admission purpose</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Booking scheduled from :</span></td>
                        <td><span class="attribute-item">20-01-2023 12:00pm</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Booking scheduled to :</span></td>
                        <td><span class="attribute-item">20-01-2023 12:30pm</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Appointment ID :</span></td>
                        <td><span class="attribute-item status">appoint_id_25</span></td>
                    </tr>
                    <tr>
                        <td><span class="attribute-name">Status :</span></td>
                        <td><span class="attribute-item status">Accepted</span></td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
    <section class="pdf-footer">
        <div class="copyright">
            <span>Copyright &copy 2023 MeetUp Team</span>
        </div>
        <div class="follow">
            <span>Follow Us </span>
            <a class="social-ic" href="#"><img src="/images/github_icon.png" alt="Github"></a>
            <a class="social-ic" href="#"><img src="/images/instagram_icon.png" alt="Instagram"></a>
            <a class="social-ic" href="#"><img src="/images/facebook_icon.png" alt="Facebook"></a>
        </div>
    </section>
</body>

</html5>