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
    public partial class editlender : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS V1.0;Integrated Security=True");
        Bal_connection bal = new Bal_connection();

        lender_entity enttity = new lender_entity();

        DataSet dtst;
        int lenderid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_lender_data_to_update();
            }
        }
        private void Get_lender_data_to_update()
        {
            ViewState["lenderid"] = lenderid = Convert.ToInt32(Request.QueryString["lenderid"].ToString());

            using (dtst = bal.Getlenderedit(lenderid))

            {

                lender_name.Text = dtst.Tables[0].Rows[0]["lender_name"].ToString();
                lender_code.Text = dtst.Tables[0].Rows[0]["lender_code"].ToString();
                //ddlselect.SelectedValue = dtst.Tables[0].Rows[0]["Gender"].ToString();
                manager_name.Text = dtst.Tables[0].Rows[0]["manager_name"].ToString();
                manager_number.Text = dtst.Tables[0].Rows[0]["manager_number"].ToString();
                lc_number.Text = dtst.Tables[0].Rows[0]["lc_number"].ToString();
                manager_email.Text = dtst.Tables[0].Rows[0]["manager_email"].ToString();
                lc_email.Text = dtst.Tables[0].Rows[0]["lc_email"].ToString();
                contact_name.Text = dtst.Tables[0].Rows[0]["contact_name"].ToString();
                designation.Text = dtst.Tables[0].Rows[0]["designation"].ToString();
                branch_name.Text = dtst.Tables[0].Rows[0]["branch_name"].ToString();
                branch_add.Text = dtst.Tables[0].Rows[0]["branch_add"].ToString();
                branch_add2.Text = dtst.Tables[0].Rows[0]["branch_add2"].ToString();
                branch_city.Text = dtst.Tables[0].Rows[0]["branch_city"].ToString();
                branch_state.Text = dtst.Tables[0].Rows[0]["branch_state"].ToString();
                branch_zip.Text = dtst.Tables[0].Rows[0]["branch_zip"].ToString();
                branch_country.Text = dtst.Tables[0].Rows[0]["branch_country"].ToString();


            }

        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {

                enttity.lender_name = lender_name.Text;
                enttity.lender_code = lender_code.Text;
                enttity.manager_name = manager_name.Text;
                enttity.manager_number = manager_number.Text;
                enttity.lc_number = lc_number.Text;
                enttity.manager_email = manager_email.Text;
                enttity.lc_email = lc_email.Text;
                enttity.contact_name = contact_name.Text;
                enttity.designation = designation.Text;
                enttity.branch_name = branch_name.Text;
                enttity.branch_add = branch_add.Text;
                enttity.branch_add2 = branch_add2.Text;
                enttity.branch_city = branch_city.Text;
                enttity.branch_state = branch_state.Text;
                enttity.branch_zip = branch_zip.Text;
                enttity.branch_country = branch_country.Text;
                int update = bal.lenderupdate(enttity, Convert.ToInt32(ViewState["lenderid"].ToString()));

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully updated!');window.location.href = 'Lender_registration.aspx'", true);

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}