using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace PMS1
{
    public partial class client_view : System.Web.UI.Page
    {
        private void BindGrid()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS V1.0;Integrated Security=True");
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "viewlender"; //Stored Procedure Name
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();

                Grd_downlod1.DataSource = ds;
                Grd_downlod1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                com.Dispose();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();

        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {



            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnexcel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.ClearContent();
                // Specify the default file name using "content-disposition" RESPONSE header
                Response.AppendHeader("content-disposition", "attachment; filename=lenders.xls");
                // Set excel as the HTTP MIME type
                Response.ContentType = "application/excel";
                // Create an instance of stringWriter for writing information to a string
                StringWriter stringWriter = new StringWriter();
                // Create an instance of HtmlTextWriter class for writing markup 
                // characters and text to an ASP.NET server control output stream
                HtmlTextWriter htw = new HtmlTextWriter(stringWriter);


                Grd_downlod1.RenderControl(htw);
                Response.Write(stringWriter.ToString());
                Response.End();
            }


            catch (Exception ex)
            {

                throw ex;
            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void btnword_Click(object sender, EventArgs e)
        {
            try
            {
                Response.ClearContent();
                // Specify the default file name using "content-disposition" RESPONSE header
                Response.AppendHeader("content-disposition", "attachment; filename=lenders.doc");
                // Set excel as the HTTP MIME type
                Response.ContentType = "application/word";
                // Create an instance of stringWriter for writing information to a string
                StringWriter stringWriter = new StringWriter();
                // Create an instance of HtmlTextWriter class for writing markup 
                // characters and text to an ASP.NET server control output stream
                HtmlTextWriter htw = new HtmlTextWriter(stringWriter);


                Grd_downlod1.RenderControl(htw);
                Response.Write(stringWriter.ToString());
                Response.End();
            }


            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Action to Edit")
                {
                    string[] splitdata = e.CommandArgument.ToString().Split(',');


                    int id = Convert.ToInt16(splitdata[0].ToString());


                    Response.Redirect("lender_registration.aspx?lenderid=" + id, false);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}