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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtbtn_Click(object sender, EventArgs e)
    {
        string ut = utype.SelectedValue;
        string query1 = "";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=30";
        conn.Open();
        if (ut == "S")
        {
            String id = txtuname.Text.ToUpper().ToString();
           query1 = "select * from signup where sig_id_no = '" + id + "' AND pass = '" + txtpass.Text + "' ";
        }

        else if (ut == "T")
        {
            query1 = "select * from tpo where tpo_email = '" + txtuname.Text + "' AND tpo_pwd = '" + txtpass.Text + "' ";
        }
        else if (ut == "C")
        {
            query1 = "select * from coordinator where co_email = '" + txtuname.Text + "' AND co_pwd = '" + txtpass.Text + "' ";
        }
        else if (ut == "A")
        {
            query1 = "select * from Admin where a_email = '" + txtuname.Text + "' AND a_pwd = '" + txtpass.Text + "' ";

        }
        else if (ut == "CO")
        {
            query1 = "select * from company where com_email = '" + txtuname.Text + "' AND com_pwd = '" + txtpass.Text + "' ";
        }
        else
        {
            Response.Write("<script>alert('Please select relevant user type'); </script>");
        }
        
        //txtuname.Text = query1;
        SqlDataAdapter da = new SqlDataAdapter(query1, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int i = dt.Rows.Count;
        if (i > 0)
        {
            if (ut == "S")
            {
                string temp = dt.Rows[0][0].ToString();
                Session["userid"] = temp;
                Session["utype"] = ut;
                Session["uname"] = dt.Rows[0][2].ToString();
                Response.Redirect("dir2/student/update_profile.aspx");
            }
            else if (ut == "T")
            {
                string temp = dt.Rows[0][0].ToString();
                Session["userid"] = temp;
                Session["utype"] = ut;
                Session["uname"] = dt.Rows[0][1].ToString();
                Response.Redirect("dir1/TPO/home.aspx");
            }
            else if (ut == "C")
            {
                string temp = dt.Rows[0][0].ToString();
                Session["userid"] = temp;
                Session["utype"] = ut;
                Session["uname"] = dt.Rows[0][1].ToString();
                Response.Redirect("dir1/TPO_Co-ordinator/home.aspx");
            }
            else if (ut == "A")
            {
                string temp = dt.Rows[0][0].ToString();
                Session["userid"] = temp;
                Session["utype"] = ut;
                Session["uname"] = dt.Rows[0][1].ToString();
                Response.Redirect("dir1/Admin/home.aspx");
            }
            else if (ut == "CO")
            {
                string temp = dt.Rows[0][0].ToString();
                Session["userid"] = temp;
                Session["utype"] = ut;
                Session["uname"] = dt.Rows[0][1].ToString();
                Response.Redirect("dir2/company/update_profile.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please select relevant user type'); </script>");
            }
        }
    }
}
