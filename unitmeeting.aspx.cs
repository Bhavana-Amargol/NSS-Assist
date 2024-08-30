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
using System.Text;

public partial class NSS_unitmeeting : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        string logname = Session["logname"].ToString();

        con = new SqlConnection(strcon);
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        try
        {

            string s = "select * from meeting";
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
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            //  if (FileUpload1.HasFile)
            //  {
            //   string fname = Path.GetFileName(FileUpload1.FileName);
            //  FileUpload1.SaveAs(@"C:\Users\Lenovo\Desktop\nss\NSS\" + fname);
            //  Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            //  }
            // else
            {
                //   Label1.Text = "No File Uploaded.";
                //  return;
            }

            string s = "select * from meeting where  m_id= " + "'" + TextBox1.Text + "'";
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

                s = "insert into meeting values(@1,@2,@3,@4,@5,@6,@7,@8,@9)";
                Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@1", TextBox1.Text);
                cmd1.Parameters.Add("@2", TextBox2.Text);
                cmd1.Parameters.Add("@3", TextBox3.Text);
                cmd1.Parameters.Add("@4", TextBox4.Text);
                cmd1.Parameters.Add("@5", TextBox5.Text);
                cmd1.Parameters.Add("@6", DropDownList1.Text);
                //cmd1.Parameters.Add("@7", TextBox7.Text);
                StringBuilder sbUserChoice = new StringBuilder();

                if (CheckBox1.Checked)
                {
                    sbUserChoice.Append(CheckBox1.Text);

                }

                if (CheckBox2.Checked)
                {
                    sbUserChoice.Append(" " + CheckBox2.Text);
                }



                cmd1.Parameters.Add("@8", sbUserChoice.ToString());
                cmd1.Parameters.Add("@9", TextBox6.Text);


                //cmd1.Parameters.Add("@8", TextBox8.Text);
                // cmd1.Parameters.Add("@9", FileUpload1.FileName);
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
                Response.Write("<script>alert('meeting details added successfully!!!');window.location='meeting.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                //TextBox7.Text = "";
                //  TextBox8.Text = "";





            }
            else
            {
                Response.Write("<script>alert('couldn't add meeting details.Details already exist ');window.location='meeting.aspx';</script>");
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