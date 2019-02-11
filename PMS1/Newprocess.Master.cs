using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS1
{
    public partial class Newprocess : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                username.Text = Session["user_Name"].ToString();
            }
          else
            {
                Response.Write("session expired!! LOGIN again");
                Response.Redirect("Login.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user_Name"] = null;

            if (Session["user_Name"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

            }
        }
        
        
    }
}