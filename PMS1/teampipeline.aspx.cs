﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PMS1
{
    public partial class teampipeline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridBind();
        }
        private void GridBind()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-RIBI1U4\\SQLEXPRESS;Initial Catalog=PMS v1.0;Integrated Security=True");
            SqlCommand com = new SqlCommand();
            try
            {
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
               
                com.Parameters.AddWithValue("@flag", 2);
                com.Parameters.AddWithValue("@userid", Session["User_id"].ToString());
                com.CommandText = "teamandmy_pipeline"; //Stored Procedure Name

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
    }
}