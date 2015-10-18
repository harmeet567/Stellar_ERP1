using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class TeejaNquiry : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=harmeet-pc;Initial Catalog=stellarerp;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label27.Visible = false;
        TextBox10.Visible = false;
        Label32.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        //  try
        //{
              string s;

              if (RadioButton1.Checked == true)
              {
                  s = "OCP";
              }
              else
              {
                  if (RadioButton2.Checked == true)
                  {
                      s = "OCA";
                  }
                  else
                  {
                      if (RadioButton3.Checked == true)
                      {
                          s = "SEO";
                      }
                      else
                      {
                          if (RadioButton4.Checked == true)
                          {
                              s = "SQT";
                          }
                          else
                          {
                              if (RadioButton5.Checked == true)
                              {
                                  s = ".NET";
                              }
                              else
                              {
                                  if (RadioButton6.Checked == true)
                                  {
                                      s = "JAVA";
                                  }
                                  else
                                  {
                                      if (RadioButton7.Checked == true)
                                      {
                                          s = "RHCE";
                                      }
                                      else
                                      {
                                          if (RadioButton8.Checked == true)
                                          {
                                              s = "PHP";
                                          }
                                          else
                                          {
                                              if (RadioButton9.Checked == true)
                                              {
                                                  s = "EMBEDED SYSTEMS";
                                              }
                                              else
                                              {
                                                  s = null;
                                                 
                                              }
                                          }
                                      }
                                  }
                              }
                          }
                      }
                  }
              }
        string heard;
        if (RadioButton10.Checked == true)
        {
            heard = "Newspaper";
        }
        else
        {
            if (RadioButton11.Checked == true)
            {
                heard = "Friends/Relatives";
            }
            else
            {
                if (RadioButton12.Checked == true)
                {
                    heard = "Internet";
                }
                else
                {
                    if (RadioButton13.Checked == true)
                    {
                        heard = "Banner/Pamphlet";
                    }
                    else
                    {
                        if (RadioButton14.Checked == true)
                        {
                            heard = "Workshop/Seminar in a college";
                        }
                        else
                        {
                            heard = null;
                            //Label33.Text = "Plz select the information sourse";
                        }

                    }

                }
            }
        }     
        
      
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into EnquiryTable values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@k,@l,@j)", conn);
            cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@b", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = TextBox3.Text;
            cmd.Parameters.Add("@d", SqlDbType.VarChar, 50).Value = TextBox4.Text;
            cmd.Parameters.Add("@e", SqlDbType.VarChar, 50).Value = TextBox5.Text;
            cmd.Parameters.Add("@f", SqlDbType.VarChar, 50).Value = TextBox6.Text;
            cmd.Parameters.Add("@g", SqlDbType.VarChar, 50).Value = TextBox7.Text;
            cmd.Parameters.Add("@h", SqlDbType.VarChar, 50).Value = TextBox8.Text;
            cmd.Parameters.Add("@i", SqlDbType.VarChar, 50).Value = s;
            cmd.Parameters.Add("@k", SqlDbType.VarChar, 50).Value = heard;
            cmd.Parameters.Add("@l", SqlDbType.DateTime).Value = DateTime.Now;
            cmd.Parameters.Add("@j", SqlDbType.VarChar, 100).Value = TextBox10.Text;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            clr();
            Label32.ForeColor = System.Drawing.Color.Blue;
            Label32.Text = "Record Saved Successfully";
            Response.Redirect("Homepage.aspx");
       // }
        //catch
        //  {
        //      Label32.ForeColor = System.Drawing.Color.Red;
        //    Label32.Text = "plz select course and information sourse both";
        //    Label33.ForeColor = System.Drawing.Color.Red;
        //    Label33.Text = "plz select course and information sourse both";
       // }
    }
       
    private void clr()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox8.Text = string.Empty;
        Label33.Text = "";
        TextBox1.Focus();
    }
    protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton10.Checked == true)
        {
            Label27.Visible = true;
            TextBox10.Visible = true;
            SetFocus(TextBox10);
            RadioButton11.Enabled = false;
            RadioButton12.Enabled = false;
            RadioButton13.Enabled = false;
            RadioButton14.Enabled = false;
        }
    }
   
}
