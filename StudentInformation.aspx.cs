using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentInformation : System.Web.UI.Page
{
    public void textdisable()
    {
        TextBox6.ReadOnly = true;
        TextBox5.ReadOnly = true;
        TextBox4.ReadOnly = true;
        TextBox3.ReadOnly = true;
        TextBox2.ReadOnly = true;
        TextBox1.ReadOnly = true;

    }
    public void textenable()
    {
        TextBox6.ReadOnly = false;
        TextBox5.ReadOnly = false;
        TextBox4.ReadOnly = false;
        TextBox3.ReadOnly = false;
        TextBox2.ReadOnly = false;
        TextBox1.ReadOnly = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from Registration Where SId=@sid ", con);
            cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label24.Text = Session["StudentSession"].ToString();
                Label25.Text = dr[1].ToString();
                Label26.Text = dr[2].ToString();
                Label21.Text = dr[3].ToString();
                Label27.Text = dr[4].ToString();
                Label22.Text = dr[5].ToString();
                Label28.Text = dr[6].ToString();
                Label23.Text = dr[7].ToString();
                TextBox1.Text = dr[8].ToString();
                TextBox2.Text = dr[9].ToString();
                Label29.Text = dr[10].ToString();
                Label19.Text = dr[11].ToString();
                Label30.Text = dr[12].ToString();
                Label20.Text = dr[13].ToString();
                Label31.Text = dr[14].ToString();
                Label18.Text = dr[15].ToString();
                Label32.Text = dr[16].ToString();
                Label17.Text = dr[17].ToString();
                TextBox3.Text = dr[18].ToString();
                TextBox4.Text = dr[19].ToString();
                TextBox5.Text = dr[20].ToString();
                TextBox6.Text = dr[21].ToString();
                Image1.ImageUrl = dr[23].ToString();
                textdisable();

            }
            con.Close();

        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        textenable();
        Label33.Text = "";
        Label34.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label34.Text = string.Empty;
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("update Registration set Addrss= @ad, CurrntAddrss= @cad, Email= @em, AltrEmail= @aem, PhNo= @ph, MobNo= @mob where SId= @sid", con);
        cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());

        //image has to be updated.


        cmd.Parameters.Add("@ad", SqlDbType.VarChar, 500).Value = TextBox1.Text;
        cmd.Parameters.Add("@cad", SqlDbType.VarChar, 500).Value = TextBox2.Text;
        cmd.Parameters.Add("@em", SqlDbType.VarChar, 100).Value = TextBox3.Text;
        cmd.Parameters.Add("@aem", SqlDbType.VarChar, 100).Value = TextBox4.Text;
        cmd.Parameters.Add("@ph", SqlDbType.VarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@mob", SqlDbType.VarChar, 50).Value = TextBox6.Text;

        int i = cmd.ExecuteNonQuery();
        textdisable();
        if (i > 0)
        {
            Label33.ForeColor = System.Drawing.Color.Blue;
            Label33.Text = "Record updated successfully";
        }
        else
        {
            Label33.ForeColor = System.Drawing.Color.Red;
            Label33.Text = "updatation Failed";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label34.Text = string.Empty;
        Label33.Text = string.Empty;  
        
        try
        {
            string path = @"~\ImageReg\" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(path));
            SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Registration set Image= @i where SId= @sid", con);
            cmd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
            cmd.Parameters.AddWithValue("@i", path);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label34.ForeColor = System.Drawing.Color.Blue;
                Label34.Text = "Image updated successfully";
                
            //     SqlCommand cmdd = new SqlCommand("SELECT * from Registration Where SId=@sid ", con);
            //cmdd.Parameters.AddWithValue("@sid", Session["StudentSession"].ToString());
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{

            //    Image1.ImageUrl = dr[23].ToString();
            //}

            }
            else
            {
                Label34.ForeColor = System.Drawing.Color.Red;
                Label34.Text = "Operation Failed";
            }
            con.Close();

        }
       catch
        {
        Label34.ForeColor = System.Drawing.Color.Red;
        Label34.Text = "Please choose the image first";
        }
    }
}
