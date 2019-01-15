using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PMS1
{
    public partial class Registation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
                {
                    
                    SqlCommand com = new SqlCommand("spinsertreg2", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter sp1 = new SqlParameter("@Username", txtuname.Text);
                    SqlParameter sp2 = new SqlParameter("@Email", txtEmail.Text);
                   SqlParameter sp3 = new SqlParameter("@Password", txtpassword.Text);
                  //SqlParameter sp4 = new SqlParameter("@ConfirmPassword", txtcpwd.Text);

                    com.Parameters.Add(sp1);
                    com.Parameters.Add(sp2);
                    com.Parameters.Add(sp3);
                   // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'Registation.aspx'", true);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
