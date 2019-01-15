using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class DBManager
    {
        public SqlDataReader ExecuteReader(SqlCommand cmd, CommandType cmdType, string cmdText)
        {

            //SqlConnection conn = new SqlConnection("Persist Security Info=False;User ID=sa;Password=sa@123;Initial Catalog=Dake_BPM_V2;Data Source=PHANIKUMAR" );
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pms"].ConnectionString);

            // we use a try/catch here because if the method throws an exception we want to 
            // close the connection throw code, because no datareader will exist, hence the 
            // commandBehaviour.CloseConnection will not work
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText);
                SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                //cmd.Parameters.Clear();
                return rdr;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                // conn.Close();
            }

            return null;
        }

        public object ExecuteScalar(SqlCommand cmd, CommandType cmdType, string cmdText)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pms"].ConnectionString.ToString()))
                {
                    PrepareCommand(cmd, conn, null, cmdType, cmdText);
                    object val = cmd.ExecuteScalar();
                    //cmd.Parameters.Clear();
                    return val;
                }
            }
            catch (Exception ex)
            {

            }

            return null;
        }
        public int ExecuteNonQuery(SqlCommand cmd, CommandType cmdType, string cmdText)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pms"].ConnectionString.ToString()))
                {
                    PrepareCommand(cmd, conn, null, cmdType, cmdText);
                    int val = cmd.ExecuteNonQuery();
                    //cmd.Parameters.Clear();
                    return val;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return -1;
        }
        public DataSet ExecuteAdapter(SqlCommand cmd, CommandType cmdType, string cmdText)
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pms"].ConnectionString.ToString()))
                {

                    PrepareCommand(cmd, conn, null, cmdType, cmdText);
                    SqlDataAdapter da = new SqlDataAdapter();

                    da.SelectCommand = cmd;
                    cmd.CommandTimeout = 600000000;
                    DataSet ds = new DataSet();

                    da.Fill(ds);
                    cmd.Parameters.Clear();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return null;
        }

        public DataTable ExecuteTable(SqlCommand cmd, CommandType cmdType, string cmdText)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["pms"].ConnectionString.ToString()))
                {
                    PrepareCommand(cmd, conn, null, cmdType, cmdText);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    cmd.CommandTimeout = 600000000;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    cmd.Parameters.Clear();
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return null;
        }

        /// <summary>
        /// Execute a SqlCommand (that returns no resultset) using an existing SQL Transaction 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  int result = ExecuteNonQuery(connString, CommandType.StoredProcedure, "[C285827_LTLNET].PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="trans">an existing sql transaction</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>an int representing the number of rows affected by the command</returns>
        public int ExecuteNonQuery(SqlTransaction trans, SqlCommand cmd, CommandType cmdType, string cmdText, string CONN_STRING)
        {
            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText);
            int val = cmd.ExecuteNonQuery();
            //cmd.Parameters.Clear();
            return val;
        }



        /// <summary>
        /// Prepare a command for execution
        /// </summary>
        /// <param name="cmd">SqlCommand object</param>
        /// <param name="conn">SqlConnection object</param>
        /// <param name="trans">SqlTransaction object</param>
        /// <param name="cmdType">Cmd type e.g. stored procedure or text</param>
        /// <param name="cmdText">Command text, e.g. Select * from Products</param>
        /// <param name="cmdParms">SqlParameters to use in the command</param>
        private void PrepareCommand(SqlCommand cmd, SqlConnection conn,
                                           SqlTransaction trans, CommandType cmdType,
                                           string cmdText)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();

            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            if (trans != null)
                cmd.Transaction = trans;

            cmd.CommandType = cmdType;
        }


        /// <summary>
        /// To Change the Connection String so as to access another
        /// Data Source.
        /// </summary>
        /// <param name="m_dbname"></param>
        public void dbname(string m_dbname)
        {
            if (m_dbname == "FMS")
            {
                //    CONN_STRING = ConfigurationSettings.AppSettings["ACLConstr"];
                //}
                //else if (m_dbname == "CTI")
                //{
                //    CONN_STRING = ConfigurationSettings.AppSettings["ConstrCTI"];
                //}
                //else if (m_dbname == "FMS")
                //{

            }

        }
    }
}
