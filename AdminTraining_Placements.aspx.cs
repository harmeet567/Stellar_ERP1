using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminTraining_Placements : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "select * from Courses";
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
        ///
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
  //  Upload button
        try
        {



            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into PlacementTable values(@studentid,@studentname,@course,@companyname,@package,@dateofpalcement,@description)", conn);

            cmd.Parameters.Add("@studentid", DropDownList1.SelectedItem.Text);
            cmd.Parameters.Add("@studentname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@course", SqlDbType.VarChar, 50).Value = DropDownList2.Text;
            cmd.Parameters.Add("@companyname", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@package", SqlDbType.VarChar, 50).Value = TextBox3.Text;

            cmd.Parameters.Add("@dateofpalcement", SqlDbType.VarChar, 20).Value = TextBox4.Text;
            cmd.Parameters.Add("@description", SqlDbType.VarChar, 2000).Value = TextBox5.Text;

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                Label4.ForeColor = System.Drawing.Color.Blue;
                Label4.Text = "Record Saved Successfully";
                Button1.Enabled = false;
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Upload operation  failed ";
            }
            conn.Close();
            clr();
        }

        catch
        {
            Label4.Text = "invalid entry";
        }
    }

    
   
   

  
    
 private void clr()
    {

     
        TextBox1.Text = string.Empty;
       
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text= string.Empty;
        TextBox5.Text = string.Empty;
       
    }
 
  protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
  {

  }
  protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
  {
      conn.Open();
      SqlCommand cmd = new SqlCommand("SELECT StudentName from Registration where SId=@sid ", conn);
      cmd.Parameters.AddWithValue("@sid", DropDownList1.Text);
      SqlDataReader dr = cmd.ExecuteReader();

      if (dr.Read())
      {

          TextBox1.Text = dr["StudentName"].ToString();
      }

      else
      {
          Label4.Text = "no such record found";


      }
      conn.Close();
  }
  protected void Button2_Click(object sender, EventArgs e)
  {
      clr();
      Label4.Text = "";
      Button1.Enabled = true;
  }
}