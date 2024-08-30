using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NSS_unitleaderlogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    String loginid = "", username = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "forgotunitleaderpwd.aspx";
       // HyperLink2.NavigateUrl = "setpassword.aspx";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from unitleaderlogin where username=" + "'" + TextBox1.Text + "'" + " and  password=" + "'" + TextBox2.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            //String name = "", mobile = "", address = "";
            while (reader.Read())
            {
                ctr++;
                //  name = reader.GetString(0);
                //    mobile = reader.GetString(2);
                //address = reader.GetString(7);
                loginid = reader.GetString(0);
                username = reader.GetString(1);
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                // Label1.Text = "success";
                Session["logname"] = username;
                Session["logname"] = TextBox1.Text.Trim();
                Session["id"] = loginid;

                //   Session["name"] = name;
                //Session["address"] = address;
                //   Session["mobile"] = mobile;

                //Response.Write("c===" + Session["logname"].ToString());
                //Response.Write("<br>" + Session["name"].ToString());
                //Response.Write("<br>" + Session["mobile"].ToString());
                Response.Redirect("unitleaderhome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Sorry,Login Fails Due to Incorrect E-mailId or Password');window.location='unitleaderlogin.aspx';</script>");
            }


        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

}
