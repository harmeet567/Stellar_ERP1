using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class DownloadResource : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");






    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string filename;
        if (conn.State == ConnectionState.Closed)
            conn.Open();
        SqlCommand cmd = new SqlCommand("select * from UploadResource ", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();

            // filename = dr[0].ToString();
            filename = GridView1.SelectedRow.Cells[2].Text;
            if (filename != null)
            {

                string filepath = Server.MapPath("~/Upload Files/" + filename);
                Response.Clear();
                Response.AppendHeader("content-disposition", "attachment; filename=" + filename);
                Response.ContentType = "application/octet-stream";
                Response.WriteFile(filepath);
                Response.Flush();
                Response.End();
            }
            dr.Close();
            cmd.Dispose();
            conn.Close();
        }
    }
}