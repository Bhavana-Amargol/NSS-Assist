using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class NSS_addmedia : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        string logname = Session["logname"].ToString();

        try
        {




            string s = "select * from campmedia";
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

            TextBox5.Text = ctr.ToString();
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
        try
        {
            string s = "select * from eventmedia";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr1 = 1;
            while (reader.Read())
            {

                ctr1++;

            }

            reader.Close();
            con.Close();

            TextBox6.Text = ctr1.ToString();
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Camps")
        {
            table2.Visible = true;
            table3.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "Events")
        {
            table3.Visible = true;
            table2.Visible = false;

        }


    }





    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from camp";// where u="+"'"+TextBox1.Text+"'"+" and  p="+"'"+TextBox2.Text+"'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {

                DropDownList2.Items.Add(reader.GetString(1));
            }

            reader.Close();
            con.Close();
        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from camp";// where u="+"'"+TextBox1.Text+"'"+" and  p="+"'"+TextBox2.Text+"'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {
                DropDownList3.Items.Add(reader.GetString(3));
            }

            reader.Close();
            con.Close();

        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from event";// where u="+"'"+TextBox1.Text+"'"+" and  p="+"'"+TextBox2.Text+"'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {
                DropDownList5.Items.Add(reader.GetString(3));
            }

            reader.Close();
            con.Close();

        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from event";// where u="+"'"+TextBox1.Text+"'"+" and  p="+"'"+TextBox2.Text+"'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            while (reader.Read())
            {
                DropDownList4.Items.Add(reader.GetString(1));
            }

            reader.Close();
            con.Close();

        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload2.HasFile)
            {
                //string fname = Path.GetFileName(FileUpload1.FileName);
                Console.WriteLine("FILE PATH" + Server.MapPath("~\\NSS"));
                FileUpload2.SaveAs(@Server.MapPath("~\\NSS\\Uploads\\CampMedia\\" + FileUpload2.FileName));
                Label2.Text = "File Uploaded: " + FileUpload2.FileName;
            }
            else
            {
                Label2.Text = "No File Uploaded.";
                return;
            }

            // con.Open();
            string s = "insert into campmedia values(@1,@2,@3,@4,@5)";
            SqlCommand cmd1 = new SqlCommand(s, con);



            cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.Add("@1", TextBox5.Text);
            //cmd1.Parameters.Add("@2", Label10.Text);
            //cmd1.Parameters.Add("@3", Label14.Text);
            //cmd1.Parameters.Add("@4", Label11.Text);
            //cmd1.Parameters.Add("@5", Label12.Text);
            cmd1.Parameters.Add("@2", DropDownList2.Text);
            cmd1.Parameters.Add("@3", DropDownList3.Text);
            cmd1.Parameters.Add("@4", FileUpload2.FileName);
            cmd1.Parameters.Add("@5", TextBox1.Text);




            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('CAMP MEDIA ADDED SUCCESSFULLY!!');window.location='addmedia.aspx'</script>");
            //TextBox1.Text = "";
            //TextBox2.Text = "";




        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload3.HasFile)
            {
                //string fname = Path.GetFileName(FileUpload1.FileName);
                Console.WriteLine("FILE PATH" + Server.MapPath("~\\NSS"));
                FileUpload2.SaveAs(@Server.MapPath("~\\NSS\\Uploads\\EventMedia\\" + FileUpload2.FileName));
                Label3.Text = "File Uploaded: " + FileUpload3.FileName;
            }
            else
            {
                Label3.Text = "No File Uploaded.";
                return;
            }

            // con.Open();
            string s = "insert into eventmedia values(@1,@2,@3,@4,@5)";
            SqlCommand cmd1 = new SqlCommand(s, con);



            cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.Add("@1", TextBox6.Text);
            //cmd1.Parameters.Add("@2", Label10.Text);
            //cmd1.Parameters.Add("@3", Label14.Text);
            //cmd1.Parameters.Add("@4", Label11.Text);
            //cmd1.Parameters.Add("@5", Label12.Text);
            cmd1.Parameters.Add("@2", DropDownList4.Text);
            cmd1.Parameters.Add("@3", DropDownList5.Text);
            cmd1.Parameters.Add("@4", FileUpload3.FileName);
            cmd1.Parameters.Add("@5", TextBox2.Text);




            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('EVENT MEDIA ADDED SUCCESSFULLY!!');window.location='addmedia.aspx'</script>");
            //TextBox1.Text = "";
            //TextBox2.Text = "";
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }

    }



}