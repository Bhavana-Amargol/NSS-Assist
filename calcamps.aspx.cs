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

public partial class NSS_calcamps : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {

            string s = "select * from calcamp";
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
            string s = "select * from calcamp where cc_id= " + "'" + TextBox1.Text + "'";
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

                s = "insert into calcamp values(@1,@2,@3,@4,@5,@6)";
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
                cmd1.Parameters.Add("@5", TextBox5.Text);
                cmd1.Parameters.Add("@6", TextBox6.Text);
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
                Response.Write("<script>alert('Camp Added successfully!!!');window.location='calcamps.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                //TextBox7.Text = "";




            }
            else
            {
                Response.Write("<script>alert('couldn't add camp details.Details already exist ');window.location='calcamps.aspx';</script>");
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
