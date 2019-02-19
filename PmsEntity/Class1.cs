using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PmsEntity
{
    public class Class1
    {

    }


    public class subject_enty
    {

        public string language { get; set; }
        public string experties { get; set; }
        public int userid { get; set; }
        public int Empsequence { get; set; }

        // public  string  summ();

    }
    public class Employee_entity
    {

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string MobileNumber { get; set; }
        public string AlternateNumber { get; set; }
        public string EmailId { get; set; }
        public string AlternateEmail { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string AadhaarCardNo { get; set; }
        public string PanCardNo { get; set; }
        public string PassportNo { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string RAddressLine1 { get; set; }
        public string RAddressLine2 { get; set; }
        public string RCity { get; set; }
        public string RState { get; set; }
        public string RZipCode { get; set; }
        public string RCountry { get; set; }
        public string PAddressLine1 { get; set; }
        public string PAddressLine2 { get; set; }
        public string PCity { get; set; }
        public string PState { get; set; }
        public string PZipCode { get; set; }
        public string PCountry { get; set; }
        public string OAddressLine1 { get; set; }
        public string OAddressLine2 { get; set; }
        public string OCity { get; set; }
        public string OState { get; set; }
        public string OZipCode { get; set; }
        public string OCountry { get; set; }

    }
    public class lender_entity
    {
        public string lender_name { get; set; }
        public string lender_code { get; set; }
        public string manager_name { get; set; }
        public string manager_number { get; set; }
        public string lc_number { get; set; }
        public string manager_email { get; set; }
        public string lc_email { get; set; }
        public string contact_name { get; set; }
        public string designation { get; set; }
        public string branch_name { get; set; }
        public string branch_add { get; set; }
        public string branch_add2 { get; set; }
        public string branch_city { get; set; }
        public string branch_state { get; set; }
        public string branch_zip { get; set; }
        public string branch_country { get; set; }

    }
    public class order_entity
    {
        public string lender_name { get; set; }
        public string branch { get; set; }
        public string la_reference_no { get; set; }
        public string la_name { get; set; }
        public string la_phonenumber1 { get; set; }
        public string la_emailid1 { get; set; }
        public string la_primaryadd1 { get; set; }
        public string la_primaryadd2 { get; set; }
        public string la_phonenumber2 { get; set; }
        public string la_emailid2 { get; set; }
        public string la_secondaryadd1 { get; set; }
        public string la_secondaryadd2 { get; set; }
        public string sales_rm_name { get; set; }
        public string scp_number { get; set; }
        public string scp_emailid { get; set; }
        public string ca_name { get; set; }
        public string ca_phone { get; set; }
        public string ca_emailid { get; set; }
        public string hls_info { get; set; }


    }
    public class employee_resetpassword
    {
        public string Password { get; set; }

    }




}
