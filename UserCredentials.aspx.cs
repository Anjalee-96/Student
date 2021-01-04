using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class UserCredentials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True");

        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Table_NewStudent WHERE email = @email", con);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable table = new DataTable();
        adapter.Fill(table);
        if (table.Rows.Count != 0)
        {
            String myGUID = Guid.NewGuid().ToString();
            int uid = Convert.ToInt32(table.Rows[0][0]);
            SqlCommand command = new SqlCommand("INSERT INTO Credentials(Id,uid,RequestDateTime) VALUES ('" + myGUID + "','" + uid + "',GETDATE())", con);
            command.ExecuteNonQuery();

            String ToEmailAddress = table.Rows[0][4].ToString();
            String name = table.Rows[0][2].ToString();
            String username = table.Rows[0][8].ToString();
            String password = table.Rows[0][9].ToString();
            String EmailBody = "Hi," + name + ",<br/><br/>Your User Name: "+username+ "<br/><br/>Your Password: " + password + "<br/><br/>Click the link below to reset your password<br/> <br/> http://localhost:11168/Default.aspx?uid=" + myGUID;

            MailMessage CredentialsMail = new MailMessage();
            CredentialsMail.From = new MailAddress("Sender's Email Address", ToEmailAddress);
            CredentialsMail.To.Add(new MailAddress(txtEmail.Text));

            CredentialsMail.Body = EmailBody;
            CredentialsMail.IsBodyHtml = true;
            CredentialsMail.Subject = "User Registration System";

            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.Credentials = new NetworkCredential()
            {
                               
                UserName = "Sender's Email Address",
                Password = "Email Password"

            };
            SMTP.EnableSsl = true;
            SMTP.Send(CredentialsMail);


            lblMessage.Text = "User Credentiald Sent!...";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            txtEmail.Text = string.Empty;
        }
        else
        {
            lblMessage.Text = "OOps! This email does not exist!... Try Again";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            txtEmail.Text = string.Empty;
            txtEmail.Focus();

        }
    }
}