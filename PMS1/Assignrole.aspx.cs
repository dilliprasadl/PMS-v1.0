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
    public partial class rolebased : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlReg();
                ddlRol();
            }
        }
        private void ddlReg()
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
                ddlregister.DataSource = ds;

                ddlregister.DataTextField = "UserName";
                ddlregister.DataValueField = "Employeeid";
                ddlregister.DataBind();
                ddlregister.Items.Insert(0, "-SELECT-");
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
        private void ddlRol()
        {

            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "getrole"; //Stored Procedure Name

                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                ddlrole.DataSource = ds;

                ddlrole.DataTextField = "Rolename";
                ddlrole.DataValueField = "Roleid";
                ddlrole.DataBind();
                ddlrole.Items.Insert(0, "-SELECT-");
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


        protected void btnassign_Click(object sender, EventArgs e)
        {
            try
            {

                int registerid = Convert.ToInt32(ddlregister.SelectedValue.ToString());
                int roleid = Convert.ToInt32(ddlrole.SelectedValue.ToString());
                SqlCommand com = new SqlCommand("Assignrole", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Employeeid", registerid);
                com.Parameters.AddWithValue("@roleid", roleid);

                con.Open();
                int output = com.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Assign!');window.location.href = 'Assignrole.aspx'", true);
            }
            catch (Exception ex)
            {
                throw ex;
            }




        }
        protected void btnget_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }




    }
}  
