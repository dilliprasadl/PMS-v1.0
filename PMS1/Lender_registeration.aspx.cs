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
                    SqlCommand com = new SqlCommand("newlender", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@lender_name", lender_name.Text);
                    com.Parameters.AddWithValue("@lender_code", lender_code.Text);
                    com.Parameters.AddWithValue("@manager_name", manager_name.Text);
                    com.Parameters.AddWithValue("@manager_number", manager_number.Text);
                    com.Parameters.AddWithValue("@lc_number", lc_number.Text);
                    com.Parameters.AddWithValue("@manager_email", manager_email.Text);
                    com.Parameters.AddWithValue("@lc_email", lc_email.Text);
                    com.Parameters.AddWithValue("@contact_name", contact_name.Text);
                    com.Parameters.AddWithValue("@designation", designation.Text);
                    com.Parameters.AddWithValue("@branch_name", branch_name.Text);
                    com.Parameters.AddWithValue("@branch_add", branch_add.Text);
                    com.Parameters.AddWithValue("@branch_add2", branch_add2.Text);
                    com.Parameters.AddWithValue("@branch_city", branch_city.Text);
                    com.Parameters.AddWithValue("@branch_state", branch_state.Text);
                    com.Parameters.AddWithValue("@branch_zip", branch_zip.Text);
                    com.Parameters.AddWithValue("@branch_country", branch_country.Text);
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

    
