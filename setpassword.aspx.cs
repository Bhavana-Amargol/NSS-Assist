using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NSS_setpassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        Label4.Text = Request.QueryString.Get(0);
        //String reg_emailid = "";
        try
        {

            string s = "select * from volunteer";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            /*int ctr = 1;*/
            while (reader.Read())
            {

                //reg_emailid = reader.GetString(19);

            }
            reader.Close();

            con.Close();
            /*
            Label9.Text = Convert.ToString(reader[0]);
            Label10.Text = Convert.ToString(reader[1]);
            Label11.Text = Convert.ToString(reader[28]);
            Label12.Text = Convert.ToString(reader[29]);
            Label9.Text = 
                TextBox1.Text = ctr.ToString();*/
        }
        catch (Exception ex)
        {

            Label2.Text = ex.ToString();

        }

        try
        {
            string s = "select * from volunteerlogin";
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
            Label3.Text = ctr1.ToString();

        }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }



    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string logname = Session["logname"].ToString();
            //logname = "";
            //string s = "select * from volunteer where volunteer_fname=" + "'" + logname + "'" +" and v_id = " + "'" + logname +
            //string s = "select * from volunteer where volunteer_fname=" + "'" + logname + "'";
            //string s = "select * from volunteer where volunteer_fname=" + "''";
            string s = "select * from volunteer where volunteer_fname=" + "'" + Label4.Text + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            string volunteer_fname = "", volunteer_emailid = "";
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            int ctr = 0;
            String vid = "";
            while (reader.Read())
            {
                ctr++;
                int v_id = reader.GetInt32(0);
                vid = Convert.ToString(v_id);
                volunteer_fname = reader.GetString(1);
                volunteer_emailid = reader.GetString(19);
            }
            // if (ctr == 1)
            //{
            // //    // Label1.Text = "success";
            //  Session["logname"] = Label4.Text;
            //   Session["logname"] = Label4.Text.Trim();
            // //    //Session["id"] = loginid;
            // //    //Session["address"] = address;
            // //    //   Session["mobile"] = mobile;


            // //    //   Session["name"] = name;
            // //    //Session["address"] = address;
            // //    //   Session["mobile"] = mobile;

            // //    //Response.Write("c===" + Session["logname"].ToString());
            // //    //Response.Write("<br>" + Session["name"].ToString());
            // //    //Response.Write("<br>" + Session["mobile"].ToString());
            // //    Response.Redirect("volunteerhome.aspx");
            // }
            reader.Close();
            con.Close();
            string loginid = ctr.ToString();



            if (ctr == 1)
            {
                Session["logname"] = volunteer_fname;
                //Session["logname"] = TextBox2.Text.Trim();
                Session["id"] = loginid;

                if (TextBox1.Text == TextBox2.Text)
                {


                    

                    //s = "insert into physialtest(ptid,pt_run,pt_pushup,pt_situps,pt_crunches) values(@1,@2,@3,@4,@5)";
                    //Response.Write(s);
                    //s = "insert into cadetlogin(username)select (volunteer_fname) from cadet";
                     string sp = "insert into volunteerlogin(username,pwd) values(@2,@3)";


                    cmd1 = new SqlCommand(sp, con);

                    //cmd1.Parameters.Add("@1", loginid);
                    cmd1.Parameters.Add("@2", volunteer_emailid);
                    cmd1.Parameters.Add("@3", TextBox1.Text);


                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();


                    TextBox1.Text = "";
                    TextBox2.Text = "";


                    Response.Write("<script>alert('Password Updated successfully!!!');window.location='volunteerlogin.aspx';</script>");


                }
                else
                {
                    Response.Write("PASSWORD DOES NOT MATCH");
                }



            }
            else
            {
                Response.Write("<script>alert('You have already registered with us..');window.location='appstatus.aspx';</script>");
                //   "You have already registered with us..";

            }
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label2.Text = ex.ToString();

        }
    }
}
    
  
