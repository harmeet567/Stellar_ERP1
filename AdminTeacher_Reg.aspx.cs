using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminTeacher_Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        autogenerate();
    }
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
  

    private void clr()
    {
        //Label11.Text = "--";
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox8.Text = string.Empty;
        TextBox2.Focus();
    }

    public void autogenerate()
    {
        SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        try
        {

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand("select * from TeacherInfoTable", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "TeacherInfoTable");
            DataTable dt = ds.Tables["TeacherInfoTable"];
            int ctr, len;
            len = dt.Rows.Count - 1;

            if (len == -1)
            {
                TextBox9.Text = "T001";
                TextBox9.Enabled = false;
            }
            else
            {
                System.Data.DataRow dr = dt.Rows[len];
                string code = dr["TId"].ToString();
                string codeval = code.Substring(3, 1);
                ctr = Convert.ToInt32(codeval);
                if ((ctr >= 1) && (ctr <= 9))
                {


                    ctr = ctr + 1;
                    if (ctr <= 9)
                    {
                        TextBox9.Text = "T00" + ctr;
                        TextBox9.Enabled = false;
                    }
                    else
                    {
                        TextBox9.Text = "T0" + ctr;
                    }
                }
                else if ((ctr > 9))
                {

                    ctr = ctr + 1;

                    TextBox9.Text = "T0" + ctr;
                    TextBox9.Enabled = false;
                }
            }
        }
        catch { Response.Write("sorry for this mistake"); }
        conn.Close();

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into TeacherInfoTable (TName,ContactNo,BelongTo,TSpecialization,Qualification,Experience,EmailId,TId) values(@TName,@ContactNo,@BelongTo,@TSpecialization,@Qualification,@Experience,@EmailId,@tid)", conn);
       
        cmd.Parameters.AddWithValue("@TName",TextBox5.Text);
        cmd.Parameters.AddWithValue("@ContactNo",TextBox6.Text);
        cmd.Parameters.AddWithValue("@BelongTo", TextBox3.Text);
        cmd.Parameters.AddWithValue("@TSpecialization",TextBox7.Text);
        cmd.Parameters.AddWithValue("@Qualification",TextBox4.Text);
        cmd.Parameters.AddWithValue("@Experience",TextBox8.Text);
        cmd.Parameters.AddWithValue("@EmailId",TextBox2.Text);
        cmd.Parameters.AddWithValue("@tid",TextBox9.Text);
      int i=  cmd.ExecuteNonQuery();
        if(i>0)
        {
            Label12.ForeColor = System.Drawing.Color.Blue;
            Label12.Text = "Record Saved Successfully";
            SqlCommand cmdd = new SqlCommand();
            cmdd.CommandText = "insert into TeacherPasswordTable (TId) values(@tid)";
            cmdd.Connection = conn;
            cmdd.Parameters.AddWithValue("@tid", TextBox9.Text);
            cmdd.ExecuteNonQuery();
            cmdd.Dispose();
            Button1.Enabled = false;
            conn.Close();
        }
        else
        {
            Label12.ForeColor = System.Drawing.Color.Red;
            Label12.Text = "Upload operation  failed ";
        }
        conn.Close();
        clr();
      
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        clr();
        Button1.Enabled = true;
        Label12.Text = "";
       
    }
}