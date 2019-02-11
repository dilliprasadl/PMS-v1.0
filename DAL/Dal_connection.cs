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
                DataSet dtst = dbmngr.ExecuteAdapter(cmd,CommandType.StoredProcedure,"dashoard_count");
                return dtst;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


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
            catch(Exception ex)
            {
                throw ex;
            }
        }
        public int empudate(Employee_entity empenty,int empid)
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
                cmd.Parameters.AddWithValue("@PAddressLine1", empenty.PAddressLine1);
                cmd.Parameters.AddWithValue("@PAddressLine2", empenty.PAddressLine2);
                cmd.Parameters.AddWithValue("@PCity", empenty.PCity);
                cmd.Parameters.AddWithValue("@PState", empenty.PState);
                cmd.Parameters.AddWithValue("@PZipCode", empenty.PZipCode);
            
                cmd.Parameters.AddWithValue("@OAddressLine1", empenty.OAddressLine1);
                cmd.Parameters.AddWithValue("@OAddressLine2", empenty.OAddressLine2);
                cmd.Parameters.AddWithValue("@OCity", empenty.OCity);
                cmd.Parameters.AddWithValue("@OState", empenty.OState);
                cmd.Parameters.AddWithValue("@OZipCode", empenty.OZipCode);
                int updateemp = dbmngr.ExecuteNonQuery(cmd, CommandType.StoredProcedure, "anotherpageupdateemp");
                return updateemp;
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
            catch(Exception ex)
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
