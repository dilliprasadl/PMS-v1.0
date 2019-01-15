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
              //  Grd_downlod.Visible = false;


                //ViewState["dirState"] = ds;
                //ViewState["sortdr"] = "Asc";

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
        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    try
        //    {
        //        GridView1.EditIndex = e.NewEditIndex;
        //        BindGrid();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}
        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    BindGrid();
        //}
        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    try
        //    {


        //        TextBox txtfirstname = GridView1.Rows[e.RowIndex].FindControl("txtfname") as TextBox;
        //        TextBox txtMiddlename = GridView1.Rows[e.RowIndex].FindControl("txtlname") as TextBox;
        //        TextBox txtGender = GridView1.Rows[e.RowIndex].FindControl("txtgender") as TextBox;

        //        TextBox txtDateofBirthday = GridView1.Rows[e.RowIndex].FindControl("txtdobirth") as TextBox;
        //        TextBox txtMobilenumber = GridView1.Rows[e.RowIndex].FindControl("txtmnumber") as TextBox;
        //        TextBox txtAlternateMobilenumber = GridView1.Rows[e.RowIndex].FindControl("txtanumber") as TextBox;
        //        TextBox txtEmail = GridView1.Rows[e.RowIndex].FindControl("txteid") as TextBox;
        //        TextBox txtAlternateEmail = GridView1.Rows[e.RowIndex].FindControl("txtaemail") as TextBox;
        //        TextBox txtfathername = GridView1.Rows[e.RowIndex].FindControl("txtfaname") as TextBox;
        //        TextBox txtmothername = GridView1.Rows[e.RowIndex].FindControl("txtmname") as TextBox;
        //        TextBox txtAadhaarno = GridView1.Rows[e.RowIndex].FindControl("txtacno") as TextBox;
        //        TextBox txtPannumber = GridView1.Rows[e.RowIndex].FindControl("txtpcno") as TextBox;
        //        TextBox txtPassportno = GridView1.Rows[e.RowIndex].FindControl("txtpno") as TextBox;
        //        TextBox txtusername = GridView1.Rows[e.RowIndex].FindControl("txtuname") as TextBox;

        //        TextBox txtpassword = GridView1.Rows[e.RowIndex].FindControl("txtpwd") as TextBox;
        //        TextBox txtlanguageknown = GridView1.Rows[e.RowIndex].FindControl("txtlknown") as TextBox;

        //        TextBox txtexpertiselevel = GridView1.Rows[e.RowIndex].FindControl("txtelevel") as TextBox;
        //        TextBox txtpho = GridView1.Rows[e.RowIndex].FindControl("txtphoto") as TextBox;
        //        TextBox txtotherfiles = GridView1.Rows[e.RowIndex].FindControl("txtotfiles") as TextBox;
        //        TextBox txtresidencealine1 = GridView1.Rows[e.RowIndex].FindControl("txtrline1") as TextBox;

        //        TextBox txtresidencealine2 = GridView1.Rows[e.RowIndex].FindControl("txtrline2") as TextBox;
        //        TextBox txtrecity = GridView1.Rows[e.RowIndex].FindControl("txtrcity") as TextBox;

        //        TextBox txtrestate = GridView1.Rows[e.RowIndex].FindControl("txtrstate") as TextBox;
        //        TextBox txtrezipcode = GridView1.Rows[e.RowIndex].FindControl("txtrzcode") as TextBox;
        //        TextBox txtpealine1 = GridView1.Rows[e.RowIndex].FindControl("txtpline1") as TextBox;

        //        TextBox txtpealine2 = GridView1.Rows[e.RowIndex].FindControl("txtpline2") as TextBox;
        //        TextBox txtpecity = GridView1.Rows[e.RowIndex].FindControl("txtpcity") as TextBox;

        //        TextBox txtpestate = GridView1.Rows[e.RowIndex].FindControl("txtpstate") as TextBox;
        //        TextBox txtpezipcode = GridView1.Rows[e.RowIndex].FindControl("txtpzcode") as TextBox;

        //        TextBox txtofaline1 = GridView1.Rows[e.RowIndex].FindControl("txtoline1") as TextBox;

        //        TextBox txtofaline2 = GridView1.Rows[e.RowIndex].FindControl("txtoline2") as TextBox;
        //        TextBox txtofcity = GridView1.Rows[e.RowIndex].FindControl("txtocity") as TextBox;

        //        TextBox txtofstate = GridView1.Rows[e.RowIndex].FindControl("txtostate") as TextBox;
        //        TextBox txtofzipcode = GridView1.Rows[e.RowIndex].FindControl("txtozcode") as TextBox;






        //        HiddenField hdnempid = GridView1.Rows[e.RowIndex].FindControl("hdn_empid") as HiddenField;

        //        int id = Convert.ToInt16(hdnempid.Value.ToString());


        //        SqlCommand cmd = new SqlCommand("updateemp", con);
        //        cmd.CommandType = CommandType.StoredProcedure;

        //        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
        //        cmd.Parameters.AddWithValue("@lastname", txtMiddlename.Text);

        //        cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
        //        cmd.Parameters.AddWithValue("@DateofBirthday", txtDateofBirthday.Text);
        //        cmd.Parameters.AddWithValue("@Mobilenumber", txtMobilenumber.Text);
        //        cmd.Parameters.AddWithValue("@Alternatenumber", txtAlternateMobilenumber.Text);
        //        cmd.Parameters.AddWithValue("@Emailid", txtEmail.Text);
        //        cmd.Parameters.AddWithValue("@AlternateEmail", txtAlternateEmail.Text);
        //        cmd.Parameters.AddWithValue("@Fathername", txtfathername.Text);
        //        cmd.Parameters.AddWithValue("@Mothername", txtmothername.Text);
        //        cmd.Parameters.AddWithValue("@AadhaarCardNo", txtAadhaarno.Text);
        //        cmd.Parameters.AddWithValue("@PanCardNo", txtPannumber.Text);
        //        cmd.Parameters.AddWithValue("@PassportNo", txtPassportno.Text);
        //        cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
        //        cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
        //        cmd.Parameters.AddWithValue("@LanguageKnown", txtlanguageknown.Text);
        //        cmd.Parameters.AddWithValue("@ExpertiseLevel", txtexpertiselevel.Text);
        //        cmd.Parameters.AddWithValue("@photo", txtpho.Text);
        //        cmd.Parameters.AddWithValue("@Otherfiles", txtotherfiles.Text);
        //        cmd.Parameters.AddWithValue("@RAddressLine1", txtresidencealine1.Text);
        //        cmd.Parameters.AddWithValue("@RAddressLine2", txtresidencealine2.Text);
        //        cmd.Parameters.AddWithValue("@RCity", txtrecity.Text);
        //        cmd.Parameters.AddWithValue("@RState", txtrestate.Text);
        //        cmd.Parameters.AddWithValue("@RZipCode", txtrezipcode.Text);
        //        cmd.Parameters.AddWithValue("@PAddressLine1", txtpealine1.Text);
        //        cmd.Parameters.AddWithValue("@PAddressLine2", txtpealine2.Text);
        //        cmd.Parameters.AddWithValue("@PCity", txtpecity.Text);
        //        cmd.Parameters.AddWithValue("@PState", txtpestate.Text);
        //        cmd.Parameters.AddWithValue("@PZipCode", txtpezipcode.Text);
        //        cmd.Parameters.AddWithValue("@OAddressLine1", txtofaline1.Text);
        //        cmd.Parameters.AddWithValue("@OAddressLine2", txtofaline2.Text);
        //        cmd.Parameters.AddWithValue("@OCity", txtofcity.Text);
        //        cmd.Parameters.AddWithValue("@OState", txtofstate.Text);
        //        cmd.Parameters.AddWithValue("@OZipCode", txtofzipcode.Text);
        //        cmd.Parameters.AddWithValue("@Employeeid", id);

        //        int i = cmd.ExecuteNonQuery();
        //        con.Close();

        //        if (i > 0)
        //        {
        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully update!');", true);
        //        }

        //        GridView1.EditIndex = -1;
        //        BindGrid();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }


        //}
        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{

        //    try
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("isactive_Employeetable", con);
        //        cmd.CommandType = CommandType.StoredProcedure;


        //        HiddenField hdnempid = GridView1.Rows[e.RowIndex].FindControl("hdn_empid") as HiddenField;
        //        int id = Convert.ToInt16(hdnempid.Value.ToString());
        //        cmd.Parameters.AddWithValue("@empid", id);
        //        int i = cmd.ExecuteNonQuery();







        //        con.Close();
        //        if (i > 0)
        //        {
        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Deleted!');", true);
        //        }

        //        BindGrid();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}



        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    try
        //    {

                

              

        //        }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    try
        //    {
        //        GridView1.PageIndex = e.NewPageIndex;
        //        BindGrid();
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }

           

        //}

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    try
        //    {
        //        if (e.Row.RowType == DataControlRowType.DataRow)
        //        {
        //            HiddenField empId = e.Row.FindControl("hdn_empid") as HiddenField;

        //            DataList langdatalist = e.Row.FindControl("dtlst_language") as DataList;

        //            using (DataTable dt = bal.GetEmpLagByEmpId(Convert.ToInt32(empId.Value.ToString())))
        //            {
        //                langdatalist.DataSource = dt;
        //                langdatalist.DataBind();
        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        //protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        //{
        //    DataTable dtrslt = (DataTable)ViewState["dirState"];
        //    if (dtrslt.Rows.Count > 0)
        //    {
        //        if (Convert.ToString(ViewState["sortdr"]) == "Asc")
        //        {
        //            dtrslt.DefaultView.Sort = e.SortExpression + " Desc";
        //            ViewState["sortdr"] = "Desc";
        //        }
        //        else
        //        {
        //            dtrslt.DefaultView.Sort = e.SortExpression + " Asc";
        //            ViewState["sortdr"] = "Asc";
        //        }
        //        GridView1.DataSource = dtrslt;
        //        GridView1.DataBind();

        //    }
        //}

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


                    int enpid = Convert.ToInt16(splitdata[0].ToString());
                    int isact = Convert.ToInt16(splitdata[1].ToString());

                    Response.Redirect("Newemployee.aspx?empid=" + enpid, false);
                }
            }
            catch(Exception ex)
            {
                throw ex;

            }


        }
        
    }
            }
        
    
       


