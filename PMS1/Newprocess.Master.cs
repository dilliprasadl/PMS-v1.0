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
                try
                {
                    username.Text = Session["user_Name"].ToString();
                    //img.ImageUrl = Session["photo"].ToString();
                    get_menu();
                }
                catch (NullReferenceException)
                {
                    Response.Redirect("Login.aspx");
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Failed to get photo');", true);
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");
        }

        private void get_menu()
        {
            try
            {
                if (Convert.ToInt32(Session["Roleid"].ToString()) == 1)
                {
                    Assignrole.Visible = true;
                    newmenu.Visible = true;
                    newlender.Visible = true;
                    newemp.Visible = true;
                    newrole.Visible = true;
                    viewmenu.Visible = true;
                    viewemp.Visible = true;
                    viewlender.Visible = true;
                    //viewrole.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 2)
                {
                    ordersmenu.Visible = true;
                    neworder.Visible = true;
                    multipleupload.Visible = true;
                    viewmenu.Visible = true;
                    unassigned.Visible = true;
                    viewlender.Visible = true;
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 3)
                {
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 4)
                {
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 5)
                {
                    viewmenu.Visible = true;
                    unassigned.Visible = true;
                    viewlender.Visible = true;
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                }
                else if ( Convert.ToInt32(Session["Roleid"].ToString()) == 6)
                {
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 7)
                {
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 8)
                {
                    ordersmenu.Visible = true;
                    neworder.Visible = true;
                    multipleupload.Visible = true;
                    newmenu.Visible = true;
                    newemp.Visible = true;
                    newlender.Visible = true;
                    newrole.Visible = true;
                    viewmenu.Visible = true;
                    unassigned.Visible = true;
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                    viewemp.Visible = true;
                }
                else if (Convert.ToInt32(Session["Roleid"].ToString()) == 9)
                {
                    pipelinemenu.Visible = true;
                    mypipeline.Visible = true;
                    teampipeline.Visible = true;
                    newmenu.Visible = true;
                    newemp.Visible = true;
                    newlender.Visible = true;
                    newrole.Visible = true;
                    viewmenu.Visible = true;
                    viewlender.Visible = true;
                    viewemp.Visible = true;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }
}