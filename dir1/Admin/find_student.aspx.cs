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
        /*Image1.Visible = false;
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        lblname.Visible = false;
        lblid.Visible = false;
        lblemail.Visible = false;
        lblmob.Visible = false;
        lblenrol.Visible = false;
        lblsem.Visible = false;
        lblbr.Visible = false;
        lbladd.Visible = false;
        lblct.Visible = false;
        lblst.Visible = false;
        lbldob.Visible = false;*/
    }

    protected void btnshow_Click(object sender, EventArgs e)
    {
        /*Image1.Visible = true;
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        lblname.Visible = true;
        lblid.Visible = true;
        lblemail.Visible = true;
        lblmob.Visible = true;
        lblenrol.Visible = true;
        lblsem.Visible = true;
        lblbr.Visible = true;
        lbladd.Visible = true;
        lblct.Visible = true;
        lblst.Visible = true;
        lbldob.Visible = true;*/
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\PlacementMGT\placement_management.mdf;Integrated Security=True;Connect Timeout=300");
        conn.Open();
        string query = "select * from signup s, branch b where s.br_id=b.br_id where sig_id = '"+txtid.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //img.ImageUrl = Server.MapPath("~/profile/" + );
        String imgurl = dt.Rows[0][8].ToString();
        String imgurl2 = "../../profile/" + imgurl;
        Image1.AlternateText = imgurl2;
        Image1.ImageUrl = imgurl2;
        lblname.Text = dt.Rows[0][1].ToString();
        lblid.Text = dt.Rows[0][2].ToString();
        lblenrol.Text = dt.Rows[0][10].ToString();
        lblemail.Text = dt.Rows[0][3].ToString();
        lblmob.Text = dt.Rows[0][4].ToString();
        lblbr.Text = dt.Rows[0][5].ToString();
        lblsem.Text = dt.Rows[0][6].ToString();
        lbladd.Text = dt.Rows[0][11].ToString();
        lblct.Text = dt.Rows[0][12].ToString();
        lblst.Text = dt.Rows[0][13].ToString();
        lbldob.Text = dt.Rows[0][14].ToString();
        conn.Close();
    }
}