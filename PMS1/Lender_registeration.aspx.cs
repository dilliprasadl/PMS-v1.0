using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace PMS1
{
    public partial class Client_registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
                {
                    /* con.Open();
                     SqlCommand cmd= new SqlCommand("insert into reg values(@Username,@Email,@Password,@ConfirmPassword");
                     cmd.Parameters.AddWithValue("Username", txtuname.Text);
                     cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                     cmd.Parameters.AddWithValue("Password", txtPwd.Text);
                     cmd.ExecuteNonQuery();
                     txtuname.Text = "";
                     txtEmail.Text = "";
                     txtPwd.Text = "";
                     txtuname.Focus();*/
                    SqlCommand com = new SqlCommand("newlender", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@LenderName", txtlname.Text);
                    com.Parameters.AddWithValue("@LenderCode", txtlcode.Text);
                    com.Parameters.AddWithValue("@ManagerName", txtmaname.Text);
                    com.Parameters.AddWithValue("@MobileNumber", txtmnumber.Text);
                    com.Parameters.AddWithValue("@AlternateNumber", txtanumber.Text);
                    com.Parameters.AddWithValue("@Emailid", txtemailid.Text);
                    com.Parameters.AddWithValue("@AlternateEmail", txtaemail.Text);
                    com.Parameters.AddWithValue("@ContactName", txtcname.Text);
                    com.Parameters.AddWithValue("@BranchName", txtbname.Text);
                    com.Parameters.AddWithValue("@AddressLine1", txtaline1.Text);
                    com.Parameters.AddWithValue("@AddressLine2", txtaline2.Text);
                    com.Parameters.AddWithValue("@City", txtcity.Text);
                    com.Parameters.AddWithValue("@State", txtstate.Text);
                    com.Parameters.AddWithValue("@ZipCode", txtzcode.Text);
                    com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());
                    com.Parameters.AddWithValue("@result", SqlDbType.Int).Direction=ParameterDirection.Output;
                    // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();
                    int result = Convert.ToInt32(com.Parameters["@result"].Value);
                    con.Close();

                    if (result == 1)
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'Lender_registeration.aspx'", true);
                    }

                   else if (result == 0)
                    {
                        
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Already Excited with given emailid');window.location.href = 'Lender_registeration.aspx'", true);
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}

    
