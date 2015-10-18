using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Teacheruploadresource : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
     protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/Upload Files/");
        if (FileUpload1.HasFile)
        {
            //try
            //{
                FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("insert into UploadResource values(@FileName)", conn);
                   // cmd.Parameters.Add("@SrNo", SqlDbType.Int).Value = TextBox1.Text;
                    cmd.Parameters.Add("@FileName", SqlDbType.Image).Value = FileUpload1.FileBytes;
                    cmd.Dispose();
                    int rows = Convert.ToInt32(cmd.ExecuteNonQuery());
                    if (rows==1)
                    {
                        Label3.Text = "File Uploaded Sucessfully";
                    }
                    else
                    {
                        Label3.Text = " Please Select The File";
                    }
                    conn.Close();
                }
            //}
            //catch
            //{
            //    Label3.Text = "File Not Uploaded";
            //}
        }
       
    }
}