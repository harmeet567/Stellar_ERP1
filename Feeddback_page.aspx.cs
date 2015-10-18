using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Feeddback_page : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["stellarerpConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into FeedbackTable values(@Name,@EmailId,@Comment)", conn);
            cmd.Parameters.Add("@Name", SqlDbType.Char, 30).Value = TextBox1.Text;
            cmd.Parameters.Add("@EmailId", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@Comment", SqlDbType.VarChar, 100).Value = TextBox3.Text;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label7.ForeColor = System.Drawing.Color.Blue;
                Label7.Text = "Thanks for feedback ";
            }
            cmd.Dispose();
            conn.Close();
            clr();
        }
        catch
        {
            Label7.Text = "invalid entry";
        }
    }

    private void clr()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
       TextBox3.Text = string.Empty;
        TextBox1.Focus();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox1.Focus();
    }
}