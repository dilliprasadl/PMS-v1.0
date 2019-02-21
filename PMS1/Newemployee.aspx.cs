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
        Employee_entity empenty = new Employee_entity();

        object employeeSequenceId;
        DataSet dtst;
        int empid;

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request.QueryString.Count>0)
                {
                    btnbutton.Visible = false;
                    btn_update.Visible = true;

                    Get_emp_data_to_update();
                }

                else
                {
                    btnbutton.Visible = true;
                    btn_update.Visible = false;
                    GetEmpSeq();
                }
            }

        }

        private void Get_emp_data_to_update()
        {
           ViewState["empid"] = empid = Convert.ToInt32(Request.QueryString["empid"].ToString());

                    using (dtst = bal.Getempedit(empid))
                    {
                        txtfname.Text = dtst.Tables[0].Rows[0]["firstname"].ToString();
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
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "viewlang"; //Stored Procedure Name
                com.Parameters.AddWithValue("@Employeeid",Convert.ToInt32(ViewState["empseque"]));
            
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

           
             ViewState["empseque"] =  employeeSequenceId = bal.EmpSequenceId();
          
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        entty.language = txtlknown.Text;
        //        entty.experties = rblelevel.SelectedItem.ToString();
        //        entty.userid = Convert.ToInt32(Session["User_id"]);
        //        entty.Empsequence = Convert.ToInt32(ViewState["empseque"].ToString());
        //        int result = bal.langes_insert(entty);
        //      if (result==1)
        //      {
        //            Bindlang();
        //      }

               
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {

                empenty.FirstName = txtfname.Text;
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
                int update = bal.empudate(empenty,Convert.ToInt32(ViewState["empid"].ToString()));

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully updated!');window.location.href = 'Newemployee.aspx'", true);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


     
    }
        
    }

