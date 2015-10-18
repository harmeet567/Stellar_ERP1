using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacherMasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["TeacherSession"] == null)
            {
                Response.Redirect("LogIn_page.aspx");
            }
            else if (Session["TeacherSession"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from TeacherInfoTable where TId=@tid", con);
                cmd.Parameters.AddWithValue("@tid", Session["TeacherSession"].ToString());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = "WELCOME";
                    Label2.Text = dr["TName"].ToString();
                }
                con.Close();
            }

            else
            {
                Label3.Text = "WELCOME";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["TeacherSession"] = "";

        Session.RemoveAll();
        HttpContext.Current.Session.Clear();
        HttpContext.Current.Session.Abandon();
        Response.Redirect("LogIn_Page.aspx");
    }
}
