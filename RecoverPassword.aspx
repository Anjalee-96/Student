<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password or Password Recovery</title>
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
            <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />
                    <br />
                    <br />
                    <h2>Reset Password</h2>
                    <hr />
                    <h3></h3>
                    <div class="form-group">
                        <asp:Label ID="lblmsg" CssClass="col-md-2 control-label" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="Enter New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNewPassword" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblNewCPassword" CssClass="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNewCPassword" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewConfirmPassword" CssClass="Text-danger" runat="server" ErrorMessage="Enter Again Your New Password" ControlToValidate="txtNewCPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorNewPassword" runat="server" ErrorMessage="Confirm Password Not Match. Try Again..." ControlToCompare="txtNewPassword" ControlToValidate="txtNewCPassword"></asp:CompareValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-2">
                            <div class="col-md-6">
                                <asp:Button ID="btnResetNewpwd" CssClass="btn btn-default" runat="server" Text="Reset" Width="64px" Visible="False" OnClick="btnResetNewpwd_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!--Footer Content Start-->
    <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to Top</a></p>
            <p>&copy;2020 Student Registration System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>
        </div>
    </footer>
    <!--Footer Content End-->
</body>
</html>
