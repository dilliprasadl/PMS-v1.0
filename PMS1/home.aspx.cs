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

                //    con.Open();
                //    SqlCommand mysql = con.CreateCommand();

                //mysql.CommandText = "Select Count(*) as myCount From newemployee ";

                //int returnvalue = (int)mysql.ExecuteScalar();

                //lbltemployees.Text = returnvalue.ToString();
                //    con.Close();

                //    con.Open();
                //    SqlCommand cmd = con.CreateCommand();

                //    cmd.CommandText = "Select Count(*) as myCount From Lender ";

                //    int returnlender = (int)cmd.ExecuteScalar();

                //    lbltlenders.Text = returnlender.ToString();
                //    con.Close();

                //    con.Open();
                //    SqlCommand sqlcmd = con.CreateCommand();

                //    sqlcmd.CommandText = "Select Count(*) as myCount From singleupload ";

                //    int returnorders = (int)sqlcmd.ExecuteScalar();

                //    lblallorders_count.Text = returnorders.ToString();
                //    con.Close();

                //    con.Open();
                //    SqlCommand sqlcm = con.CreateCommand();

                //    //sqlcm.CommandText = "Select count(case when active=0 then "ok" end) as still deactive, count(case when active=1 then "ok" end) as isactive from newemployee;

                //    sqlcmd.CommandText = "Select count(case when isactive=1 then 'ok' end) as active,count(case when isactive=0 then 'ok' end)as deactive from newemployee";

                //    Adapter returnactive = (DataTable)sqlcmd.();
                //    lblacemployees.Text = returnactive.ToString();


                //    con.Close();
                //    con.Open();
                //    SqlCommand sqlcommd = con.CreateCommand();

                //    //sqlcm.CommandText = "Select count(case when active=0 then "ok" end) as still deactive, count(case when active=1 then "ok" end) as isactive from newemployee;

                //    sqlcommd.CommandText = "Select count(case when isactive=0 then 'ok' end) as deactive,count(case when isactive=1 then 'ok' end)as active from newemployee";

                //    int returndeactive = (int)sqlcommd.ExecuteScalar();

                //    lbldaemployees.Text = returndeactive.ToString();
                //    con.Close();


                //    con.Open();
                //    SqlCommand sqlcmmd = con.CreateCommand();

                //    sqlcmmd.CommandText = "Select count(case when (Assign_to!=0 and Assign_to is not null)then 'ok' end)as assign,count(case when (Assign_to=0 or Assign_to is null)  then 'ok' end)as notassigned from singleupload";

                //    int returnassign = (int)sqlcmmd.ExecuteScalar();
                //    lblaorders.Text = returnassign.ToString();

                //    con.Close();

                //    con.Open();
                //    SqlCommand sqlcmmad = con.CreateCommand();


                //    sqlcmmad.CommandText = "Select count(case when (Assign_to=0 or Assign_to is null)  then 'ok' end)as notassigned,count(case when (Assign_to!=0 and Assign_to is not null)then 'ok' end)as assign from singleupload";

                //    int returnunassign = (int)sqlcmmad.ExecuteScalar();
                //    lbluaorders.Text = returnunassign.ToString();

                //    con.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }

          
        }
    }
}