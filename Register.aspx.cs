using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        
        if(isformvalid())
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True");

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Table_NewStudent(name,regNumber,address,email,dob,nic,contact,username,password,userType) VALUES('" + txtName.Text + "','" + txtRegNum.Text + "','" + txtAddr.Text + "','" + txtEmail.Text + "','" + txtDOB.Text + "','" + txtNIC.Text + "','" + txtContact.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','User')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Student Registered Successfully'); </script>");
            Clear();
            con.Close();
            lblMessage.Text = "Student Registered.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("~/UserCredentials.aspx");
        }
        else
        {
            Response.Write("<script> alert('User not registered. Somthing went wrong.'); </script>");
            lblMessage.Text = "User Not Registered.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }

    private bool isformvalid()
    {
        if(txtName.Text=="" || txtUserName.Text=="" || txtPassword.Text=="" || txtCPassword.Text=="" || txtEmail.Text=="" || txtAddr.Text=="" || txtContact.Text=="" || txtNIC.Text=="" || txtRegNum.Text=="" || txtDOB.Text=="")
        {
            Response.Write("<script> alert('Fields cannot be empty'); </script>");
            txtName.Focus();
            txtUserName.Focus();
            txtPassword.Focus();
            txtPassword.Focus();
            txtEmail.Focus();
            return false;
        }
        else if(txtCPassword.Text != txtPassword.Text)
        {
            Response.Write("<script> alert('This password is not matching with previous entered password.'); </script>");
            return false;
        }
        return true;
    }
    private void Clear()
    {
        txtName.Text = string.Empty;
        txtUserName.Text = string.Empty;
        txtPassword.Text = string.Empty;
        txtCPassword.Text = string.Empty;
        txtEmail.Text = string.Empty;
    }

    protected void ibCal_Click(object sender, ImageClickEventArgs e)
    {
        clDOB.Visible = true;
    }

    protected void clDOB_SelectionChanged(object sender, EventArgs e)
    {
        txtDOB.Text = clDOB.SelectedDate.ToShortDateString();
        clDOB.Visible = false;
    }
}