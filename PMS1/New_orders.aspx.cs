using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BAL;
using PmsEntity;

namespace PMS1
{
    public partial class New_orders : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        Bal_connection bal = new Bal_connection();
        order_entity orentity = new order_entity();
        int order_id;
        DataSet dtst;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString.Count > 0)
                {
                    btnsubmit.Visible = false;
                    btn_update.Visible = true;

                    Get_Order_data_to_update();
                }
                else
                {
                    btn_update.Visible = false;
                    btnsubmit.Visible = true;
                }
            }
        }
        private void Get_Order_data_to_update()
        {
            ViewState["order_id"] = order_id = Convert.ToInt32(Request.QueryString["order_id"].ToString());
            using (dtst = bal.Getorderedit(order_id))

            {

                lender_name.Text = dtst.Tables[0].Rows[0]["lender_name"].ToString();
                branch.Text = dtst.Tables[0].Rows[0]["branch"].ToString();
                //ddlselect.SelectedValue = dtst.Tables[0].Rows[0]["Gender"].ToString();
                la_reference_no.Text = dtst.Tables[0].Rows[0]["la_reference_no"].ToString();
                la_name.Text = dtst.Tables[0].Rows[0]["la_name"].ToString();
                la_phonenumber.Text = dtst.Tables[0].Rows[0]["la_phonenumber"].ToString();
                la_email1.Text = dtst.Tables[0].Rows[0]["la_email1"].ToString();
                la_primaryadd1.Text = dtst.Tables[0].Rows[0]["la_primaryadd"].ToString();
                la_primaryadd2.Text = dtst.Tables[0].Rows[0]["la_primaryadd2"].ToString();
                la_phonenumber2.Text = dtst.Tables[0].Rows[0]["la_phonenumber2"].ToString();
                la_email2.Text = dtst.Tables[0].Rows[0]["la_email2"].ToString();
                la_secondaryadd1.Text = dtst.Tables[0].Rows[0]["la_secondaryadd"].ToString();
                la_secondaryadd2.Text = dtst.Tables[0].Rows[0]["la_secondaryadd2"].ToString();
                sales_rm_name.Text = dtst.Tables[0].Rows[0]["sales_rm_name"].ToString();
                scp_number.Text = dtst.Tables[0].Rows[0]["scp_number"].ToString();
                scp_email.Text = dtst.Tables[0].Rows[0]["scp_emailid"].ToString();
                ca_name.Text = dtst.Tables[0].Rows[0]["ca_name"].ToString();
                ca_phone.Text = dtst.Tables[0].Rows[0]["ca_phone"].ToString();
                ca_email.Text = dtst.Tables[0].Rows[0]["ca_emailid"].ToString();
                hls_info.Text = dtst.Tables[0].Rows[0]["hls_info"].ToString();
            }

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

     
         

        protected void btn_update_Click1(object sender, EventArgs e)
        {
            try
            {

                orentity.lender_name = lender_name.Text;
                orentity.branch = branch.Text;
                orentity.la_reference_no = la_reference_no.Text;
                orentity.la_name = la_name.Text;
                orentity.la_phonenumber1 = la_phonenumber.Text;
                orentity.la_emailid1 = la_email1.Text;
                orentity.la_primaryadd1 = la_primaryadd1.Text;
                orentity.la_primaryadd2 = la_primaryadd2.Text;
                orentity.la_phonenumber2 = la_phonenumber2.Text;
                orentity.la_emailid2 = la_email2.Text;
                orentity.la_secondaryadd1 = la_secondaryadd1.Text;
                orentity.la_secondaryadd2 = la_secondaryadd2.Text;
                orentity.sales_rm_name = sales_rm_name.Text;
                orentity.scp_number = scp_number.Text;
                orentity.scp_emailid = scp_email.Text;
                orentity.ca_name = ca_name.Text;
                orentity.ca_phone = ca_phone.Text;
                orentity.ca_emailid = ca_email.Text;
                orentity.hls_info = hls_info.Text;


                int update = bal.orderupdate(orentity, Convert.ToInt32(ViewState["order_id"].ToString()));

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully updated!');window.location.href = 'Newlender.aspx'", true);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
    }
