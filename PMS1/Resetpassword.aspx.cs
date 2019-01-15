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
    public partial class Resetpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                ddlbindre();
            }
        }
        private void ddlbindre()
        {

            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "assignemp"; //Stored Procedure Name

                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                ddlrpwd.DataSource = ds;

                ddlrpwd.DataTextField = "UserName";
                ddlrpwd.DataValueField = "Employeeid";
                ddlrpwd.DataBind();
                ddlrpwd.Items.Insert(0, "-SELECT-");
            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                com.Dispose();
            }
        }
        protected void btnsub_Click(object sender, EventArgs e)
        {
            try
            {

                string password = txtpwd.Text;
                int regid = Convert.ToInt32(ddlrpwd.SelectedValue.ToString());

                SqlCommand com = new SqlCommand("passwordreset", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@password", password);
                com.Parameters.AddWithValue("@registerid", regid);


                con.Open();
                int output = com.ExecuteNonQuery();

                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully resert the password!');window.location.href = 'Resetpassword.aspx'", true);
            }
            catch (Exception ex)
            {
                throw ex;
            }
           

        }
    }
}