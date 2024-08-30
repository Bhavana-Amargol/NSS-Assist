
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class NSS_camps : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
        }
        try
        {

            string s = "select * from camp";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                Console.WriteLine("FILE PATH" + Server.MapPath("~\\NSS"));
                FileUpload1.SaveAs(@Server.MapPath("~\\NSS\\Uploads\\CampPhoto\\" + FileUpload1.FileName));
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
                return;
            }

            string s = "select * from camp   where camp_id= " + "'" + TextBox1.Text + "'";
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

                s = "insert into camp values(@1,@2,@3,@4,@5,@6,@7,@8)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@1", TextBox1.Text);
                cmd1.Parameters.Add("@2", TextBox2.Text);
                cmd1.Parameters.Add("@3", TextBox3.Text);
                cmd1.Parameters.Add("@4", TextBox4.Text);
                cmd1.Parameters.Add("@5", TextBox5.Text);
                cmd1.Parameters.Add("@6", TextBox6.Text);
                cmd1.Parameters.Add("@7", TextBox7.Text);
                cmd1.Parameters.Add("@8", FileUpload1.FileName);
                // if (RadioButtonList2.SelectedIndex == 0)
                {
                 //   cmd1.Parameters.Add("@7", RadioButtonList2.SelectedValue);
                }
               // else
                {
                  //  cmd1.Parameters.Add("@7", RadioButtonList2.SelectedValue);
                }

               // cmd1.Parameters.Add("@8", TextBox7.Text);
               // cmd1.Parameters.Add("@9", TextBox8.Text);

              //  if (RadioButtonList1.SelectedIndex == 0)
                {
                //    cmd1.Parameters.Add("@10", RadioButtonList1.SelectedValue);
                }
               // else
                {
                 //   cmd1.Parameters.Add("@10", RadioButtonList1.SelectedValue);
                }


              //  cmd1.Parameters.Add("@11", FileUpload1.FileName);
               // cmd1.Parameters.Add("@12", TextBox9.Text);


                //cmd1.Parameters.Add("@pw", TextBox7.Text);





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Camp details added successfully!!!');window.location='camps.aspx';</script>");

                TextBox6.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox1.Text = "";
                //TextBox8.Text = "";
                //TextBox9.Text = "";

            }
            else
            {
                Response.Write("<script>alert('Couldnt add camp details. Details already exist! ');window.location='camps.aspx';</script>");
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
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox1.Text = "";
       // TextBox7.Text = "";
       //TextBox8.Text = "";
       //TextBox9.Text = "";
        //TextBox10.Text = "";
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;

            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.LightGray;

            // e.Cell.Font.Strikeout = true;
        }
        else
        {
            e.Cell.ForeColor = System.Drawing.Color.Black;
            e.Cell.BackColor = System.Drawing.Color.White;

        }
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;

        }
    }
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
        if (TextBox5.Text == string.Empty)
        {
            TextBox6.Text = string.Empty;
        }
        else
        {

            DateTime d2 = Calendar2.SelectedDate;
            DateTime d1 = Calendar1.SelectedDate;
            Double datediff = ((TimeSpan)(d2.Subtract(d1))).Days;
            TextBox6.Text = datediff.ToString() + " Days";

        }
    }

    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.Gray;

            // e.Cell.Font.Strikeout = true;
        }
    }
}

    




