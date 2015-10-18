using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class News_Events : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into NewsTable values(@Type,@Description,@DateOfNews)", conn);
      
        cmd.Parameters.AddWithValue("@Type", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@Description", TextBox3.Text);
        cmd.Parameters.AddWithValue("@DateOfNews", DateTime.Now);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label5.ForeColor = System.Drawing.Color.Blue;
            Label5.Text = "Record saved successfully";
        }
        else
        {
            Label5.ForeColor = System.Drawing.Color.Red;
            Label5.Text = "Not saved";
        }
        cmd.Dispose();
        conn.Close();
        clr();
        Button1.Enabled = false;
    }
    private void clr()
    {
        
        TextBox3.Text = string.Empty;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label5.Text = "";
        Button1.Enabled = true;
    }
}
