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
    public partial class Vieworders : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindGrid();
            }
        }
        private void BindGrid()
        {
           
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "vieworder"; //Stored Procedure Name
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
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = e.NewEditIndex;
                BindGrid();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {


                TextBox txtOrdaerName = GridView1.Rows[e.RowIndex].FindControl("txtorder") as TextBox;
                //TextBox txtOrderReceivedTime = GridView1.Rows[e.RowIndex].FindControl("txtord") as TextBox;
                TextBox txtOrderReceivedDate = GridView1.Rows[e.RowIndex].FindControl("txtort") as TextBox;
                
                HiddenField hdnempid = GridView1.Rows[e.RowIndex].FindControl("hdn_empid") as HiddenField;
                int id = Convert.ToInt16(hdnempid.Value.ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("updateorder", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@OrdaerName", txtOrdaerName.Text);
                //cmd.Parameters.AddWithValue("@OrderReceivedTime", txtOrderReceivedTime.Text);
                cmd.Parameters.AddWithValue("@OrderReceivedDate", txtOrderReceivedDate.Text);
     
               
                cmd.Parameters.AddWithValue("@OrderId", id);

                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (i > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully update!');", true);
                }

                GridView1.EditIndex = -1;
                BindGrid();
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}