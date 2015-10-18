using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Reg : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        autogenerate();
        if (IsPostBack == false)
        {
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "select EnquiryId from EnquiryTable";
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                DropDownList3.Items.Add("---Select---");
                while (dr.Read())
                {
                    DropDownList3.Items.Add(dr[0].ToString());
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
    }
    //
    public void autogenerate()
    {
        SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        try
        {

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand("select * from Registration", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Registration");
            DataTable dt = ds.Tables["Registration"];
            int ctr, len;
            len = dt.Rows.Count - 1;

            if (len == -1)
            {
                TextBox25.Text = "S001";
                TextBox25.Enabled = false;
            }
            else
            {
                System.Data.DataRow dr = dt.Rows[len];
                string code = dr["SId"].ToString();
                string codeval = code.Substring(3, 1);
                ctr = Convert.ToInt32(codeval);
                if ((ctr >= 1) && (ctr <= 9))
                {


                    ctr = ctr + 1;
                    if (ctr <= 9)
                    {
                        TextBox25.Text = "S00" + ctr;
                        TextBox25.Enabled = false;
                    }
                    else
                    {
                        TextBox25.Text = "S0" + ctr;
                    }
                }
                else if ((ctr > 9))
                {

                    ctr = ctr + 1;

                    TextBox25.Text = "S0" + ctr;
                    TextBox25.Enabled = false;
                }
            }
        }
        catch { Response.Write("sorry for this mistake"); }
        conn.Close();

    }
   //
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Registration (RegDate,CourseApp,CourseSess,StudentName,FatherName,MotherName,DOB,Address,CurrntAddrss,Country,State,City,PinCode,CurrntQuilification,Stream,UniBoard,College,Email,AltrEmail,PhNo,MobNo,EnquiryId,SId) values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n,@o,@p,@q,@r,@s,@t,@u,@v,@y)", conn);
            //  cmd.Parameters.AddWithValue("@a", System.DateTime.Today);
            cmd.Parameters.Add("@a", SqlDbType.DateTime).Value = DateTime.Now;
            cmd.Parameters.AddWithValue("@b", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@d", TextBox1.Text);
            cmd.Parameters.AddWithValue("@e", TextBox2.Text);
            cmd.Parameters.AddWithValue("@f", TextBox6.Text);
            cmd.Parameters.AddWithValue("@g", TextBox24.Text);
            cmd.Parameters.AddWithValue("@h", TextBox3.Text);
            cmd.Parameters.AddWithValue("@i", TextBox7.Text);
            cmd.Parameters.AddWithValue("@j", TextBox21.Text);
            cmd.Parameters.AddWithValue("@k", TextBox23.Text);
            cmd.Parameters.AddWithValue("@l", TextBox22.Text);
            cmd.Parameters.AddWithValue("@m", TextBox9.Text);
            cmd.Parameters.AddWithValue("@n", TextBox10.Text);
            cmd.Parameters.AddWithValue("@o", TextBox20.Text);
            cmd.Parameters.AddWithValue("@p", TextBox11.Text);
            cmd.Parameters.AddWithValue("@q", TextBox19.Text);
            cmd.Parameters.AddWithValue("@r", TextBox15.Text);
            cmd.Parameters.AddWithValue("@s", TextBox17.Text);
            cmd.Parameters.AddWithValue("@t", TextBox16.Text);
            cmd.Parameters.AddWithValue("@u", TextBox18.Text);
            cmd.Parameters.AddWithValue("@v", DropDownList3.Text);

            cmd.Parameters.AddWithValue("@y", TextBox25.Text);

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label36.ForeColor = System.Drawing.Color.Blue;
                Label36.Text = "Record have been saved";
                Label37.Text = "Student Id";
                //
               
                //
                SqlCommand cmdd = new SqlCommand();
                cmdd.CommandText = "insert into StudentPasswordTable (SId) values(@sid)";
                cmdd.Connection = conn;
                cmdd.Parameters.AddWithValue("@sid", TextBox25.Text);
                cmdd.ExecuteNonQuery();

                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox24.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox21.Text = string.Empty;
                TextBox23.Text = string.Empty;
                TextBox22.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                TextBox20.Text = string.Empty;
                TextBox11.Text = string.Empty;
                TextBox19.Text = string.Empty;
                TextBox15.Text = string.Empty;
                TextBox17.Text = string.Empty;
                TextBox16.Text = string.Empty;
                TextBox18.Text = string.Empty;
                TextBox13.Text = string.Empty;

                cmdd.Dispose();
                conn.Close();
            }
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("Delete from EnquiryTable where EnquiryId= @z ", conn);
            cmd1.Parameters.AddWithValue("@z", DropDownList3.Text);
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            conn.Close();
           
        }
        //catch
        //{
        //    Label36.Text = "Invalid Attempt";
        //}
        finally
        {
            conn.Close();

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {         
       

       try
        {

            SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
           con.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * from registration where EnquiryId=@eid ",con);
            //cmd.Parameters.AddWithValue("@eid", DropDownList3.SelectedItem.Text);
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    TextBox25.Text = dr[0].ToString();
            //    TextBox2.Text = dr[4].ToString();
               
            //}
            //if (dr["EnquiryId"].ToString() == DropDownList3.SelectedItem.Text)
            //{
            //    Label36.ForeColor = System.Drawing.Color.Red;
            //    Label36.Text = "Student is already registered";

            //}
            //else
            //{


                SqlCommand cmd = new SqlCommand("SELECT Name,EmailId,Qualification,Branch,Address,MobNo,College from EnquiryTable where EnquiryId=@eid ", con);
                cmd.Parameters.AddWithValue("@eid", DropDownList3.SelectedItem.Text);
                SqlDataReader dr1 = cmd.ExecuteReader();
                while (dr1.Read())
                {
                    TextBox1.Text = dr1[0].ToString();
                    TextBox15.Text = dr1[1].ToString();
                    TextBox10.Text = dr1[2].ToString();
                    TextBox20.Text = dr1[3].ToString();
                    TextBox3.Text = dr1[4].ToString();
                    TextBox18.Text = dr1[5].ToString();
                    TextBox19.Text = dr1[6].ToString();


                }
            }
       // }
       catch
       {

           Label36.Text = "sorry";
       }
        
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         TextBox1.Text=string.Empty;
         TextBox2.Text= string.Empty;
         TextBox2.Text = string.Empty;
         TextBox6.Text = string.Empty;
         TextBox24.Text = string.Empty;
         TextBox3.Text = string.Empty;
         TextBox7.Text = string.Empty;
         TextBox21.Text = string.Empty;
         TextBox23.Text = string.Empty;
         TextBox22.Text = string.Empty;
         TextBox9.Text = string.Empty;
         TextBox10.Text = string.Empty;
         TextBox20.Text = string.Empty;
         TextBox11.Text = string.Empty;
         TextBox19.Text = string.Empty;
         TextBox15.Text = string.Empty;
         TextBox17.Text = string.Empty;
         TextBox16.Text = string.Empty;
         TextBox18.Text = string.Empty;
         TextBox13.Text = string.Empty;
             
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.Text == "--select item--")
        {
            Label38.Text = "Plz Select course";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "--Select item--")
        {
            Label39.Text = "Select Session";
        }
    }
}