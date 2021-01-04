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

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetpwd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-DTI9CNK5\\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True");

        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Table_NewStudent WHERE email = @email", con);
        cmd.Parameters.AddWithValue("@email", txtEmailID.Text);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable table = new DataTable();
        adapter.Fill(table);
        if (table.Rows.Count != 0)
        {
            String myGUID = Guid.NewGuid().ToString();
            int uid = Convert.ToInt32(table.Rows[0][0]);
            SqlCommand command = new SqlCommand("INSERT INTO ForgotPass(Id,uid,RequestDateTime) VALUES ('" + myGUID + "','" + uid + "',GETDATE())", con);
            command.ExecuteNonQuery();

            String ToEmailAddress =table.Rows[0][5].ToString();
            String username = table.Rows[0][3].ToString();
            String EmailBody ="Hi,"+username+ ",<br/><br/>Click the link below to reset your password<br/> <br/> http://localhost:11168/RecoverPassword.aspx?uid="+myGUID;

            MailMessage PassResetMail = new MailMessage();
            PassResetMail.From = new MailAddress("Sender's Email Address", ToEmailAddress);
            PassResetMail.To.Add(new MailAddress(txtEmailID.Text));
            
            PassResetMail.Body = EmailBody;
            PassResetMail.IsBodyHtml = true;
            PassResetMail.Subject = "Reset Password";

            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.Credentials = new NetworkCredential()
            {
                                
                UserName = "Sender's Email Address",
                Password = "Email Password"

            };
            SMTP.EnableSsl = true;
            SMTP.Send(PassResetMail);


            lblResetPasswordMsg.Text = "Reset link send! Check your email for reset password";
            lblResetPasswordMsg.ForeColor = System.Drawing.Color.Green;
            txtEmailID.Text = string.Empty;           
        }
        else
        {
            lblResetPasswordMsg.Text = "OOps! This email does not exist!... Try Again";
            lblResetPasswordMsg.ForeColor = System.Drawing.Color.Red;
            txtEmailID.Text = string.Empty;
            txtEmailID.Focus();

        }
        
    }
}