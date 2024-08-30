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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class NSS_unitvolcamps : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;

        }
        try
        {

            //  string em = Session["logname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            string logname = Session["logname"].ToString();



            string s = "select * from camp";// where emailid =" + "'" + em + "'";


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


            if (ctr > 0)
            {
                /////////////////////

                //  string str11 = "select * from payment2  where  email=" + "'" + ln + "'";
                // string str11 = "select * from packbooking";// where clientemail =" + "'" + em + "'";



                //ownerid,fname,phone from owner WHERE ownerid =" + "'" + txtowner.Text + "'";
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
                Label1.Text = "Sorry No camp details yet...";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("DESCRIPTION");
        dt.Columns.Add("START DATE");
        dt.Columns.Add("END DATE");
        dt.Columns.Add("DURATION");
        //dt.Columns.Add("TYPE");
        dt.Columns.Add("LOCATION");
        //dt.Columns.Add("PURPOSE");
        //dt.Columns.Add("FIRING");
        //dt.Columns.Add("CAMP FEES");

        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["CAMP NAME"] = GridView1.Rows[i].Cells[0].Text;
            dr["DESCRIPTION"] = GridView1.Rows[i].Cells[1].Text;
            dr["START DATE"] = GridView1.Rows[i].Cells[2].Text;
            dr["END DATE"] = GridView1.Rows[i].Cells[3].Text;
            dr["DURATION"] = GridView1.Rows[i].Cells[4].Text;
            //dr["TYPE"] = GridView1.Rows[i].Cells[5].Text;
            dr["LOCATION"] = GridView1.Rows[i].Cells[6].Text;
            //dr["PURPOSE"] = GridView1.Rows[i].Cells[7].Text;
            //dr["FIRING"] = GridView1.Rows[i].Cells[8].Text;
            //dr["CAMP FEES"] = GridView1.Rows[i].Cells[9].Text;
            dt.Rows.Add(dr);

        }


        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();
        Response.AddHeader("content-disposition", string.Format("attachment;filename=camps.xls", "AllColumn"));
        Response.ContentType = "application/excel";
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

    public override void VerifyRenderingInServerForm(Control control)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("DESCRIPTION");
        dt.Columns.Add("START DATE");
        dt.Columns.Add("END DATE");
        dt.Columns.Add("DURATION");
        //dt.Columns.Add("TYPE");
        dt.Columns.Add("LOCATION");
        //dt.Columns.Add("PURPOSE");
        //dt.Columns.Add("FIRING");
        //dt.Columns.Add("CAMP FEES");

        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["CAMP NAME"] = GridView1.Rows[i].Cells[0].Text;
            dr["DESCRIPTION"] = GridView1.Rows[i].Cells[1].Text;
            dr["START DATE"] = GridView1.Rows[i].Cells[2].Text;
            dr["END DATE"] = GridView1.Rows[i].Cells[3].Text;
            dr["DURATION"] = GridView1.Rows[i].Cells[4].Text;
            //dr["TYPE"] = GridView1.Rows[i].Cells[5].Text;
            dr["LOCATION"] = GridView1.Rows[i].Cells[6].Text;
            //dr["PURPOSE"] = GridView1.Rows[i].Cells[7].Text;
            //dr["FIRING"] = GridView1.Rows[i].Cells[8].Text;
            //dr["CAMP FEES"] = GridView1.Rows[i].Cells[9].Text;
            dt.Rows.Add(dr);

        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();

        //Response.Buffer = true;
        //Response.Clear();
        //Response.AddHeader("content-disposition", string.Format("attachment;filename=camps.docs", "AllColumn"));
        //Response.ContentType = "application/ms-word";
        //Response.Charset = "";
        //StringWriter stringWriter = new StringWriter();
        //HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        //grid.HeaderRow.Style.Add("background-color", "#FFFFFF");

        //foreach (TableCell tableCell in grid.HeaderRow.Cells)
        //{
        //    tableCell.Style["background-color"] = "#A55129";
        //}
        //foreach (GridViewRow gridViewRow in grid.Rows)
        //{
        //    gridViewRow.BackColor = System.Drawing.Color.White;
        //    foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
        //    {
        //        gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
        //    }
        //}

        //grid.RenderControl(htmlWriter);
        //Response.Write(stringWriter.ToString());
        //Response.End();




        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
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
        Response.AppendHeader("content-disposition", "attachment;filename=camp.pdf");
        Response.Write(pdfDocument);
        Response.Flush();
        Response.End();

    }




    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        dt.Columns.Add("CAMP NAME");
        dt.Columns.Add("DESCRIPTION");
        dt.Columns.Add("START DATE");
        dt.Columns.Add("END DATE");
        dt.Columns.Add("DURATION");
        //dt.Columns.Add("TYPE");
        dt.Columns.Add("LOCATION");
        //dt.Columns.Add("PURPOSE");
        //dt.Columns.Add("FIRING");
        //dt.Columns.Add("CAMP FEES");

        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["CAMP NAME"] = GridView1.Rows[i].Cells[0].Text;
            dr["DESCRIPTION"] = GridView1.Rows[i].Cells[1].Text;
            dr["START DATE"] = GridView1.Rows[i].Cells[2].Text;
            dr["END DATE"] = GridView1.Rows[i].Cells[3].Text;
            dr["DURATION"] = GridView1.Rows[i].Cells[4].Text;
            //dr["TYPE"] = GridView1.Rows[i].Cells[5].Text;
            dr["LOCATION"] = GridView1.Rows[i].Cells[6].Text;
            //dr["PURPOSE"] = GridView1.Rows[i].Cells[7].Text;
            //dr["FIRING"] = GridView1.Rows[i].Cells[8].Text;
            //dr["CAMP FEES"] = GridView1.Rows[i].Cells[9].Text;
            dt.Rows.Add(dr);

        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();
        Response.AddHeader("content-disposition", string.Format("attachment;filename=camps.docs", "AllColumn"));
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
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    String str = "select * from camp where camp_type=" + "'" + DropDownList1.SelectedValue + "'";
    //    SqlCommand cmd1 = new SqlCommand(str, con);
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    DataTable dt = new DataTable();
    //    da = new SqlDataAdapter(cmd1);
    //    da.Fill(dt);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();

    //    Label4.Text = "Search results for " + DropDownList1.Text;
    //}



    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date > DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.Gray;

            // e.Cell.Font.Strikeout = true;
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



    protected void Button4_Click(object sender, EventArgs e)
    {
        String str = "select * from camp where camp_startingdate=" + "'" + TextBox1.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = "Search results for " + TextBox1.Text;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        //DropDownList1.ClearSelection();
        TextBox1.Text = string.Empty;
        Label4.Text = "";
    }


    internal class BaseColor : Color
    {
        public BaseColor(System.Drawing.Color color) : base(color)
        {
        }
    }
}