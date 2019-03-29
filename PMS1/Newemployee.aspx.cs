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
    public partial class Newemployee : System.Web.UI.Page
    {

        Bal_connection bal = new Bal_connection();
        subject_enty entty = new subject_enty();
        object employeeSequenceId;

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ViewState["Langadd"] = "0";
                ViewState["Langadd"] = "2";
            }
            else
            {
                ViewState["Langadd"] = "1";
            }
        }
        protected void btnbutton_Click(object sender, EventArgs e)
        {
            try
            {

                upload_photo();
                uploadfile();
                    SqlCommand com = new SqlCommand("insert_newemployee", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@firstname", txtfname.Text);
                    com.Parameters.AddWithValue("@Lastname", txtlaname.Text);
                    com.Parameters.AddWithValue("@Gender", ddlselect.SelectedValue.ToString());
                    com.Parameters.AddWithValue("@DateofBirthday", txtdob.Text);
                    com.Parameters.AddWithValue("@Mobilenumber", txtmnumber.Text);
                    com.Parameters.AddWithValue("@Alternatenumber", txtanumber.Text);
                    com.Parameters.AddWithValue("@Emailid", txtemail.Text);
                    com.Parameters.AddWithValue("@AlternateEmail", txtaemail.Text);
                    com.Parameters.AddWithValue("@Fathername", txtfaname.Text);
                    com.Parameters.AddWithValue("@Mothername", txtmoname.Text);
                    com.Parameters.AddWithValue("@AadhaarCardNo", txtacno.Text);
                    com.Parameters.AddWithValue("@PanCardNo", txtpcno.Text);
                    com.Parameters.AddWithValue("@PassportNo", txtpassno.Text);
                    com.Parameters.AddWithValue("@UserName", txtuname.Text);
                    com.Parameters.AddWithValue("@password", txtpwd.Text);
                    com.Parameters.AddWithValue("@photo", ((ViewState["photoupload"].ToString() == null || ViewState["photoupload"].ToString() == "") ? "-" : ViewState["photoupload"].ToString()));
                    com.Parameters.AddWithValue("@Otherfiles", ((ViewState["fileupload"].ToString() == null || ViewState["fileupload"].ToString() == "" ) ? "-" : ViewState["fileupload"].ToString()));
                    com.Parameters.AddWithValue("@RAddressLine1", txtraline1.Text);
                    com.Parameters.AddWithValue("@RAddressLine2", txtraline2.Text);
                    com.Parameters.AddWithValue("@RCity", txtrcity.Text);
                    com.Parameters.AddWithValue("@RState", txtrstate.Text);
                    com.Parameters.AddWithValue("@RZipCode", txtrzcode.Text);
                   com.Parameters.AddWithValue("@RCountry", txtrcountry.Text);
                    com.Parameters.AddWithValue("@PAddressLine1", txtpaline1.Text);
                    com.Parameters.AddWithValue("@PAddressLine2", txtpaline2.Text);
                    com.Parameters.AddWithValue("@PCity", txtpcity.Text);
                    com.Parameters.AddWithValue("@PState", txtpstate.Text);
                    com.Parameters.AddWithValue("@PZipCode", txtpzcode.Text);
                   com.Parameters.AddWithValue("@PCountry", txtpcountry.Text);
                   com.Parameters.AddWithValue("@OAddressLine1", txtoaline1.Text);
                    com.Parameters.AddWithValue("@OAddressLine2", txtoaline2.Text);
                    com.Parameters.AddWithValue("@OCity", txtocity.Text);
                    com.Parameters.AddWithValue("@OState", txtostate.Text);
                    com.Parameters.AddWithValue("@OZipCode", txtozcode.Text);
                     com.Parameters.AddWithValue("@OCountry", txtocountry.Text);
                     com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());
                    com.Parameters.AddWithValue("@EmployeeId",Convert.ToInt32(ViewState["empseque"]));
                    com.Parameters.AddWithValue("@result", SqlDbType.Int).Direction = ParameterDirection.Output;
                    // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();
                    int result = Convert.ToInt32(com.Parameters["@result"].Value);
                    con.Close();

                    if (result == 1)
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'Newemployee.aspx'", true);
                    }

                    else if (result == 0)
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email Already Exist');", true);
                    }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
private void upload_photo()
    {
            if (uploadphoto.HasFile)
            {
                try
                {
                    string photoupload = Path.GetFileName(uploadphoto.FileName);

                    string photo_upload = DateTime.Now.ToString("yyyyMMddHHmmssfff") + photoupload ;
                    ViewState["photoupload"] = photo_upload;


                    uploadphoto.SaveAs(Server.MapPath("~/photoupload/") + photo_upload);


                    //string s = "1";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Only doc files are accepted!');", true);
                    
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Exception : " + ex + "');", true);
                }
            }

        }

        private void uploadfile()
        {
            if (Uploadofiles.HasFile)
            {
                try
                {
                    string file_upload = Path.GetFileName(Uploadofiles.FileName);

                    string upload_file = DateTime.Now.ToString("yyyyMMddHHmmssfff") + file_upload ;
                    ViewState["fileupload"] = upload_file;
                    Uploadofiles.SaveAs(Server.MapPath("~/otherfileupload/") + upload_file);

                    //string s = "2";
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Exception : " + ex + "');", true);
                }
            }

        }
        private void Bindlang()
        {
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "viewlang";
                if (ViewState["Langadd"].ToString() == "1")
                {
                    com.Parameters.AddWithValue("@Employeeid", Convert.ToInt32(ViewState["empseque"]));
                }
                else if (ViewState["Langadd"].ToString() == "2")
                {
                    com.Parameters.AddWithValue("@Employeeid", Convert.ToInt32(ViewState["empid"]));
                }
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable ds = new DataTable();
                da.Fill(ds);
                langrepeater.DataSource = ds;
                langrepeater.DataBind();
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
        private void AddLanguages(string languageName, string languEcperti)

        {

            try
            {
                entty.language = languageName;
                entty.experties = languEcperti;
                entty.userid = Convert.ToInt32(Session["User_id"]);
                #region while new employee registration condition comes adding languages for employee id
                if (ViewState["Langadd"].ToString() == "1")
                {
                    entty.Empsequence = Convert.ToInt32(ViewState["empseque"].ToString());
                }
                #endregion
                #region while update condition comes adding languages for  existing employee id
                else if (ViewState["Langadd"].ToString() == "2")
                {
                    entty.Empsequence = Convert.ToInt32(ViewState["empid"].ToString());
                }
                #endregion
                int result = bal.langes_insert(entty);
                if (result == 1)
                {
                    Bindlang();
                }
                else if (result == 2)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Already Excited with given languagename');", true);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private void GetEmpseq()
        {
               ViewState["empseque"] = employeeSequenceId = bal.EmpSequenceId();
        
        }
        #region language adding
        protected void Button1_Click(object sender, EventArgs e)

        {
            try
            {
                string languageName = ddlalan1.SelectedValue.ToString();
                string languEcperti = ddleleveladdleng.SelectedValue.ToString();
                AddLanguages(languageName, languEcperti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion
        protected void langrepeater_ItemCommand(object source, RepeaterCommandEventArgs e)

        {

            try

            {



                if (e.CommandName.ToString() == "delete")

                {
                    string[] splitdata = e.CommandArgument.ToString().Split('^');
                    int sno = Convert.ToInt16(splitdata[0].ToString());
                    int empId = Convert.ToInt16(splitdata[1].ToString());
                    int deoutpt = bal.Delete_Lang(sno, empId);

                    Bindlang();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

    }
}
        
    

