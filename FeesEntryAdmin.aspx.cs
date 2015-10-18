using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FeesEntryAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "select SId from Registration";
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                DropDownList1.Items.Add("---Select---");
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());
                }
            }
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Dues values(@a,@b,@c,@d,@e,@f)", conn);
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label3.ForeColor = System.Drawing.Color.Blue;
                Label3.Text = "Record Updated successfully";
                Button1.Enabled = false;
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Updation failed";
            }
            cmd.Dispose();
            conn.Close();
            clr();
        }
        catch
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "This student entry already Exists in records ";
        }
    }
    private void clr()
    {
        TextBox1.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
       

    
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT StudentName,CourseApp from Registration where SId=@sid ", con);
        cmd.Parameters.AddWithValue("@sid", DropDownList1.SelectedItem.Text);

        SqlDataReader dr = cmd.ExecuteReader();
        
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            con.Close();
        }
       
        else
        {
            Label3.Text = "no such record found";
            con.Close();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Label3.Text = "";
    }
}