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
    public partial class unassigned : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            GridBind();
            ddlBind();
        }
        }
        private void GridBind()
        {
           
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "getunassigned"; //Stored Procedure Name

                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable ds = new DataTable();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
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
        private void ddlBind()
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
                ddlnames.DataSource = ds;

                ddlnames.DataTextField = "UserName";
                ddlnames.DataValueField = "Employeeid";
                ddlnames.DataBind();
                ddlnames.Items.Insert(0, "-SELECT-");
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridBind();
        }
        protected void btnassign_Click(object sender, EventArgs e)
        {
            try
            {

                       
                    List<GridViewRow> selectedItems;
                    selectedItems = GridView1.Rows.Cast<GridViewRow>().Where(x => ((CheckBox)x.FindControl("cbSelect")).Checked).ToList();

                if (selectedItems.Count > 0)
                {

                    foreach (GridViewRow gvrow in GridView1.Rows)
                    {
                        CheckBox chk2 = (CheckBox)gvrow.FindControl("cbSelect");
                        if (chk2.Checked)
                        {

                            HiddenField hdn_order_num = (HiddenField)gvrow.FindControl("hdn_order");

                            int ordernum =Convert.ToInt32( hdn_order_num.Value.ToString());
                           int assign_to=Convert.ToInt32( ddlnames.SelectedValue.ToString());

                            SqlCommand com = new SqlCommand("Assign_order", con);
                            com.CommandType = System.Data.CommandType.StoredProcedure;
                            com.Parameters.AddWithValue("@order_num", ordernum);
                            com.Parameters.AddWithValue("@assign_to", assign_to);
                            com.Parameters.AddWithValue("@Createdby", Session["User_id"].ToString());

                            // com.Parameters.Add(sp4);
                            con.Open();
                            int output = com.ExecuteNonQuery();

                            con.Close();



                            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Assigne!');window.location.href = 'unassigned.aspx'", true);

                        }

                        else
                        {
                           // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Plese select atleast one row!');", true);
                        }
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Plese select atleast one row!');", true);
                }


            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        

    }
}





































































































































































































































































        
