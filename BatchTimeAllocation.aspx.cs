using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BatchTimeAllocation : System.Web.UI.Page
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
            command.CommandText = "select TId from TeacherInfoTable";
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
            ///////////////

            ///////////////////////
            SqlCommand cmd = new SqlCommand("insert into BatchAllocationTable values(@a,@b,@c,@d,@e)", conn);
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@d", TextBox1.Text);
            cmd.Parameters.AddWithValue("@e", TextBox3.Text);

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
                Label4.Text = "Not saved ";
            }
            conn.Close();
            clr();
        }
        catch
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "This Batch ID already exists";
        }


    }
    private void clr()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
    }
    public void autogenerate()
    {
        SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        try
        {

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand("select * from BatchAllocationTable", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "BatchAllocationTable");
            DataTable dt = ds.Tables["BatchAllocationTable"];
            int ctr, len;
            len = dt.Rows.Count - 1;

            if (len == -1)
            {
                TextBox2.Text = "B001";
                TextBox2.Enabled = false;
            }
            else
            {
                System.Data.DataRow dr = dt.Rows[len];
                string code = dr["BatchId"].ToString();
                string codeval = code.Substring(1, 3);
                ctr = Convert.ToInt32(codeval);
                if ((ctr >= 1) && (ctr <= 9))
                {


                    ctr = ctr + 1;
                    if (ctr <= 9)
                    {
                        TextBox2.Text = "B00" + ctr;
                        TextBox2.Enabled = false;
                    }
                    else
                    {
                        TextBox2.Text = "B0" + ctr;
                    }
                }
                else if ((ctr > 9))
                {

                    ctr = ctr + 1;

                    TextBox2.Text = "B0" + ctr;
                    TextBox2.Enabled = false;
                }
            }
        }
        catch
        {
            Response.Write(" mistake"); 
        }
        conn.Close();

    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT  TName from TeacherInfoTable where TId=@tid ", con);
        cmd.Parameters.AddWithValue("@tid", DropDownList2.SelectedItem.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            con.Close();
            autogenerate();

        }

        else
        {
            Label4.Text = "no such record found";
            con.Close();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label4.Text = "";
       
        Button1.Enabled = true;

    }
}