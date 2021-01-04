<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration System</title>

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
                            <img src="images/img_06.png" alt="Student Registraion System" height="30" /></span>Student Registration System</a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Image Slider -->
            <div class="container">
                <h2>Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/img_04.jpg" alt="" style="width: 100%; height: 251px;" />
                        </div>
                        <div class="item">
                            <img src="images/img_07.png" alt="" style="width: 100%; height: 251px;" />
                        </div>
                        <div class="item">
                            <img src="images/img_05.png" alt="" style="width: 100%; height: 251px;" />
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!-- Image Slider End -->
        </div>
        <!--Middle Content Start-->
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="images/customer.png" alt="thumb" width="140" height="140" />
                    <h2>Registered User</h2>
                    <p><a class="btn btn-default" href="SignIn.aspx" role="button">SIGN IN &raquo</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="images/unauthorized-person.png" alt="thumb" width="140" height="140" />
                    <h2>Unregistered User</h2>
                    <p><a class="btn btn-default" href="Unregistered.aspx" role="button">SIGN IN &raquo</a></p>
                </div>
            </div>
        </div>

        <!--Middle Content End-->

        <!--Footer Content Start-->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2020 Student Registration System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Products</a></p>
            </div>
        </footer>
        <!--Footer Content End-->
    </form>
</body>
</html>
