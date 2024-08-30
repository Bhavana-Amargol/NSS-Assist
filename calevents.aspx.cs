using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class NSS_eventphotos : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {

            string s = "select * from calevent";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();
            TextBox1.Text = ctr.ToString();
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            //if (FileUpload1.HasFile)
            //{
            //    string fname = Path.GetFileName(FileUpload1.FileName);
            //    FileUpload1.SaveAs(@"C:\Users\Admin\Desktop\NSS-22\NSS\Uploads\Event Poster\\" + fname);
            //    Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            //}
            //else
            //{
            //    Label1.Text = "No File Uploaded.";
            //    return;
            //}

            //if (FileUpload3.HasFile)
            //{
            //    string fname = Path.GetFileName(FileUpload3.FileName);
            //    FileUpload3.SaveAs(@"C:\Users\Admin\Desktop\NSS-22\NSS\Uploads\Event Circular\\" + fname);
            //    Label1.Text = "File Uploaded: " + FileUpload3.FileName;
            //}
            //else
            //{
            //    Label1.Text = "No File Uploaded.";
            //    return;
            //}
           //else
           // {
           //     Label1.Text = "No File Uploaded.";
           //     return;
           // }

            string s = "select * from calevent where ce_id= " + "'" + TextBox1.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();
            if (ctr == 0)
            {

                s = "insert into calevent values(@1,@2,@3,@4)";
                Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@1", TextBox1.Text);
                cmd1.Parameters.Add("@2", TextBox2.Text);
                //cmd1.Parameters.Add("@3", TextBox3.Text);
                //cmd1.Parameters.Add("@4", TextBox4.Text);
                //cmd1.Parameters.Add("@5", TextBox5.Text);
                //cmd1.Parameters.Add("@6", TextBox6.Text);
                cmd1.Parameters.Add("@3", TextBox3.Text);
                cmd1.Parameters.Add("@4", TextBox4.Text);
                //cmd1.Parameters.Add("@8", FileUpload3.FileName);
                //cmd1.Parameters.Add("@10", FileUpload4.FileName);
                // if (RadioButtonList1.SelectedIndex == 0)
                //  {
                //  cmd1.Parameters.Add("@7", RadioButtonList1.SelectedValue);
                // }
                //  else
                {
                    //  cmd1.Parameters.Add("@7", RadioButtonList1.SelectedValue);
                }

                // cmd1.Parameters.Add("@8", TextBox7.Text);

                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Event Added successfully!!!');window.location='calevents.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                //TextBox5.Text = "";
                //TextBox6.Text = "";
                //TextBox7.Text = "";




            }
            else
            {
                Response.Write("<script>alert('couldn't add event details.Details already exist ');window.location='calevents.aspx';</script>");
                //   "You have already registered with us..";

            }
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();



        }
    }
}
   
