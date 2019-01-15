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
            if (!IsPostBack)
            {
                username.Text = Session["user_Name"].ToString();
                //get_menu();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        //private void get_menu()
        //{
        //    try
        //    {
        //        if (Convert.ToInt32(Session["Roleid"].ToString()) == 1)
        //        {
        //            liEmployee.Visible = true;
        //            liAdmin.Visible = true;

        //        }



        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 2)
        //        {
        //            litranc2.Visible = true;


        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 3)
        //        {
        //            liPipelines.Visible = true;


        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 7 || Convert.ToInt32(Session["Roleid"].ToString()) == 6)
        //        {
        //            liviewOrders.Visible = true;
        //            liLender.Visible = true;


        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 4)
        //        {
        //            limypipeline.Visible = true;
        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 5)
        //        {
        //            lieditorders1.Visible = true;
        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 8)
        //        {
        //            liassignreassign.Visible = true;

        //        }
        //        else if (Convert.ToInt32(Session["Roleid"].ToString()) == 9)
        //        {
        //            liStatus.Visible = true;

        //        }






        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}
    }
}