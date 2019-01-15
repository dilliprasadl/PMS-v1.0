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


        //protected void btnsubmit_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        SqlCommand com = new SqlCommand("insertneworders", con);
        //        com.CommandType = System.Data.CommandType.StoredProcedure;

        //        com.Parameters.AddWithValue("@LenderName", txtlename.Text);
        //        com.Parameters.AddWithValue("@Branch", txtbranch.Text);
        //        com.Parameters.AddWithValue("@LAReferenceNumber", txtlarnumber.Text);
        //        com.Parameters.AddWithValue("@Loanapplicationname", txtlaname.Text);


        //        com.Parameters.AddWithValue("@LAcdPhoneNumber", txtpnumber.Text);
        //        com.Parameters.AddWithValue("@LAcdPrimaryEmailId", txteid.Text);
        //        com.Parameters.AddWithValue("@LAcdPrimaryAddress", txtpaddress.Text);

        //        com.Parameters.AddWithValue("@LAacdPhoneNumber", txtphnumber.Text);
        //        com.Parameters.AddWithValue("@LAacdSecondaryEmailId", txtsemid.Text);
        //        com.Parameters.AddWithValue("@LAacdSecondaryAddress", txtsaddress.Text);

        //        com.Parameters.AddWithValue("@SalesRMName", txtsrmname.Text);
        //        com.Parameters.AddWithValue("@SalesContactPhoneNumber", txtscpnumber.Text);
        //        com.Parameters.AddWithValue("@SalesemailID", txtsemailid.Text);
        //        com.Parameters.AddWithValue("@CAName", txtcaname.Text);

        //        com.Parameters.AddWithValue("@CAphonedetails", txtcapdetails.Text);
        //        com.Parameters.AddWithValue("@CAemailID", txtcaeid.Text);
        //        com.Parameters.AddWithValue("@Haslendersalesinformed", ddlselect.SelectedItem.ToString());




        //        com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());

        //        // com.Parameters.Add(sp4);
        //        con.Open();
        //        int output = com.ExecuteNonQuery();

        //        con.Close();



        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Registered!');window.location.href = 'New_orders.aspx'", true);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;

        //    }
        //}
    }
}