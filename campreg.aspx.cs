using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class NSS_campreg : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;

    protected void Page_Load(object sender, EventArgs e)
    {
        string logname = Session["logname"].ToString();
        Label2.Text = Request.QueryString.Get(0);
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {
            
            string s = "select * from campreg";
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
            TextBox10.Text = ctr.ToString();



        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }


        string sp = "select * from volunteer where volunteer_emailid='"+Session["logname"]+"'";
        con.Open();
        SqlCommand cmd11 = new SqlCommand(sp, con);
        SqlDataReader reader;
        reader = cmd11.ExecuteReader();
        int ctr1 = 1;
        String v_fname = "", v_lname = "", v_mobileno = "", v_emailid = "", v_batch = "", v_course = "", v_courseyear = "", v_collegeschool = "";
        while (reader.Read())
        {
            ctr1++;
            v_fname = reader.GetString(1);
            //c_mname = reader.GetString(2);
            v_lname = reader.GetString(2);
            v_mobileno = reader.GetString(18);
            v_emailid = reader.GetString(19);
            v_batch = reader.GetString(26);
            v_course = reader.GetString(23);
            v_courseyear = reader.GetString(24);
            v_collegeschool = reader.GetString(25);

        }
        reader.Close();
        con.Close();
       
        TextBox1.Text = v_fname.ToString();
        //TextBox2.Text = c_mname.ToString();
        TextBox3.Text = v_lname.ToString();
        TextBox4.Text = v_mobileno.ToString();
        TextBox5.Text = v_emailid.ToString();
        TextBox11.Text = v_batch.ToString();
        TextBox7.Text = v_courseyear.ToString();
        TextBox8.Text = v_course.ToString();
        TextBox9.Text = v_collegeschool.ToString();

    }
        
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            //if (FileUpload1.HasFile)
            //{

            //    FileUpload1.SaveAs(@"C:\Users\ANUSHREE\OneDrive\Desktop\NCC-2022\NCC\Uploades\Camp declaration form\" + FileUpload1.FileName);
            //    Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            //}
            //else
            //{
            //    Label1.Text = "No File Uploaded.";
            //    return;
            //}

            string s = "select * from campreg  ";
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

                s = "insert into campreg values(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@1", TextBox10.Text);
                cmd1.Parameters.Add("@2", TextBox1.Text);
                cmd1.Parameters.Add("@3", TextBox3.Text);
                cmd1.Parameters.Add("@4", TextBox4.Text);
                cmd1.Parameters.Add("@5", TextBox5.Text);
                cmd1.Parameters.Add("@6", TextBox6.Text);
                cmd1.Parameters.Add("@7", TextBox11.Text);
                cmd1.Parameters.Add("@8", TextBox7.Text);
                cmd1.Parameters.Add("@9", TextBox8.Text);
                cmd1.Parameters.Add("@10", TextBox9.Text);
                cmd1.Parameters.Add("@11", Label2.Text);


                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registered successfully!!!');window.location='volunteerhome.aspx';</script>");

                TextBox6.Text = "";
                //TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox1.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
            }
            else
            {
                Response.Write("<script>alert('You have already registered ');window.location='volunteerhome.aspx';</script>");
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

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    
}