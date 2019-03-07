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
    public partial class OrderTask : System.Web.UI.Page
    {
        Bal_connection bal = new Bal_connection();

        subject_enty entty = new subject_enty();
        Employee_entity empenty = new Employee_entity();

        object employeeSequenceId;
        DataSet dtst;
        int orderid;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_order_data();
            }
        }
        private void view_order_data()
        {
            ViewState["order_id"] = orderid = Convert.ToInt32(Request.QueryString["order_id"].ToString());

            using (dtst = bal.Getorderedit(orderid))
            {
                lender_name.Text = dtst.Tables[0].Rows[0]["lender_name"].ToString();

                branch.Text = dtst.Tables[0].Rows[0]["branch"].ToString();

                la_reference_no.Text = dtst.Tables[0].Rows[0]["la_reference_no"].ToString();

                la_name.Text = dtst.Tables[0].Rows[0]["la_name"].ToString();

                la_phonenumber.Text = dtst.Tables[0].Rows[0]["la_phonenumber"].ToString();

                la_phonenumber2.Text = dtst.Tables[0].Rows[0]["la_phonenumber2"].ToString();

                la_email1.Text = dtst.Tables[0].Rows[0]["la_email1"].ToString();

                la_email2.Text = dtst.Tables[0].Rows[0]["la_email2"].ToString();

                la_primaryadd1.Text = dtst.Tables[0].Rows[0]["la_primaryadd"].ToString();

                la_primaryadd2.Text = dtst.Tables[0].Rows[0]["la_primaryadd2"].ToString();

                la_secondaryadd1.Text = dtst.Tables[0].Rows[0]["la_secondaryadd"].ToString();

                la_secondaryadd2.Text = dtst.Tables[0].Rows[0]["la_secondaryadd2"].ToString();

                scp_email.Text = dtst.Tables[0].Rows[0]["scp_emailid"].ToString();

                ca_name.Text = dtst.Tables[0].Rows[0]["ca_name"].ToString();

                ca_phone.Text = dtst.Tables[0].Rows[0]["ca_phone"].ToString();

                ca_email.Text = dtst.Tables[0].Rows[0]["ca_emailid"].ToString();

                sales_rm_name.Text = dtst.Tables[0].Rows[0]["sales_rm_name"].ToString();

                scp_email.Text = dtst.Tables[0].Rows[0]["scp_emailid"].ToString();

                scp_number.Text = dtst.Tables[0].Rows[0]["scp_number"].ToString();

                hls_info.Text = dtst.Tables[0].Rows[0]["hls_info"].ToString();


            }
        }
    }
}