<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHome</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <h2>Welcome To The Student Management System!...</h2>

            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img src="images/img_06.png" alt="Student Registration System" height="30" /></span>Student Registration System</a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="SignIn.aspx">SignIn</a></li>
                            <li>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btnLogOut" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnLogOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <asp:Label ID="lblSuccess" Class="form-control" runat="server" CssClass="text-success"></asp:Label>

        <!--Footer Content Start-->
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2020 Student Management System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>
            </div>
        </footer>
        <!--Footer Content End-->
    </form>
</body>
</html>
