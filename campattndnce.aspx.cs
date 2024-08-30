using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Reflection;
using System.Collections;

public partial class NSS_campattndnce : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {


            //        //  string em = Session["logname"].ToString();

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            string logname = Session["logname"].ToString();
            string s = "select * from campreg";// where emailid =" + "'" + em + "'";
                                                 //string sr = "select * from status";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            //SqlCommand cmd4 = new SqlCommand(sr, con);
            SqlDataReader reader;
            //SqlDataReader reader1;
            reader = cmd1.ExecuteReader();
            //reader1 = cmd4.ExecuteReader();
            int ctr = 1;

            while (reader.Read())
            {

                ctr++;


            }
            reader.Close();
            con.Close();
            //while (reader1.Read())
            //{

            //    ctr++;


            //}

            //reader1.Close();
            //con.Close();


            if (ctr > 0)
            {
                //            /////////////////////

                //            //  string str11 = "select * from payment2  where  email=" + "'" + ln + "'";
                //            // string str11 = "select * from packbooking";// where clientemail =" + "'" + em + "'";



                //            //ownerid,fname,phone from owner WHERE ownerid =" + "'" + txtowner.Text + "'";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(s, con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd2);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            else
            {
                Label1.Text = "Sorry No details yet...";

            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
    public void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        //dt.Columns.Add("VID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("STATUS");
        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("CAMP DATE");
        //dt.Columns.Add("CAMP INVITATION");

        //for (int i = 0; i < Control.Controls.Count; i++)
        //{
        //    Control current = control.Controls[i];
        //else if (current is DropDownList)
        //{
        //    control.Controls.Remove(current);
        //    control.Controls.AddAt(i, new LiteralControl((current as DropDownList).SelectedItem.Text));
        //}
        //if (ctrlProp.Name == ExcelPropertyName &&
        //    ctrlProp.PropertyType == typeof(ListItem))
        //{
        //    try
        //    {
        //        strReturn = ((ListItem)(ctrlProp.GetValue(control, null))).Text;
        //        break;
        //    }
        //    catch
        //    {
        //        strReturn = "";
        //    }
        //}

        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            //dr["VID"] = GridView1.Rows[i].Cells[1].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["STATUS"] = GridView1.Rows[i].Cells[6].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP DATE"] = GridView1.Rows[i].Cells[8].Text;
            //dr["INVITATION"] = GridView1.Rows[i].Cells[7].Text;

            dt.Rows.Add(dr);

        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();

        Response.AddHeader("content-disposition", string.Format("attachment;filename=CAMPATTENDANCE.xls", "AllColumn"));
        Response.ContentType = "application/excel";
        Response.Charset = "";
        //    //Range =get_Range("A1", System.Type.Missing);

        //    //Range.AutoFilter(1, System.Reflection.Missing.Value, XlAutoFilterOperator.xlFilterValues, Type.Missing, true);

        StringWriter stringWriter = new StringWriter();
        HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        grid.HeaderRow.Style.Add("background-color", "#FFFFFF");

        foreach (TableCell tableCell in grid.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129";
        }
        foreach (GridViewRow gridViewRow in grid.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
            }
        }


        grid.RenderControl(htmlWriter);
        Response.Write(stringWriter.ToString());
        Response.End();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        //dt.Columns.Add("VID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("STATUS");
        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("CAMP DATE");
        //dt.Columns.Add("CAMP INVITATION");

        //    //for (int i = 0; i < Control.Controls.Count; i++)
        //    //{
        //    //    Control current = control.Controls[i];
        //    //else if (current is DropDownList)
        //    //{
        //    //    control.Controls.Remove(current);
        //    //    control.Controls.AddAt(i, new LiteralControl((current as DropDownList).SelectedItem.Text));
        //    //}
        //    //if (ctrlProp.Name == ExcelPropertyName &&
        //    //    ctrlProp.PropertyType == typeof(ListItem))
        //    //{
        //    //    try
        //    //    {
        //    //        strReturn = ((ListItem)(ctrlProp.GetValue(control, null))).Text;
        //    //        break;
        //    //    }
        //    //    catch
        //    //    {
        //    //        strReturn = "";
        //    //    }
        //    //}

        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            //dr["VID"] = GridView1.Rows[i].Cells[1].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["STATUS"] = GridView1.Rows[i].Cells[6].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP DATE"] = GridView1.Rows[i].Cells[8].Text;
            //dr["INVITATION"] = GridView1.Rows[i].Cells[7].Text;

            dt.Rows.Add(dr);
        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();
        Response.AddHeader("content-disposition", string.Format("attachment;filename=CAMPSATTENDANCE.docs", "AllColumn"));
        Response.ContentType = "application/ms-word";
        Response.Charset = "";

        StringWriter stringWriter = new StringWriter();
        HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        grid.HeaderRow.Style.Add("background-color", "#FFFFFF");

        foreach (TableCell tableCell in grid.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129";
        }
        foreach (GridViewRow gridViewRow in grid.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
            }
        }


