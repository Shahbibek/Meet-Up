<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="book_appointment.aspx.cs" Inherits="MeetUP.book_appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/multiview.css" rel="stylesheet" />
    
    <%--firebase integration start--%>
    <script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>
<script>
    const firebaseConfig = {
        apiKey: "AIzaSyBZa_Lz83DsFiGZDuLKZtNxpOVODx2DBvM",
        authDomain: "meet-up-386be.firebaseapp.com",
        projectId: "meet-up-386be",
        storageBucket: "meet-up-386be.appspot.com",
        messagingSenderId: "124633400463",
        appId: "1:124633400463:web:6d20aeef940a0991735cfa",                
    };
    firebase.initializeApp(firebaseConfig);
    //    render();
    //function render() {
    //    window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier("recaptcha-container");
    //    recaptchaVerifier.render();
    //};
</script>
<script src="js/number_verification.js" type="text/javascript"></script>
    <%--firebase integration end--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView_1" runat="server" ActiveViewIndex="0">
        
        <%--view 1st start--%>
        
        <asp:View ID="View_1" runat="server">
            <div class="main">
        <div class="container">
            <div class="heading">
                <span>Verify your mobile number</span>
            </div>           
            <p class="desc">Enter your mobile number to verify</p>
            <div>
                <input type="text" ID="mobileNo" class="mbl-no" runat="server" placeholder="Enter mobile no." required>
            </div>
            <div  id="recaptcha-container">

            </div>
            <div class="submit-btn">
                <asp:Button ID="btn_next" runat="server" Text="Submit" onclick="btn_next_Click"/>
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
                <span>Verify yourself</span>
            </div>
            <p class="desc">Enter the 6 digit OTP sent via sms on your phone</p>
            <div>
                <input type="text" ID="OTPtxt" class="mbl-no" runat="server" placeholder="Enter the OTP" required>
            </div>
            <div class="submit-btn">
                <asp:Button ID="btn_verify" runat="server" Text="Verify" onclick="btn_verify_Click"/>
            </div>
        </div>
    </div>
        </asp:View>
        <%--view 2nd end--%>


        <%--view 3rd start--%>
        <asp:View ID="View_3" runat="server">
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
                                <label for="datetxt">Date of Booking :</label>
                            </td>
                            <td>
                                <input type="date" ID="datetxt" class="mbl-no" placeholder="Enter mobile no." required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="emptxt">Meeting With :</label>
                            </td>
                            <td>
                                <select ID="emptxt" class="mbl-no" placeholder="Enter mobile no." required>
                                    <option value="">Dr. Amit Lathigara</option>
                                    <option value="">Dr. Paresh Tanna</option>
                                    <option value="">Bhoomi Dangar</option>
                                    <option value="">Nirav Bhatt</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desigtxt">Your Designation :</label>
                            </td>
                            <td>
                                <input type="text" ID="desigtxt" class="mbl-no" placeholder="Assistant Professor"
                                    required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="resntxt">Reason for Booking :</label>
                            </td>
                            <td>
                                <input type="text" ID="resntxt" class="mbl-no" placeholder="Admission Purpose" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="desctxt">If Personal Emergency ? Please specify :</label>
                            </td>
                            <td>
                                <input type="text" ID="desctxt" class="mbl-no" placeholder="Need Help..." required>
                            </td>
                        </tr>
                        <tr>

                        </tr>
                    </table><br><br>
                </center>
                <div class="submit-btn">
                    <asp:Button ID="btn_next_1" runat="server" Text="Next" onclick="btn_next_1_Click"/>
                </div>
            </div>
        </div>
    </div>
        </asp:View>
        <%--view 3rd end--%>

        <%--view 4th start--%>
        <asp:View ID="View_4" runat="server">

        </asp:View>
        <%--view 4th end--%>
    </asp:MultiView>
</asp:Content>
