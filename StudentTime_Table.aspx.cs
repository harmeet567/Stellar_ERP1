using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentTime_Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select BatchTime,BatchId,TName,Course  from BatchAllocationTable where BatchId=(Select BatchId from BatchStudents where SId=@sid)";
        cmd.Parameters.AddWithValue("@sid",Session["StudentSession"].ToString());
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr["BatchTime"].ToString();
            Label9.Text = dr["BatchId"].ToString();
            Label11.Text = dr["TName"].ToString();
            Label12.Text = dr["Course"].ToString();

        }
        con.Close();
    }
}