using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NSS_appstatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);


        string s = "select * from volunteer ";


        con.Open();

        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();
        int ctr = 0;
        // String v_id = "";

        while (reader.Read())
        {
            ctr++;
            // c_id = reader.GetString(0);

            //    mobile = reader.GetString(2);
            //address = reader.GetString(7);

        }


        reader.Close();
        con.Close();
        HyperLink1.Text = "";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from  volunteer where  volunteer_mobileno=" + "'" + TextBox1.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            String volunteer_fname = "", volunteer_status = "", volunteer_mobileno = "", volunteer_emailid = "";
            //Response.Write(reg_emailid.ToString());
            while (reader.Read())
            {
                ctr++;
                //c_id = reader.GetString(0);     
                volunteer_fname = reader.GetString(1);
                volunteer_status = reader.GetString(33);
                volunteer_mobileno = reader.GetString(18);
                volunteer_emailid = reader.GetString(19);
                //address = reader.GetString(7);

            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                // Label1.Text = "success";
                 Session["logname"] = volunteer_emailid;
                //   Session["name"] = name;
                //Session["address"] = address;
                //   Session["mobile"] = mobile;

                //Response.Write("c===" + Session["logname"].ToString());
                //Response.Write("<br>" + Session["name"].ToString());
                //Response.Write("<br>" + Session["mobile"].ToString());

                Label2.Text = volunteer_status.ToString();

                HyperLink1.Text = "CLICK HERE TO SET PASSWORD";
                HyperLink1.NavigateUrl = "setpassword.aspx?f=" + volunteer_fname;
                //  Response.Write("<div class=link ><a  style=color:blue; href=setpassword.aspx?id=" + c_id + "  > CLICK HERE TO SET PASSWORD</a></div>");



                //Response.Write( Label2.Text);

            }
            else if (volunteer_mobileno != TextBox1.Text)
            {
                HyperLink1.Text = "";
                Label3.Text = "YOUR APPLICATION IS NOT YET PROCESSED OR YOU HAVE NOT REGISTERED WITH US!";


            }


        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        HyperLink1.Text = "";
        TextBox1.Text = "";
        TextBox1.Text = string.Empty;
        Label2.Text = "";
        Label3.Text = "";
    }
}

