using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
public partial class forgot_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ut = utype.SelectedValue;
        string query1 = "";
        Response.Write(ut);
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = E:\PlacementMGT\placement_management.mdf; Integrated Security = True; Connect Timeout = 300";
        conn.Open();
        if (ut == "S")
        {
            query1 = "select * from signup where sig_email = '" + txtemail.Text + "'";
            //Response.Redirect("dir2/student/profile.aspx");

        }

        else if (ut == "T")
        {
            query1 = "select * from tpo where tpo_email = '" + txtemail.Text + "'";
            //Response.Redirect("company_reg.aspx");
        }
        else if (ut == "C")
        {
            query1 = "select * from coordinator where co_email = '" + txtemail.Text + "'";
        }
        else if (ut == "A")
        {
            query1 = "select * from Admin where a_email = '" + txtemail.Text + "'";
            //Response.Redirect("dir1/Admin/tpo_registration.aspx");

        }
        else
        {
            Response.Write("<script>alert('Please select relevant user type');</script>");
        }
        SqlDataAdapter da1 = new SqlDataAdapter(query1, conn);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        int i = dt1.Rows.Count;
        if (i > 0)
        {
            if (ut == "S")
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("jaladhipatel46@gmail.com");
                msg.To.Add(txtemail.Text);

                string q3 = "select pass from signup where sig_email = '" + txtemail.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q3, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                string password = dt.Rows[0][0].ToString();
           
                msg.Subject = "Your password for BVM Placement Portal.";
                msg.Body = "This is your password for BVM Placement portal is : " + password + " P.S.: Dont share with anyone!";
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "jaladhipatel46@gmail.com"; //Your Email ID  
                ntwd.Password = "jaladhi@27733688"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Write("<script>alert('Password of BVM Portal has been sent to your registerd Email Id')</script>");

            }
            else if (ut == "T")
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("jaladhipatel46@gmail.com");
                msg.To.Add(txtemail.Text);

                string q3 = "select tpo_pwd from tpo where tpo_email = '" + txtemail.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q3, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                string password = dt.Rows[0][0].ToString();

                msg.Subject = "Your password for BVM Placement Portal.";
                msg.Body = "This is your password for BVM Placement portal is : " + password + " P.S.: Dont share with anyone!";
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "jaladhipatel46@gmail.com"; //Your Email ID  
                ntwd.Password = "jaladhi@27733688"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Write("<script>alert('Password of BVM Portal has been sent to your registerd Email Id')</script>");
            }
            else if (ut == "C")
            {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("jaladhipatel46@gmail.com");
                msg.To.Add(txtemail.Text);

                string q3 = "select co_pwd from coordinator where co_email = '" + txtemail.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q3, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                string password = dt.Rows[0][0].ToString();

                msg.Subject = "Your password for BVM Placement Portal.";
                msg.Body = "This is your password for BVM Placement portal is : " + password + " P.S.: Dont share with anyone!";
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "jaladhipatel46@gmail.com"; //Your Email ID  
                ntwd.Password = "jaladhi@27733688"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Write("<script>alert('Password of BVM Portal has been sent to your registerd Email Id')</script>");
            }
            else if (ut == "A")
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("jaladhipatel46@gmail.com");
                msg.To.Add(txtemail.Text);

                string q3 = "select a_pwd from Admin where a_email = '" + txtemail.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q3, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                string password = dt.Rows[0][0].ToString();

                msg.Subject = "Your password for BVM Placement Portal.";
                msg.Body = "This is your password for BVM Placement portal is : " + password + " P.S.: Dont share with anyone!";
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "jaladhipatel46@gmail.com"; //Your Email ID  
                ntwd.Password = "jaladhi@27733688"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Write("<script>alert('Password of BVM Portal has been sent to your registerd Email Id')</script>");
            }
            else if(ut == "0")
            {
                Response.Write("<script>alert('Please enter valid Email ID');</script>");

            }
        }
    }
}