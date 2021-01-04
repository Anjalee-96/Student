<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserCredentials.aspx.cs" Inherits="UserCredentials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />

    <hr />
    <h2>Send User Credentials</h2>
    <hr />
    <div class="container">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-xs-11">Student Email:</label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Enter Student Email"></asp:TextBox>
                </div>

                <label class="col-xs-11"></label>
                <label class="col-xs-11"></label>

                <div class="col-xs-11">
                    <asp:Button ID="btnSend" Class="btn btn-success" runat="server" Text="Send" OnClick="btnSend_Click" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <!--Footer Content Start-->
    <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to Top</a></p>
            <p>&copy;2020 Student Registration System.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="Default.aspx">Contact</a>&middot;<a href="Default.aspx">Students</a></p>
        </div>
    </footer>
    <!--Footer Content End-->
</asp:Content>

