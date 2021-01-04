<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
                            <li class="active"><a href="Register.aspx">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--SignUp Page Start-->
        <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <br />
                <hr />
                <h2>User Register</h2>
                <hr />
                <div class="form-group">
                    <label class="col-xs-11">Full Name:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Enter Full Name"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Registration Number:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtRegNum" runat="server" Class="form-control" placeholder="Enter Registration Number"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Address:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAddr" runat="server" Class="form-control" placeholder="Enter Address"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Email:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">DOB:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDOB" runat="server" Class="form-control" placeholder="Enter DOB"></asp:TextBox>                                                                           
                        
                    </div>
                    <div class="col-md-3">
                        <asp:ImageButton ID="ibCal" CssClass="form-control" runat="server" ImageUrl="~/images/cal.jpg" Width="50px" OnClick="ibCal_Click" />
                        <label class="col-xs-11"></label>
                        <label class="col-xs-11"></label>
                        <label class="col-xs-11"></label>
                        <label class="col-xs-11"></label>
                        <asp:Calendar ID="clDOB" Class="form-control" runat="server" Visible="False" TitleStyle-Wrap="True" OnSelectionChanged="clDOB_SelectionChanged"></asp:Calendar>

                    </div>
                </div>
                        
                <div class="form-group">
                    <label class="col-xs-11">NIC:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtNIC" runat="server" Class="form-control" placeholder="Enter NIC"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Contact Number:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtContact" runat="server" Class="form-control" placeholder="Enter Contact Number"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">UserName:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtUserName" runat="server" Class="form-control" placeholder="Enter Your User Name"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Password:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Confirm Password:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCPassword" runat="server" Class="form-control" placeholder="Enter Your Password Again" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>

                <div class="col-xs-11">
                    <asp:Button ID="btnReg" Class="btn btn-success" runat="server" Text="Register" OnClick="btnReg_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                    <!--Footer Content Start-->
                    <footer class="footer-pos">
                        <div class="container">
                            <p class="pull-right"><a href="#">Back to Top</a></p>
                            <p>&copy;2020 Student Registration System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>
                        </div>
                    </footer>
                    <!--Footer Content End-->
                </div>

            </div>
        </div>
        <!--SignUp Page End-->
    </form>
</body>
</html>
