<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="VehicleProject.SignUp.SignUp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Auto Club Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form runat="server">
    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup-form" class="signup-form">
                        <h2 class="form-title">Create account</h2>
                        <div class="form-group">
                            <asp:TextBox ID="name"  CSSclass="form-input" placeholder="Your Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                             <asp:TextBox ID="email"  CSSclass="form-input" placeholder="Your Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="password" CSSclass="form-input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                             <asp:TextBox ID="phone"  CSSclass="form-input" placeholder="Phone Number" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                             <asp:TextBox ID="Address"  CSSclass="form-input" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" type="submit" CSSclass="form-submit" runat="server" OnClick="Button1_Click" Text="Sign Up" />
                            <asp:Label ID="Resulttlbl" runat="server" ForeColor="#009933"></asp:Label>
                        </div>
                    </form>
                    <p class="loginhere">
                        Have already an account ? <a href="#" class="loginhere-link">Login here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
 </form>
</body>
</html>
