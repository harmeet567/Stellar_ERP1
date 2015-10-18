using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Tstudentinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            con.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = con;
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
            con.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from Registration where SId=@sid ", con);
        cmd.Parameters.AddWithValue("@sid", DropDownList1.SelectedItem.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        //if (DropDownList1.SelectedItem.Text != null)
        //{
            if (dr.Read())
            {
                Label25.Text = dr[1].ToString();
                Label26.Text = dr[2].ToString();
                Label21.Text = dr[3].ToString();
                Label37.Text = dr[4].ToString();
                Label22.Text = dr[5].ToString();
                Label31.Text = dr[14].ToString();
                Label18.Text = dr[15].ToString();
                Label32.Text = dr[16].ToString();
                Label17.Text = dr[17].ToString();
                Label33.Text = dr[18].ToString();
                Label36.Text = dr[19].ToString();
                Label34.Text = dr[20].ToString();
                Label35.Text = dr[21].ToString();
                Image1.ImageUrl = dr[23].ToString();
                //image hass to be fected


                con.Close();


            }
      //  }
        else
        {
            Label38.Text = "no such record found";
            con.Close();

        }
    }
}