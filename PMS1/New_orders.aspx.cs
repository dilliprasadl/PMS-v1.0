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
    public partial class New_orders : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
                {

                    SqlCommand com = new SqlCommand("insert_neworder", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;

                    com.Parameters.AddWithValue("@lender_name", lender_name.Text);
                    com.Parameters.AddWithValue("@branch", branch.Text);
                    com.Parameters.AddWithValue("@la_reference_no", la_reference_no.Text);
                    com.Parameters.AddWithValue("@la_name", la_name.Text);


                    com.Parameters.AddWithValue("@la_phonenumber", la_phonenumber.Text);
                    com.Parameters.AddWithValue("@la_email1", la_email1.Text);
                    com.Parameters.AddWithValue("@la_primaryadd1", la_primaryadd1.Text);
                    com.Parameters.AddWithValue("@la_primaryadd2", la_primaryadd2.Text);
                    com.Parameters.AddWithValue("@la_phonenumber2", la_phonenumber2.Text);
                    com.Parameters.AddWithValue("@la_email2", la_email2.Text);
                    com.Parameters.AddWithValue("@la_secondaryadd1", la_secondaryadd1.Text);
                    com.Parameters.AddWithValue("@la_secondaryadd2", la_secondaryadd2.Text);
                    com.Parameters.AddWithValue("@sales_rm_name", sales_rm_name.Text);
                    com.Parameters.AddWithValue("@scp_number", scp_number.Text);
                    com.Parameters.AddWithValue("@scp_email", scp_email.Text);
                    com.Parameters.AddWithValue("@ca_name", ca_name.Text);

                    com.Parameters.AddWithValue("@ca_phone", ca_phone.Text);
                    com.Parameters.AddWithValue("@ca_email", ca_email.Text);
                    com.Parameters.AddWithValue("@hls_info", hls_info.SelectedItem.ToString());



                    com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());

                    // com.Parameters.Add(sp4);
                    con.Open();
                    int output = com.ExecuteNonQuery();

                    con.Close();



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'New_orders.aspx'", true);

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}