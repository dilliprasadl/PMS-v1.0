using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PMS1
{
    public partial class newclientprocess : System.Web.UI.Page
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
                    SqlCommand com = new SqlCommand("spviewprocess", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Processid", txtpid.Text);
                    com.Parameters.AddWithValue("@Processname", txtpname.Text);
                    com.Parameters.AddWithValue("@Owner", txtowner.Text);
                    com.Parameters.AddWithValue("@Startdate", txtSdate.Text);

                    com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());

                    // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();

                    con.Close();



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'newclientprocess.aspx'", true);

                }
                        
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        
    }
}