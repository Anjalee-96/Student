<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custom.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <div>
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
                                <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Signing Form Start-->
        <div class="container">
            <div class="center-page">
                <h2>LOGIN FORM</h2>
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-xs-11 control-label" runat="server" Text="Username"></asp:Label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtUName" runat="server" CssClass="form-control" placeholder="Enter Your Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="Enter Your Username" ControlToValidate="txtUName" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-xs-11 control-label" runat="server" Text="Password"></asp:Label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtUPassword" runat="server" CssClass="form-control" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" CssClass="text-danger" ErrorMessage="Enter Your Password" ControlToValidate="txtUPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>
                <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-xs-11 control-label" runat="server" Text="Remember Me"></asp:Label>
                    <div class="col-xs-11">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </div>
                </div>
                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>
                <div class="col-xs-11">
                    <asp:Button ID="btnLogIn" Class="btn btn-success" runat="server" Text="Login" OnClick="btnLogIn_Click" />
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>

                <!--Fogotten Password Start-->
                <div class="form-group">
                    <div class="col-xs-11">
                        <div class="col-xs-11">
                            <asp:HyperLink ID="hlForgotpwd" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                        </div>
                    </div>
                </div>
                <!--Fogotten Password End-->
            </div>
        </div>
        <!--Signing Form End-->

        <!--Footer Content Start-->
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2020 Student Registration System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>
            </div>
        </footer>
        <!--Footer Content End-->
    </form>
</body>
</html>
