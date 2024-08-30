using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NSS_forgotpassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    String eid = "", s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        string logname = Session["logname"].ToString();

        con = new SqlConnection(strcon);
        //eid = Session["logname"].ToString();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            s = "select * from volunteer where volunteer_emailid=" + "'" + TextBox1.Text + "'";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string volunteer_emailid = "", volunteer_fname = "";
            while (reader.Read())
            {
                volunteer_fname = reader.GetString(1);
                volunteer_emailid = reader.GetString(19);
                ctr++;
            }
            reader.Close();
            con.Close();
            //string username = c_fname.ToString();

            if (ctr == 1)
            {


                s = "update volunteerlogin set pwd=@p where username=@volunteer_emailid";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@p", TextBox3.Text);
                cmd11.Parameters.Add("@volunteer_emailid", volunteer_emailid);


                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Updated Successfully...');window.location='volunteerlogin.aspx';</script>");



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
