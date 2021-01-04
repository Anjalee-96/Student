using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ManageStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True");

        con.Open();
        SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[Table_NewStudent] WHERE [regNumber]='" + txtReg.Text+"'", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Student Deleted Successfully.'); </script>");
        txtReg.Text = string.Empty;
        con.Close(); 
    }
}