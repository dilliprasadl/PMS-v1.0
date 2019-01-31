using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BAL;
using System.IO;
using System.Text;

namespace PMS1
{
    public partial class viewemployee : System.Web.UI.Page
    {
        Bal_connection bal = new Bal_connection();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
  

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
               


            }
        }
        private void BindGrid()
        {
            
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "viewemployee"; //Stored Procedure Name
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                Grd_downlod.DataSource = ds;
                Grd_downlod.DataBind();

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
                Response.AppendHeader("content-disposition", "attachment; filename=newemployees.xls");
                // Set excel as the HTTP MIME type
                Response.ContentType = "application/excel";
                // Create an instance of stringWriter for writing information to a string
                StringWriter stringWriter = new StringWriter();
                // Create an instance of HtmlTextWriter class for writing markup 
                // characters and text to an ASP.NET server control output stream
                HtmlTextWriter htw = new HtmlTextWriter(stringWriter);


                Grd_downlod.RenderControl(htw);
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
                Response.AppendHeader("content-disposition", "attachment; filename=newemployees.doc");
                // Set excel as the HTTP MIME type
                Response.ContentType = "application/word";
                // Create an instance of stringWriter for writing information to a string
                StringWriter stringWriter = new StringWriter();
                // Create an instance of HtmlTextWriter class for writing markup 
                // characters and text to an ASP.NET server control output stream
                HtmlTextWriter htw = new HtmlTextWriter(stringWriter);


                Grd_downlod.RenderControl(htw);
                Response.Write(stringWriter.ToString());
                Response.End();
            }


            catch (Exception ex)
            {

                throw ex;
            }

        }
        protected void btncsv_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("content-disposition",
                 "attachment;filename=newemployees.csv");
                Response.Charset = "";
                Response.ContentType = "application/text";

                Grd_downlod.AllowPaging = false;
                GridView1.DataBind();

                StringBuilder sb = new StringBuilder();
                for (int k = 0; k < Grd_downlod.Columns.Count; k++)
                {
                    //add separator
                    sb.Append(Grd_downlod.Columns[k].HeaderText + ',');
                }
                //append new line
                sb.Append("\r\n");
                for (int i = 0; i < Grd_downlod.Rows.Count; i++)
                {
                    for (int k = 0; k < Grd_downlod.Columns.Count; k++)
                    {
                        //add separator
                        sb.Append(Grd_downlod.Rows[i].Cells[k].Text + ',');
                    }
                    //append new line
                    sb.Append("\r\n");
                }
                Response.Output.Write(sb.ToString());
                Response.Flush();
                Response.End();
            }




            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void GridView1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.ToString() == "Active")
                {
                    string[] splitdata = e.CommandArgument.ToString().Split(',');


                    int enpid = Convert.ToInt16(splitdata[0].ToString());
                    int isact = Convert.ToInt16(splitdata[1].ToString());

                    con.Open();
                    SqlCommand cmd = new SqlCommand("isactive_Employeetable", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@isact", isact);

                    cmd.Parameters.AddWithValue("@empid", enpid);
                    cmd.Parameters.AddWithValue("@Result", SqlDbType.Int).Direction = ParameterDirection.Output;
                    int ioutpt = cmd.ExecuteNonQuery();

                    int result = Convert.ToInt32(cmd.Parameters["@Result"].Value);

                    con.Close();
                    if (result == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Activated !');", true);
                        BindGrid();
                    }

                    else if (result == 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully DeActivated !');", true);

                        BindGrid();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Failed !');", true);
                    }


                }

                else if (e.CommandName.ToString() == "ActiontoEdit")
                {
                    string[] splitdata = e.CommandArgument.ToString().Split(',');


                    int empid = Convert.ToInt16(splitdata[0].ToString());
                    int isact = Convert.ToInt16(splitdata[1].ToString());

                    Response.Redirect("Newemployee.aspx?empid=" + empid, false);
                }
                else if (e.CommandName.ToString()=="ResetPassword")
                {
                    string[] splitdata = e.CommandArgument.ToString().Split(',');
                    int empid = Convert.ToInt16(splitdata[0].ToString());
                    Response.Redirect("Resetpassword.aspx?employeeid=" + empid, false);
                }
            }
            catch(Exception ex)
            {
                throw ex;

            }


        }
        
    }
            }
        
    
       


