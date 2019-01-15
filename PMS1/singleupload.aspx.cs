using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
    

namespace PMS1
{
    public partial class Mypipeline : System.Web.UI.Page
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
                    //SqlCommand com = new SqlCommand("insert_singleupload", con);
                    //com.CommandType = System.Data.CommandType.StoredProcedure;
                    //com.Parameters.AddWithValue("@Lendername", DropDownList1.SelectedItem.ToString());
                    //com.Parameters.AddWithValue("@Branchname", txtbname.Text);
                    //com.Parameters.AddWithValue("@Orderreceiveddate", txtord.Text);
                    //com.Parameters.AddWithValue("@Oredrreceivedtime", txtort.Text);
                    //com.Parameters.AddWithValue("@LAreferenceno", txtrn.Text);
                    //com.Parameters.AddWithValue("@LAname", txtlname.Text);
                    //com.Parameters.AddWithValue("@CAcontactdetailes", txtcd.Text);
                    //com.Parameters.AddWithValue("@CAadditionaldetailes", txtad.Text);
                    SqlCommand com = new SqlCommand("insert_singleupload", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;

                    com.Parameters.AddWithValue("@LenderName", txtlename.Text);
                    com.Parameters.AddWithValue("@Branch", txtbranch.Text);
                    com.Parameters.AddWithValue("@LAreferenceNo", txtlarnumber.Text);
                    com.Parameters.AddWithValue("@Loanapplicationname", txtlaname.Text);


                    com.Parameters.AddWithValue("@Phonenumber", txtpnumber.Text);
                    com.Parameters.AddWithValue("@Primaryemailid", txteid.Text);
                    com.Parameters.AddWithValue("@Primaryaddress", txtpaddress.Text);

                    com.Parameters.AddWithValue("@Secondaryphonenumber", txtphnumber.Text);
                    com.Parameters.AddWithValue("@Secondaryemailid", txtsemid.Text);
                    com.Parameters.AddWithValue("@Secondaryaddress", txtsaddress.Text);

                    com.Parameters.AddWithValue("@Salesrmname", txtsrmname.Text);
                    com.Parameters.AddWithValue("@Salescontactphonenumber", txtscpnumber.Text);
                    com.Parameters.AddWithValue("@Salesemailid", txtsemailid.Text);
                    com.Parameters.AddWithValue("@CAname", txtcaname.Text);

                    com.Parameters.AddWithValue("@CAphonedetails", txtcapdetails.Text);
                    com.Parameters.AddWithValue("@CAemailid", txtcaeid.Text);
                    com.Parameters.AddWithValue("@Haslendersalesinformed", ddlselect.SelectedItem.ToString());



                    com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());
                    
                    // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();
                   
                    con.Close();

                  

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'singleupload.aspx'", true);
                    
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
    }
