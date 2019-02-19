using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmsEntity;

namespace DAL
{

    public class Dal_connection
    {
        SqlCommand cmd = new SqlCommand();
        DBManager dbmngr = new DBManager();

        public DataSet dashboard_count()
        {
            try
            {
                cmd.Parameters.Clear();
                DataSet dtst = dbmngr.ExecuteAdapter(cmd, CommandType.StoredProcedure, "dashoard_count");
                return dtst;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        //public int langes_insert(string language, string experties_lvl,int Createdby)
        //{
        //    cmd.Parameters.Clear();
        //    cmd.Parameters.AddWithValue("@languagename", language);
        //    cmd.Parameters.AddWithValue("@Expertise", experties_lvl);
        //    cmd.Parameters.AddWithValue("@Createdby", Createdby);
        //    int output = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "insert_lang");

        //    return output;
        //}

        public DataTable GetEmpLagByEmpId(int empid)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@empid", empid);

                DataTable output = dbmngr.ExecuteTable(cmd, CommandType.StoredProcedure, "GetEmpLagByEmpId");
                // int output = dbmngr.ExecuteNonQuery(cmd, CommandType.Text, "insert_lang");

                return output;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet Getempedit(int empid)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@empid", empid);
                DataSet outputedit = dbmngr.ExecuteAdapter(cmd, CommandType.StoredProcedure, "editemp");
                return outputedit;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet Getlenderedit(int lenderid)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@lenderid", lenderid);
                DataSet lenderedit = dbmngr.ExecuteAdapter(cmd, CommandType.StoredProcedure, "editlender");
                return lenderedit;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public DataSet Getorderedit(int order_id)
        {
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("order_id", order_id);
            DataSet orderedit = dbmngr.ExecuteAdapter(cmd, CommandType.StoredProcedure, "edit_order");
            return orderedit;
        }
        public int empudate(Employee_entity empenty, int empid)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Employeeid ", empid);
                cmd.Parameters.AddWithValue("@firstname ", empenty.FirstName);
                cmd.Parameters.AddWithValue("@lastname", empenty.LastName);
                cmd.Parameters.AddWithValue("@Gender", empenty.Gender);
                cmd.Parameters.AddWithValue("@DateOfBirth ", empenty.DateOfBirth);
                cmd.Parameters.AddWithValue("@Mobilenumber", empenty.MobileNumber);
                cmd.Parameters.AddWithValue("@Alternatenumber", empenty.AlternateNumber);
                cmd.Parameters.AddWithValue("@Emailid ", empenty.EmailId);
                cmd.Parameters.AddWithValue("@AlternateEmail", empenty.AlternateEmail);
                cmd.Parameters.AddWithValue("@Fathername ", empenty.FatherName);
                cmd.Parameters.AddWithValue("@Mothername", empenty.MotherName);
                cmd.Parameters.AddWithValue("@AadhaarCardNo", empenty.AadhaarCardNo);
                cmd.Parameters.AddWithValue("@PanCardNo", empenty.PanCardNo);
                cmd.Parameters.AddWithValue("@PassportNo", empenty.PassportNo);
                cmd.Parameters.AddWithValue("@UserName", empenty.UserName);
                cmd.Parameters.AddWithValue("@Password", empenty.Password);
                cmd.Parameters.AddWithValue("@RAddressLine1", empenty.RAddressLine1);
                cmd.Parameters.AddWithValue("@RAddressLine2", empenty.RAddressLine2);
                cmd.Parameters.AddWithValue("@RCity", empenty.RCity);
                cmd.Parameters.AddWithValue("@RState", empenty.RState);
                cmd.Parameters.AddWithValue("@RZipCode", empenty.RZipCode);
                cmd.Parameters.AddWithValue("@RCountry", empenty.RCountry);
                cmd.Parameters.AddWithValue("@PAddressLine1", empenty.PAddressLine1);
                cmd.Parameters.AddWithValue("@PAddressLine2", empenty.PAddressLine2);
                cmd.Parameters.AddWithValue("@PCity", empenty.PCity);
                cmd.Parameters.AddWithValue("@PState", empenty.PState);
                cmd.Parameters.AddWithValue("@PZipCode", empenty.PZipCode);
                cmd.Parameters.AddWithValue("@PCountry", empenty.PCountry);
                cmd.Parameters.AddWithValue("@OAddressLine1", empenty.OAddressLine1);
                cmd.Parameters.AddWithValue("@OAddressLine2", empenty.OAddressLine2);
                cmd.Parameters.AddWithValue("@OCity", empenty.OCity);
                cmd.Parameters.AddWithValue("@OState", empenty.OState);
                cmd.Parameters.AddWithValue("@OZipCode", empenty.OZipCode);
                cmd.Parameters.AddWithValue("@OCountry", empenty.OCountry);
                int updateemp = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "anotherpageupdateemp");
                return updateemp;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public int lenderupdate(lender_entity enttity, int lender_id)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@lender_id ", lender_id);
                cmd.Parameters.AddWithValue("@lender_name ", enttity.lender_name);
                cmd.Parameters.AddWithValue("@lender_code", enttity.lender_code);
                cmd.Parameters.AddWithValue("@manager_name", enttity.manager_name);
                cmd.Parameters.AddWithValue("@manager_number ", enttity.manager_number);
                cmd.Parameters.AddWithValue("@lc_number", enttity.lc_number);
                cmd.Parameters.AddWithValue("@manager_email", enttity.manager_email);
                cmd.Parameters.AddWithValue("@lc_email ", enttity.lc_email);
                cmd.Parameters.AddWithValue("@contact_name", enttity.contact_name);
                cmd.Parameters.AddWithValue("@designation", enttity.designation);
                cmd.Parameters.AddWithValue("@branch_name ", enttity.branch_name);
                cmd.Parameters.AddWithValue("@branch_add", enttity.branch_add);
                cmd.Parameters.AddWithValue("@branch_add2", enttity.branch_add2);
                cmd.Parameters.AddWithValue("@branch_city", enttity.branch_city);
                cmd.Parameters.AddWithValue("@branch_state", enttity.branch_state);
                cmd.Parameters.AddWithValue("@branch_zip", enttity.branch_zip);
                cmd.Parameters.AddWithValue("@branch_country", enttity.branch_country);
                int updatelender = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "updatelenders");
                return updatelender;


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public int orderupdate(order_entity orentity, int order_id)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@order_id ", order_id);
                cmd.Parameters.AddWithValue("@lender_name ", orentity.lender_name);
                cmd.Parameters.AddWithValue("@branch", orentity.branch);
                cmd.Parameters.AddWithValue("@la_reference_no", orentity.la_reference_no);
                cmd.Parameters.AddWithValue("@la_name ", orentity.la_name);
                cmd.Parameters.AddWithValue("@la_phonenumber1", orentity.la_phonenumber1);
                cmd.Parameters.AddWithValue("@la_emailid1", orentity.la_emailid1);
                cmd.Parameters.AddWithValue("@la_primaryadd1", orentity.la_primaryadd1);
                cmd.Parameters.AddWithValue("@la_primaryadd2", orentity.la_primaryadd2);
                cmd.Parameters.AddWithValue("@la_phonenumber2 ", orentity.la_phonenumber2);
                cmd.Parameters.AddWithValue("@la_emailid2", orentity.la_emailid2);
                cmd.Parameters.AddWithValue("@la_secondaryadd1 ", orentity.la_secondaryadd1);
                cmd.Parameters.AddWithValue("@la_Secondaryadd2", orentity.la_secondaryadd2);
                cmd.Parameters.AddWithValue("@sales_rm_name", orentity.sales_rm_name);
                cmd.Parameters.AddWithValue("@scp_number", orentity.scp_number);
                cmd.Parameters.AddWithValue("@scp_emailid", orentity.scp_emailid);
                cmd.Parameters.AddWithValue("@ca_name", orentity.ca_name);
                cmd.Parameters.AddWithValue("@ca_phone", orentity.ca_phone);
                cmd.Parameters.AddWithValue("@ca_emailid", orentity.ca_emailid);
                cmd.Parameters.AddWithValue("@hls_info", orentity.hls_info);
                int updateorder = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "update_orders");
                return updateorder;


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public int empresetpwd(employee_resetpassword emrepwd, int employeeid)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@employeeid ", employeeid);
                cmd.Parameters.AddWithValue("@Password ", emrepwd.Password);

                int resetpwd = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "passwordreset1");
                return resetpwd;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }



        public int langes_insert(subject_enty entty)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@language", entty.language);
                cmd.Parameters.AddWithValue("@Expertiselevel", entty.experties);
                cmd.Parameters.AddWithValue("@Created", entty.userid);
                cmd.Parameters.AddWithValue("@Sequence", entty.Empsequence);
                int output = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "insert_lang");
                // int output = dbmngr.ExecuteNonQuery(cmd, CommandType.Text, "insert_lang");

                return output;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public object EmpSequenceId()
        {
            try

            {
                cmd.Parameters.Clear();
                object sequenceId = dbmngr.ExecuteScalar(cmd, CommandType.StoredProcedure, "Emp_sequence");
                return sequenceId;

            }

            catch (Exception ex)
            {

                throw ex;
            }
        }
        public int Delete_Lang(int sno, int empId)
        {
            try
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@SNO", sno);
                cmd.Parameters.AddWithValue("@EmployeeId", empId);
                int deleteoutput = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "deletelang");
                return deleteoutput;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


    }
}
