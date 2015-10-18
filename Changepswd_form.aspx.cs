using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Changepswd_form : System.Web.UI.Page
{
    public string ps;
    public int flag=0;
    //method to detect session
    void detectmethod()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
        con.Open();
        if (Session["StudentSession"] != null)
        {
            SqlCommand cmd = new SqlCommand("select * from StudentPasswordTable where SId=@sid", con);
            cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ps = dr["Password"].ToString();

            }
            con.Close();
            flag = 1;
        }
        else if (Session["TeacherSession"] != null)
        {
            SqlCommand cmd = new SqlCommand("select * from TeacherPasswordTable where TId=@tid", con);
            cmd.Parameters.AddWithValue("@tid", Session["TeacherSession"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ps = dr["Password"].ToString();

            }
            con.Close();
            flag = 2;
        }
        else if (Session["AdminSession"] != null)
        {
            SqlCommand cmd = new SqlCommand("select * from AdminPasswordTable where AdminId=@aid", con);
            cmd.Parameters.AddWithValue("@aid", Session["AdminSession"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ps = dr["Password"].ToString();

            }
            con.Close();
            flag = 3;
        }
        else
        {
            Response.Write("sorry!");
            flag = 0;
            con.Close();
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        detectmethod();    
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (flag == 1)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";

            if (ps == TextBox1.Text)
            {

                con.Open();
                string str = "update StudentPasswordTable set Password=@pass where SId=@sid";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label4.ForeColor = System.Drawing.Color.Blue;
                    Label4.Text = "New Password Updated Successfully";
                    con.Close();
                    Response.Redirect("Studenthome_page.aspx");
                }

                else
                {
                    Label4.ForeColor = System.Drawing.Color.Red;
                    Label4.Text = "updation failed";
                    con.Close();
                }

            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "you have entered incorrect password";
                con.Close();
            }
        }
        /////////////////////////////////////
        else if (flag == 2)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";

            if (ps == TextBox1.Text)
            {

                con.Open();
                string str = "update TeacherPasswordTable set Password=@pass where TId=@tid";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@Tid", Session["TeacherSession"].ToString());
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label4.ForeColor = System.Drawing.Color.Blue;
                    Label4.Text = "New Password Updated Successfully";
                    con.Close();
                    Response.Redirect("Teacherhome_page.aspx");
                }

                else
                {
                    Label4.ForeColor = System.Drawing.Color.Red;
                    Label4.Text = "updation failed";
                    con.Close();
                }

            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "you have entered incorrect password";
                con.Close();
            }
        }
            /////////////////////////////////////////
        else if (flag == 3)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";

            if (ps == TextBox1.Text)
            {

                con.Open();
                string str = "update AdminPasswordTable set Password=@pass where AdminId=@aid";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@aid", Session["AdminSession"].ToString());
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label4.ForeColor = System.Drawing.Color.Blue;
                    Label4.Text = "New Password Updated Successfully";
                    con.Close();
                    Response.Redirect("Adminhome_page.aspx");
                }

                else
                {
                    Label4.ForeColor = System.Drawing.Color.Red;
                    Label4.Text = "updation failed";
                    con.Close();
                }

            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "you have entered incorrect password";
                con.Close();
            }
        }
        else
        {

            Response.Write("updation is not possible");
        }
        
        
        

    }
    public void clr()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clr();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminhome_page.aspx");
    }
}