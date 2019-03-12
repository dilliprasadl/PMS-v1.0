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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("login", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("@UserName", txtuname.Text);
            SqlParameter sp2 = new SqlParameter("@Password", txtpwd.Text);

            com.Parameters.Add(sp1);
            com.Parameters.Add(sp2);

            
            SqlDataReader dr = com.ExecuteReader();
            // DataTable dt = dr.GetValues();
            // dr.Fill(dt);
            if (dr.HasRows)

            {

                dr.Read();

                // Label4.Text = "Login successful.";

                // Label4.Visible = true;



                string UserName = (string)dr["UserName"];
                //string photopath = (string)dr["photo"];

                int user_id = (int)dr["Employeeid"];

                 int Role_id = (int)dr["Role"];

                // string city = (string)dr["City"];

                Session["user_Name"] = UserName;

                Session["User_id"] = user_id;

                 Session["Roleid"] = Role_id;
               // Session["photo"] = photopath;
                



                Response.Redirect("home.aspx");





            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert(' Invalid username and password');window.location.href = 'Login.aspx'", true);
            }
        }
    }
}