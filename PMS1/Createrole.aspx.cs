using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PMS1
{
    public partial class Createrole : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                    SqlCommand com = new SqlCommand("CreateRole", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Role", txtrole.Text);
                                      con.Open();
                    int output = com.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Successfully Create role!');window.location.href = 'Createrole.aspx'", true);
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}