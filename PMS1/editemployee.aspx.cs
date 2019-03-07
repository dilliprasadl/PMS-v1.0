using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using BAL;
using PmsEntity;

namespace PMS1
{
    public partial class editemployee : System.Web.UI.Page
    {
        Bal_connection bal = new Bal_connection();

        subject_enty entty = new subject_enty();
        Employee_entity empenty = new Employee_entity();

        object employeeSequenceId;
        DataSet dtst;
        int empid;

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_emp_data_to_update();
                GetEmpSeq();
            } 
        }

        private void Get_emp_data_to_update()
        {
            ViewState["empid"] = empid = Convert.ToInt32(Request.QueryString["empid"].ToString());

            using (dtst = bal.Getempedit(empid))
            {
                fname.Text = dtst.Tables[0].Rows[0]["firstname"].ToString();
                txtlaname.Text = dtst.Tables[0].Rows[0]["Lastname"].ToString();
                ddlselect.SelectedValue = dtst.Tables[0].Rows[0]["Gender"].ToString();
                txtdob.Text = dtst.Tables[0].Rows[0]["DateofBirthday"].ToString();
                txtmnumber.Text = dtst.Tables[0].Rows[0]["Mobilenumber"].ToString();
                txtanumber.Text = dtst.Tables[0].Rows[0]["Alternatenumber"].ToString();
                txtemail.Text = dtst.Tables[0].Rows[0]["Emailid"].ToString();
                txtaemail.Text = dtst.Tables[0].Rows[0]["AlternateEmail"].ToString();
                txtfaname.Text = dtst.Tables[0].Rows[0]["Fathername"].ToString();
                txtmoname.Text = dtst.Tables[0].Rows[0]["Mothername"].ToString();
                txtacno.Text = dtst.Tables[0].Rows[0]["AadhaarCardNo"].ToString();
                txtpcno.Text = dtst.Tables[0].Rows[0]["PanCardNo"].ToString();
                txtpassno.Text = dtst.Tables[0].Rows[0]["PassportNo"].ToString();
                txtuname.Text = dtst.Tables[0].Rows[0]["UserName"].ToString();
                txtpwd.Text = dtst.Tables[0].Rows[0]["password"].ToString();
                txtraline1.Text = dtst.Tables[0].Rows[0]["RAddressLine1"].ToString();
                txtraline2.Text = dtst.Tables[0].Rows[0]["RAddressLine2"].ToString();
                txtrcity.Text = dtst.Tables[0].Rows[0]["RCity"].ToString();
                txtrstate.Text = dtst.Tables[0].Rows[0]["RState"].ToString();
                txtrzcode.Text = dtst.Tables[0].Rows[0]["RZipCode"].ToString();
                txtrcountry.Text = dtst.Tables[0].Rows[0]["RCountry"].ToString();
                txtpaline1.Text = dtst.Tables[0].Rows[0]["PAddressLine1"].ToString();
                txtpaline2.Text = dtst.Tables[0].Rows[0]["PAddressLine2"].ToString();
                txtpcity.Text = dtst.Tables[0].Rows[0]["PCity"].ToString();
                txtpstate.Text = dtst.Tables[0].Rows[0]["PState"].ToString();
                txtpzcode.Text = dtst.Tables[0].Rows[0]["PZipCode"].ToString();
                txtpcountry.Text = dtst.Tables[0].Rows[0]["PCountry"].ToString();
                txtoaline1.Text = dtst.Tables[0].Rows[0]["OAddressLine1"].ToString();
                txtoaline2.Text = dtst.Tables[0].Rows[0]["OAddressLine2"].ToString();
                txtocity.Text = dtst.Tables[0].Rows[0]["OCity"].ToString();
                txtostate.Text = dtst.Tables[0].Rows[0]["OState"].ToString();
                txtozcode.Text = dtst.Tables[0].Rows[0]["OZipCode"].ToString();
                txtocountry.Text = dtst.Tables[0].Rows[0]["OCountry"].ToString();
            }
  
        }
        private void Bindlang()
        {
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "viewlang"; //Stored Procedure Name
                com.Parameters.AddWithValue("@Employeeid", Convert.ToInt32(ViewState["empseque"]));

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                //gv1.DataSource = ds;
                //gv1.DataBind();




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
        private void GetEmpSeq()
        {


            ViewState["empseque"] = employeeSequenceId = bal.EmpSequenceId();

        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {

                empenty.FirstName = fname.Text;
                empenty.LastName = txtlaname.Text;
                empenty.Gender = ddlselect.SelectedItem.Text;
                empenty.DateOfBirth = txtdob.Text;
                empenty.MobileNumber = txtmnumber.Text;
                empenty.AlternateNumber = txtanumber.Text;
                empenty.EmailId = txtemail.Text;
                empenty.AlternateEmail = txtaemail.Text;
                empenty.FatherName = txtfaname.Text;
                empenty.MotherName = txtmoname.Text;
                empenty.AadhaarCardNo = txtacno.Text;
                empenty.PanCardNo = txtpcno.Text;
                empenty.PassportNo = txtpassno.Text;
                empenty.UserName = txtuname.Text;
                empenty.Password = txtpwd.Text;
                empenty.RAddressLine1 = txtraline1.Text;
                empenty.RAddressLine2 = txtraline2.Text;
                empenty.RCity = txtrcity.Text;
                empenty.RState = txtrstate.Text;
                empenty.RZipCode = txtrzcode.Text;
                empenty.RCountry = txtrcountry.Text;
                empenty.PAddressLine1 = txtraline1.Text;
                empenty.PAddressLine2 = txtpaline2.Text;
                empenty.PCity = txtpcity.Text;
                empenty.PState = txtpstate.Text;
                empenty.PZipCode = txtpzcode.Text;
                empenty.PCountry = txtpcountry.Text;
                empenty.OAddressLine1 = txtoaline1.Text;
                empenty.OAddressLine2 = txtoaline2.Text;
                empenty.OCity = txtocity.Text;
                empenty.OState = txtostate.Text;
                empenty.OZipCode = txtozcode.Text;
                empenty.OCountry = txtocountry.Text;
                int update = bal.empudate(empenty, Convert.ToInt32(ViewState["empid"].ToString()));

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully updated!');window.location.href = 'Newemployee.aspx'", true);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private string MimeType(string v)
        {
            throw new NotImplementedException();
        }
        protected void btndownloadfile_Click(object sender, EventArgs e)
        {
            try
            {


                string filename = MapPath(ViewState["filepath"].ToString());
                Response.ContentType = "applicatin/doc";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");

                Response.TransmitFile(filename);
                Response.End();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Downloaded!');", true);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        protected void btndownload_Click(object sender, EventArgs e)
        {
            try
            {


                string filename = MapPath(ViewState["imgpath"].ToString());
                Response.ContentType = "image/JPEG";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename + "");

                Response.TransmitFile(filename);
                Response.End();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Downloaded!');", true);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
            
    
