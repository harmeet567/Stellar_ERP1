using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class studentMasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            if (Session["StudentSession"] == null)
            {
                Response.Redirect("LogIn_Page.aspx");
            }
            else if (Session["StudentSession"] != null)
            {
                Label2.Text = "WELCOME";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Registration where SId=@sid", con);
                cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = dr["STudentName"].ToString();
                }
                con.Close();
            }
            else
            {
                Label2.Text = "WELCOME";

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session["StudentSession"] = "";
        HttpContext.Current.Session.Clear();
        HttpContext.Current.Session.Abandon();
        Response.Redirect("LogIn_page.aspx");
    }
}
