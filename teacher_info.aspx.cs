using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_info_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if (IsPostBack == false)
        // {
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from TeacherInfoTable where TId=@tid ", con);
        cmd.Parameters.AddWithValue("@tid", Session["TeacherSession"].ToString());
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label11.Text = Session["TeacherSession"].ToString();
            Label15.Text = dr[1].ToString();
            Label16.Text = dr[2].ToString();
            Label13.Text = dr[3].ToString();
            Label17.Text = dr[4].ToString();
            Label14.Text = dr[5].ToString();
            Label18.Text = dr[6].ToString();
            Label12.Text = dr[7].ToString();
            Image1.ImageUrl = dr[8].ToString();

        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string path = @"~\ImageReg\" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(path));
            SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update TeacherInfoTable set Image= @i where TId= @tid", con);
            cmd.Parameters.AddWithValue("@tid", Session["TeacherSession"].ToString());
            cmd.Parameters.AddWithValue("@i", path);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label21.ForeColor = System.Drawing.Color.Blue;
                Label21.Text = "Image updated successfully";
            }
            else
            {
                Label21.ForeColor = System.Drawing.Color.Red;
                Label21.Text = "Operation Failed";
            }
            con.Close();
            

        }
        catch
        {
            Label21.ForeColor = System.Drawing.Color.Red;
            Label21.Text = "Please choose the image first";
        }
    }
}