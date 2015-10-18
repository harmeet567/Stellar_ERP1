using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Batchstudent_Allocation : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack == false)
        {
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "select BatchId from BatchAllocationTable";
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
        //
        if (IsPostBack == false)
        {
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "select SId from Registration";
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                DropDownList2.Items.Add("---Select---");
                while (dr.Read())
                {
                    DropDownList2.Items.Add(dr[0].ToString());
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
              SqlCommand cmd = new SqlCommand("insert into BatchStudents values(@a,@b,@c)", conn);
              cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
              cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
              cmd.Parameters.AddWithValue("@c", TextBox1.Text);


              int i = cmd.ExecuteNonQuery();
              if (i > 0)
              {
                  Label3.ForeColor = System.Drawing.Color.Blue;
                  Label3.Text = "Record Saved Successfully";
                  Button1.Enabled = false;
              }
              else
              {
                  Label3.ForeColor = System.Drawing.Color.Red;
                  Label3.Text = "Upload operation  failed ";
              }
              conn.Close();
              //clr();

          }
          catch
          {
              Label3.ForeColor = System.Drawing.Color.Red;
              Label3.Text = "Duplicate value can not be inserted";

          }

      }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT StudentName from Registration where SId=@sid ", con);
        cmd.Parameters.AddWithValue("@sid", DropDownList2.SelectedItem.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Label3.Text = "";
        TextBox1.Text = "";
    }
}