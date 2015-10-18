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

    //public string str;
    //public int flag = 0;
    //public int checknull1()
    //{

    //    SqlConnection cn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    //    cn.Open();
    //    SqlCommand command = new SqlCommand();
    //    command.CommandText = "select * from AdminPasswordTable where AdminId=@id";
    //    command.Parameters.AddWithValue("@id", TextBox1.Text);
    //    command.Connection = cn;
    //    SqlDataReader dr = command.ExecuteReader();
    //    if (dr.HasRows)
    //    {
    //        while (dr.Read())
    //        {

    //            if (dr["Password"].ToString() == "")
    //            {
    //                flag = 1;
    //            }
    //            else
    //            {
    //                flag = 0;
    //            }
    //        }
    //    }
    //    else
    //    {
    //        flag = 3;
    //    }
    //    cn.Close();

    //    return flag;
    //}
    //public int checknull2()
    //{

    //    SqlConnection cn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    //    cn.Open();
    //    SqlCommand command = new SqlCommand();
    //    command.CommandText = "select * from TeacherPasswordTable where TId=@id";
    //    command.Parameters.AddWithValue("@id", TextBox1.Text);
    //    command.Connection = cn;
    //    SqlDataReader dr = command.ExecuteReader();
    //    if (dr.HasRows)
    //    {
    //        while (dr.Read())
    //        {

    //            if (dr["Password"].ToString() == "")
    //            {
    //                flag = 1;
    //            }
    //            else
    //            {
    //                flag = 0;
    //            }
    //        }
    //    }
    //    else
    //    {
    //        flag = 3;
    //    }
    //    cn.Close();

    //    return flag;
    //}
    //public int checknull3()
    //{

    //    SqlConnection cn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    //    cn.Open();
    //    SqlCommand command = new SqlCommand();
    //    command.CommandText = "select * from StudentPasswordTable where SId=@id";
    //    command.Parameters.AddWithValue("@id", TextBox1.Text);
    //    command.Connection = cn;
    //    SqlDataReader dr = command.ExecuteReader();
    //    if (dr.HasRows)
    //    {
    //        while (dr.Read())
    //        {

    //            if (dr["Password"].ToString() == "")
    //            {
    //                flag = 1;
    //            }
    //            else
    //            {
    //                flag = 0;
    //            }
    //        }
    //    }
    //    else
    //    {
    //        flag = 3;
    //    }
    //    cn.Close();

    //    return flag;
    //}

    //protected void Button2_Click(object sender, EventArgs e)
    //{



    //    SqlConnection con = new SqlConnection();
    //    con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
    //    con.Open();



    //    if (DropDownList1.Text == "Admin")
    //    {
    //        checknull1();
    //        if (flag == 1)
    //        {

    //            str = "update AdminPasswordTable set Password=@pass where AdminId=@Adminid";
    //            SqlCommand cm = new SqlCommand(str, con);
    //            cm.Parameters.AddWithValue("@Adminid", TextBox1.Text);
    //            cm.Parameters.AddWithValue("@pass", TextBox2.Text);
    //            int i = cm.ExecuteNonQuery();
    //            if (i > 0)
    //            {

    //                Label5.Text = "Password Updated Successfully";
    //            }

    //        }
    //        else if (flag == 3)
    //        {
    //            Label5.Text = "User Id Does Not Exist !!!!!";
    //        }




    //        else
    //        {
    //            SqlCommand cm = new SqlCommand();
    //            cm.Connection = con;
    //            cm.CommandText = "select * from AdminPasswordTable where AdminId=@id";
    //            cm.Parameters.AddWithValue("@id", TextBox1.Text);

    //            SqlDataReader dr = cm.ExecuteReader();
    //            while (dr.Read())
    //            {
    //                if (dr["AdminId"].ToString() == TextBox1.Text && dr["Password"].ToString() == TextBox2.Text)
    //                {
    //                    Session["AdminSession"] = TextBox1.Text;

    //                    Response.Redirect("Adminhome_page.aspx");

    //                }
    //                else
    //                {
    //                    Label5.Text = "Login Failure";
    //                }
    //            }

    //        }
    //    }
    //    else if (DropDownList1.Text == "Teacher")
    //    {
    //        checknull2();
    //        if (flag == 1)
    //        {

    //            str = "update TeacherPasswordTable set Password=@pass where TId=@tid";
    //            SqlCommand cm = new SqlCommand(str, con);
    //            cm.Parameters.AddWithValue("@tid", TextBox1.Text);
    //            cm.Parameters.AddWithValue("@pass", TextBox2.Text);
    //            int i = cm.ExecuteNonQuery();
    //            if (i > 0)
    //            {
    //                Label5.Text = "Password Updated Successfully";

    //            }

    //        }
    //        else if (flag == 3)
    //        {
    //            Label5.Text = "User Id Does Not Exist !!!!!";
    //        }




    //        else
    //        {
    //            SqlCommand cm = new SqlCommand();
    //            cm.Connection = con;
    //            cm.CommandText = "select * from TeacherPasswordTable where TId=@id";
    //            cm.Parameters.AddWithValue("@id", TextBox1.Text);

    //            SqlDataReader dr = cm.ExecuteReader();
    //            while (dr.Read())
    //            {
    //                if (dr["TId"].ToString() == TextBox1.Text && dr["Password"].ToString() == TextBox2.Text)
    //                {
    //                    Session["TeacherSession"] = TextBox1.Text;
    //                    Response.Redirect("Teacherhome_page.aspx");

    //                }
    //                else
    //                {
    //                    Label5.Text = "Login Failure";
    //                }
    //            }

    //        }
    //    }
    //    else if (DropDownList1.Text == "Student")
    //    {
    //        checknull3();
    //        if (flag == 1)
    //        {

    //            str = "update StudentPasswordTable set Password=@pass where SId=@sid";
    //            SqlCommand cm = new SqlCommand(str, con);
    //            cm.Parameters.AddWithValue("@sid", TextBox1.Text);
    //            cm.Parameters.AddWithValue("@pass", TextBox2.Text);
    //            int i = cm.ExecuteNonQuery();
    //            if (i > 0)
    //            {
    //                Label5.Text = "Password Updated Successfully";
    //            }

    //        }
    //        else if (flag == 3)
    //        {
    //            Label5.Text = "User Id Does Not Exist !!!!!";
    //        }




    //        else
    //        {
    //            SqlCommand cm = new SqlCommand();
    //            cm.Connection = con;
    //            cm.CommandText = "select * from StudentPasswordTable where SId=@id";
    //            cm.Parameters.AddWithValue("@id", TextBox1.Text);

    //            SqlDataReader dr = cm.ExecuteReader();
    //            while (dr.Read())
    //            {
    //                if (dr["SId"].ToString() == TextBox1.Text && dr["Password"].ToString() == TextBox2.Text)
    //                {

    //                    Session["StudentSession"] = TextBox1.Text;
    //                    Response.Redirect("Studenthome_page.aspx");

    //                }
    //                else
    //                {
    //                    Label5.ForeColor = System.Drawing.Color.Red;
    //                    Label5.Text = "Login Failure";
    //                }
    //            }

    //        }
    //    }
    //    con.Close();

   // }





    
}