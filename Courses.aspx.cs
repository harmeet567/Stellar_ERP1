using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Courses values(@a)", con);
            cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label3.ForeColor = System.Drawing.Color.Blue;
                Label3.Text = "Record saved successfully";
                TextBox1.Text = string.Empty;
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = " Not saved";
            }
            con.Close();
            GridView1.DataBind();
        }
        catch
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Name of course alredy exists";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
        GridView1.Visible = true;
    }
}