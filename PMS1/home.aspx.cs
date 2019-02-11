using BAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS1
{
    public partial class home : System.Web.UI.Page
    {
        Bal_connection bal = new Bal_connection();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                DataSet dts = bal.dashboard_count();

                lbltemployees.Text = dts.Tables[0].Rows[0]["empcount"].ToString();

                lbltlenders.Text = dts.Tables[1].Rows[0]["Lendercount"].ToString();

                lblallorders_count.Text = dts.Tables[2].Rows[0]["orderscount"].ToString();

                lblacemployees.Text = dts.Tables[3].Rows[0]["active"].ToString();
                lbldaemployees.Text = dts.Tables[3].Rows[0]["deactive"].ToString();
                lblaorders.Text = dts.Tables[4].Rows[0]["assign"].ToString();
                lbluaorders.Text = dts.Tables[4].Rows[0]["notassigned"].ToString();

                

            }
            catch (Exception ex)
            {
                throw ex;
            }

          
        }
    }
}