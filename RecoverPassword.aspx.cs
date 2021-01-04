using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RecoverPassword : System.Web.UI.Page
{
    String GUIDvalue;
    DataTable table = new DataTable();
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=eShopping;Integrated Security=True"))
        {
            con.Open();
            GUIDvalue = Request.QueryString["uid"];
            if(GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM ForgotPass WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);               
                adapter.Fill(table);
                if(table.Rows.Count != 0)
                {
                    uid = Convert.ToInt32(table.Rows[0][1]);
                }
                else
                {
                    lblmsg.Text = "Your password reset link is expired or invalid... Please Try Again...";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }               
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        if(!IsPostBack)
        {
            if(table.Rows.Count!=0)
            {
                txtNewPassword.Visible = true;
                txtNewCPassword.Visible = true;
                lblNewPassword.Visible = true;
                lblNewCPassword.Visible = true;
                btnResetNewpwd.Visible = true;
            }
            else
            {
                lblmsg.Text = "Your password reset link is expired or invalid... Please Try Again...";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
    protected void btnResetNewpwd_Click(object sender, EventArgs e)
    {
        if(txtNewPassword.Text != "" &&txtNewCPassword.Text != "" && txtNewCPassword.Text == txtNewPassword.Text)
        {
            using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=eShopping;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Table_User SET password=@pwd WHERE uid=@uid", con);
                cmd.Parameters.AddWithValue("@pwd", txtNewPassword.Text);
                cmd.Parameters.AddWithValue("@uid", uid);
                cmd.ExecuteNonQuery();
                
                SqlCommand cmd_01 = new SqlCommand("DELETE FROM ForgotPass WHERE uid='" + uid + "'", con);
                cmd_01.ExecuteNonQuery();
                Response.Write("< script > alert('Password Reset Successfully...'); </script>");
                Response.Redirect("~/SignIn.aspx");                
            }
        }       
    }
}