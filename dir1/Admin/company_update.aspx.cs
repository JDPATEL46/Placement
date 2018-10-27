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
using System.IO;
using System.Text;


public partial class dir1_Admin_Default : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            string query = "select distinct(st_name) from city order by st_name asc";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlstate.DataSource = dt;
            ddlstate.DataBind();
        }

        if (this.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            string query = "select ct_name from city WHERE st_name = '" + ddlstate.SelectedValue + "'";
            SqlDataAdapter daa = new SqlDataAdapter(query, con);
            DataTable dtb = new DataTable();
            daa.Fill(dtb);
            ddlcity.DataSource = dtb;
            ddlcity.DataBind();
        }

        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            string com_id = Request.QueryString["com_id"].ToString();
            string q = "select * from company where com_id=" + com_id;
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            txtname.Text = dt.Rows[0][1].ToString();
            txtemail.Text = dt.Rows[0][2].ToString();
            txtcont.Text = dt.Rows[0][3].ToString();
            txtadd.Text = dt.Rows[0][8].ToString();
            txtdetail.Text = dt.Rows[0][7].ToString();
            ddlstate.SelectedValue = dt.Rows[0][5].ToString();
            ddlcity.SelectedValue = dt.Rows[0][4].ToString();


            /* SqlCommand cmd = new SqlCommand(q, con);
             SqlDataReader dr = cmd.ExecuteReader();
             dr.Read();
             txtname.Text = dr["com_name"].ToString();
             txtemail.Text = dr["com_email"].ToString();
             txtcont.Text = dr["com_cno"].ToString();
             txtadd.Text = dr["com_add"].ToString();
             ddlstate.SelectedValue = dr["st_id"].ToString();
             ddlcity.SelectedValue= dr["c_id"].ToString();
             txtdetail.Text = dr["com_info"].ToString();      */

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("error:" + ex.ToString());
        }



    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String uid = Session["userid"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            string com_id = Request.QueryString["com_id"].ToString();
            string q = "UPDATE company SET com_name=@com_name, com_cno=@com_cno ,com_add=@com_add, st_id=@st_id, c_id=@c_id, com_info=@com_info, com_email=@com_email WHERE com_id=" + uid;
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@com_name", txtname.Text);
            cmd.Parameters.AddWithValue("@com_cno", txtcont.Text);
            cmd.Parameters.AddWithValue("@com_add", txtadd.Text);
            cmd.Parameters.AddWithValue("@st_id", ddlstate.Text);
            cmd.Parameters.AddWithValue("@c_id", ddlcity.Text);
            cmd.Parameters.AddWithValue("@com_info", txtdetail.Text);
            cmd.Parameters.AddWithValue("@com_email", txtemail.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Company Successfully Updated.');</script>");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("error:" + ex.ToString());
        }
    }
}