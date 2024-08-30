using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NSS_forgotvolpwd : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string s = "select * from volunteerlogin";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string username = "";
            while (reader.Read())
            {
                username = reader.GetString(1);
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                if (TextBox1.Text == TextBox2.Text)
                {
                    s = "update volunteerlogin  set password=@p  where username=@username ";
                    SqlCommand cmd11 = new SqlCommand(s, con);
                    cmd11.Parameters.Add("@p", TextBox2.Text);
                    cmd11.Parameters.Add("@username", username);
                    con.Open();

                    cmd11.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Password Updated Successfully...');window.location='volunteerlogin.aspx';</script>");
                }

                else
                {
                    Label2.Text = "PASSWORDS DO NOT MATCH!!";
                }


            }
            else
            {
                Label1.Text = "Something has gone wrong pls chk...";
            }
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();
        }
    }
}