        grid.RenderControl(htmlWriter);
        Response.Write(stringWriter.ToString());
        Response.End();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        // dt.Columns.Add("VID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("STATUS");
        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("CAMP DATE");
        //dt.Columns.Add("INVITATION");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            // dr["VID"] = GridView1.Rows[i].Cells[1].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["STATUS"] = GridView1.Rows[i].Cells[6].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP DATE"] = GridView1.Rows[i].Cells[8].Text;
            //dr["POSTER"] = GridView1.Rows[i].Cells[5].Text;
            //dr["INVITATION"] = GridView1.Rows[i].Cells[7].Text;

            dt.Rows.Add(dr);

        }


        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=CAMPSATTENDANCE.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        grid.AllowPaging = false;
        grid.DataBind();
        grid.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();



        PdfPTable pdfTable = new PdfPTable(grid.HeaderRow.Cells.Count);

        foreach (TableCell headerCell in grid.HeaderRow.Cells)
        {
            Font font = new Font();
            font.Color = new BaseColor(grid.HeaderStyle.ForeColor);


            PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));
            pdfCell.BackgroundColor = new BaseColor(grid.HeaderStyle.BackColor);

            pdfTable.AddCell(pdfCell);
        }


        foreach (GridViewRow gridViewRow in grid.Rows)
        {
            foreach (TableCell tableCell in gridViewRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(grid.RowStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));
                pdfCell.BackgroundColor = new BaseColor(grid.RowStyle.BackColor);

                pdfTable.AddCell(pdfCell);
            }
        }

        Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
        pdfDocument.Open();
        pdfDocument.Add(pdfTable);
        pdfDocument.Close();
        Response.ContentType = "application/pdf";
        Response.AppendHeader("content-disposition", "attachment;filename=CAMPATTENDANCE.pdf");
        Response.Write(pdfDocument);
        Response.Flush();
        Response.End();

    }

    //protected void Button4_Click(object sender, CAMPArgs e)
    //{
    //    /*= "select * from volunteer where CAMP_conductdate=" + "'" + TextBox1.Text + "'";*/
    //    string str;
    //    SqlCommand cmd1 = new SqlCommand(str, con);
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    DataTable dt = new DataTable();
    //    da = new SqlDataAdapter(cmd1);
    //    da.Fill(dt);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //    Label4.Text = "Search results for " + DropDownList1.Text;
    //}


    internal class BaseColor : Color
    {
        public BaseColor(System.Drawing.Color color) : base(color)
        {
        }


    }

    //protected void GridView1_RowDataBound(object sender, GridViewRowCAMPArgs e)
    //{


    //}

    //protected void GridView1_RowDataBound1(object sender, GridViewRowCAMPArgs e)
    //{
    //    //if (e.Row.RowType == DataControlRowType.DataRow)
    //    //{
    //    //        string mainconn = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    //    //        SqlConnection sqlcon = new SqlConnection(mainconn);
    //    //        sqlcon.Open();
    //    //        var dropdown = (DropDownList)e.Row.FindControl("DropdownList1");
    //    //        string sqlquery = "select status from [dbo].[status]";
    //    //        SqlCommand sqlcom = new SqlCommand(sqlquery, sqlcon);
    //    //        SqlDataAdapter sda = new SqlDataAdapter(sqlcom);
    //    //        DataTable dt = new DataTable();
    //    //        sda.Fill(dt);
    //    //        sqlcon.Close();
    //    //        dropdown.DataSource = dt;
    //    //        dropdown.DataTextField = "status";
    //    //        dropdown.DataValueField = "status";
    //    //        dropdown.DataBind();

    //    // }
    //}

    //protected void GridView1_RowDataBound(object sender, GridViewRowCAMPArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        int StatusValue = (int)DataBinder.Eval(e.Row.DataItem, "Status");
    //        RadioButtonList rb = (RadioButtonList)e.Row.FindControl("RadioButtonList1");
    //        rb.Items.FindByValue(StatusValue.ToString()).Selected = true;
    //    }
    //}

    //protected void Submit_Click(object sender, CAMPArgs e)
    //{
    //    foreach (GridViewRow row in GridView1.Rows)
    //    {
    //        //Find the Radio button control
    //        RadioButtonList rb = (RadioButtonList)row.FindControl("RadioButtonList1");
    //        if (rb.SelectedItem != null)
    //        {
    //            if (rb.SelectedItem.Value == "1")
    //            {
    //                string id = row.Cells[6].Text;
    //                string query = "Query";

    //                string mainconnn = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    //                SqlConnection sqlcon = new SqlConnection(mainconnn);
    //                SqlCommand cmd6 = new SqlCommand(query, con);
    //                //string s;
    //                //SqlCommand cmd1 = new SqlCommand(s, con);
    //                //cmd1 = new SqlCommand(query, con);

    //                con.Open();
    //                cmd6.ExecuteNonQuery();

    //                con.Close();
    //            }
    //        }
    //    }
    //}

    //protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    string mainconn = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    //    SqlConnection sqlcon = new SqlConnection(mainconn);
    //    string sqlquery = "select * from [dbo].[volunteer] where volunteer_course='" + DropDownList1.SelectedItem.Text + "'";
    //    sqlcon.Open();
    //    SqlCommand sqlcom = new SqlCommand(sqlquery, sqlcon);
    //    SqlDataAdapter sda = new SqlDataAdapter(sqlcom);
    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //    sqlcon.Close();
    //}
}