using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
            {
                txtUName.Text = Request.Cookies["Username"].Value;
                txtUPassword.Text = Request.Cookies["Password"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True");

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Table_NewStudent WHERE username = @username and password = @pwd", con);
            cmd.Parameters.AddWithValue("@username",txtUName.Text);
            cmd.Parameters.AddWithValue("@pwd", txtUPassword.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            adapter.Fill(table);
            cmd.ExecuteNonQuery();
            if(table.Rows.Count != 0)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["Username"].Value = txtUName.Text;
                    Response.Cookies["Password"].Value = txtUPassword.Text;

                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                string Utype;
                Utype = table.Rows[0][10].ToString().Trim();

                if(Utype == "User")
                {
                    Session["Username"] = txtUName.Text;
                    Response.Redirect("~/UserHome.aspx");
                }

                if (Utype == "Admin")
                {
                    Session["Username"] = txtUName.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }
                
            }
            else
            {
                Response.Write("<script> alert('Invalid Username or Password.'); </script>");
                lblmsg.Text = "Please Enter Valid Username and Password.";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            Clear();
            con.Close();
        }
    }
    private bool isformvalid()
    {
        if (txtUName.Text == "" || txtUPassword.Text == "")
        {
            Response.Write("<script> alert('Fields cannot be empty'); </script>");
            txtUName.Focus();
            txtUPassword.Focus();

            return false;
        }
        else
        {
            return true;
        }
    }
    private void Clear()
    {
        txtUName.Text = string.Empty;
        txtUPassword.Text = string.Empty;       
    }

    protected void lnkbtnFogotpwd_Click(object sender, EventArgs e)
    {

    }
}