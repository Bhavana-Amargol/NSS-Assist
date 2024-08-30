using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class NSS_awards : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {

            string s = "select * from award";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader1;
            reader1 = cmd1.ExecuteReader();
            int ctr = 1;
            while (reader1.Read())
            {
                ctr++;

            }
            reader1.Close();
            con.Close();
            TextBox1.Text = ctr.ToString();
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
        string sp = "select * from volunteer volunteer where volunteer_emailid='" + Session["logname"] + "'";
        con.Open();
        SqlCommand cmd11 = new SqlCommand(sp, con);
        SqlDataReader reader;
        reader = cmd11.ExecuteReader();
        int ctr1 = 1;
        String v_fname = "", v_batch = "", v_course = "", v_courseyear = "";
        while (reader.Read())
        {
            ctr1++;
            v_fname = reader.GetString(1);
            //c_mname = reader.GetString(2);
            //v_lname = reader.GetString(2);
            //v_mobileno = reader.GetString(18);
            //v_emailid = reader.GetString(19);
            v_batch = reader.GetString(26);
            v_course = reader.GetString(23);
            v_courseyear = reader.GetString(24);
            //v_collegeschool = reader.GetString(25);

        }
        reader.Close();
        con.Close();

        TextBox2.Text = v_fname.ToString();
        //TextBox2.Text = c_mname.ToString();
        //TextBox3.Text = v_lname.ToString();
        //TextBox4.Text = v_mobileno.ToString();
        //TextBox5.Text = v_emailid.ToString();
        TextBox9.Text = v_batch.ToString();
        TextBox8.Text = v_courseyear.ToString();
        TextBox7.Text = v_course.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (FileUpload1.HasFile)
            {
                Console.WriteLine("FILE PATH" + Server.MapPath("~\\NSS"));
                FileUpload1.SaveAs(@Server.MapPath("~\\NSS\\Uploads\\award\\" + FileUpload1.FileName));
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
                return;
            }

            string s = "select * from award where  award_id= " + "'" + TextBox1.Text + "'";
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

                s = "insert into award values(@1,@2,@3,@4,@5,@6,@7,@8,@9)";
                Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@1", TextBox1.Text);
                cmd1.Parameters.Add("@2", TextBox2.Text);
                cmd1.Parameters.Add("@3", TextBox7.Text);
                cmd1.Parameters.Add("@4", TextBox8.Text);
                cmd1.Parameters.Add("@5", TextBox9.Text);
                cmd1.Parameters.Add("@6", TextBox4.Text);
                cmd1.Parameters.Add("@7", TextBox5.Text);
                cmd1.Parameters.Add("@8", TextBox6.Text);
                // cmd1.Parameters.Add("@7", TextBox7.Text);
                cmd1.Parameters.Add("@9", FileUpload1.FileName);
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
                Response.Write("<script>alert('awards Added successfully!!!');window.location='awards.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox7.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                //  TextBox7.Text = "";




            }
            else
            {
                Response.Write("<script>alert('couldn't add award details.Details already exist ');window.location='awards.aspx';</script>");
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


    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox7.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}