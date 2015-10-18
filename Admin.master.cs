using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminSession"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            else if (Session["AdminSession"] != null)
            {
                Label2.Text = "WELCOME";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from AdminPasswordTable where AdminId=@aid", con);
                cmd.Parameters.AddWithValue("@aid", Session["AdminSession"].ToString());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = dr["AdminId"].ToString();
                }
                con.Close();
            }
            else
            {
                Label2.Text = "WELCOME";
                // Response.Write("sorry");
            }

            // Label3.Text = Session["AdminSession"].ToString();
        }
    }
    protected void HyperLink1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.Contents.RemoveAll();
        Response.Redirect("Homepage.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["AdminSession"] = "";
        HttpContext.Current.Session.Clear();
        HttpContext.Current.Session.Abandon();
        Response.Redirect("LogIn_Page.aspx");
    }
}
