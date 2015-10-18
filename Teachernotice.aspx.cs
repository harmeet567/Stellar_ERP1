using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into TeacherNotice values(@Notice,@DateOfNotice)", conn);
        cmd.Parameters.AddWithValue("@Notice", TextBox1.Text);
        cmd.Parameters.AddWithValue("@DateOfNotice", DateTime.Now);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label4.ForeColor = System.Drawing.Color.Blue;
            Label4.Text = "Notice Uploaded...";
        }
        else
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Not saved";
        }
        cmd.Dispose();
        conn.Close();
        clr();
        Button2.Enabled = false;
    }
    private void clr()
    {

        TextBox1.Text = string.Empty;

    }

}