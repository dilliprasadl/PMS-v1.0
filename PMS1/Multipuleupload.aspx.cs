using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PMS1
{
    public partial class Multipuleupload : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Data Source=VAIO\\SQLEXPRESS;Initial Catalog=user;Integrated Security=True");
        //OleDbConnection Econ;
        //SqlConnection con;

        //string constr, Query, sqlconn;


        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}
        //private void ExcelConn(string FilePath)
        //{

        //     constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", FilePath);
        //    Econ = new OleDbConnection(constr);

        //}
        //private void connection()
        //{
        //    sqlconn = ConfigurationManager.ConnectionStrings["pms"].ConnectionString;
        //    con = new SqlConnection(sqlconn);

        //}


        //private void InsertExcelRecords(string FilePath)
        //{
        //    ExcelConn(FilePath);

        //    Query = string.Format("select branch,Lendername,LAreferenceno,Loanapplicationname,Phonenumber,Emailid,Primaryaddress,Alternatephonenumber,AlternteEmailid,Secondaryaddress,SalesRMName,SalesContactPhoneNumber,CAname, CAPhonedetails,CAEmailID,HasLendersalesinform  FROM [{0}]", "Sheet1$");


        //    OleDbCommand Ecom = new OleDbCommand(Query, Econ);
        //    Econ.Open();

        //    DataSet ds = new DataSet();
        //    OleDbDataAdapter oda = new OleDbDataAdapter(Query, Econ);
        //    Econ.Close();
        //    oda.Fill(ds);
        //    DataTable Exceldt = ds.Tables[0];
        //    connection();
        //    //creating object of SqlBulkCopy    
        //    SqlBulkCopy objbulk = new SqlBulkCopy(con);
        //    //assigning Destination table name    
        //    objbulk.DestinationTableName = "multipleupload";
        //    //Mapping Table column    
        //    objbulk.ColumnMappings.Add("branch", "branch");
        //    objbulk.ColumnMappings.Add("Lendername", "Lendername");
        //    objbulk.ColumnMappings.Add("LAreferenceno", "LAreferenceno");
        //    objbulk.ColumnMappings.Add("Loanapplicationname", "Loanapplicationname");
        //    objbulk.ColumnMappings.Add("Phonenumber", "Phonenumber");
        //    objbulk.ColumnMappings.Add("Emailid", "Emailid");
        //    objbulk.ColumnMappings.Add("Primaryaddress", "Primaryaddress");
        //    objbulk.ColumnMappings.Add("Alternatephonenumber", "Alternatephonenumber");
        //    objbulk.ColumnMappings.Add("AlternteEmailid", "AlternteEmailid");
        //    objbulk.ColumnMappings.Add("Secondaryaddress", "Secondaryaddress");
        //    objbulk.ColumnMappings.Add("SalesRMName", "SalesRMName");
        //    objbulk.ColumnMappings.Add("SalesContactPhoneNumber", "SalesContactPhoneNumber");
        //    objbulk.ColumnMappings.Add("CAname", "CAname");
        //    objbulk.ColumnMappings.Add("CAPhonedetails", "CAPhonedetails");
        //    objbulk.ColumnMappings.Add("CAEmailID", "CAEmailID");
        //    objbulk.ColumnMappings.Add("HasLendersalesinform", "HasLendersalesinform");
        //    //inserting Datatable Records to DataBase    
        //    con.Open();
        //    objbulk.WriteToServer(Exceldt);
        //    con.Close();

        //}
        protected void btnexcelupload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                try
                {
                    string path = string.Concat(Server.MapPath("~/Files/" + FileUpload1.FileName));
                    FileUpload1.SaveAs(path);
                    // Connection String to Excel Workbook  
                    string excelCS = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0", path);
                    using (OleDbConnection con = new OleDbConnection(excelCS))
                    {
                        OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", con);
                        con.Open();
                        // Create DbDataReader to Data Worksheet  
                        DbDataReader dr = cmd.ExecuteReader();
                        // SQL Server Connection String  
                        string CS = ConfigurationManager.ConnectionStrings["pms"].ConnectionString;
                        // Bulk Copy to SQL Server   
                        SqlBulkCopy bulkInsert = new SqlBulkCopy(CS);
                        bulkInsert.DestinationTableName = "singleupload";
                        bulkInsert.WriteToServer(dr);

                        lblmessage.Text = "Your file uploaded successfully";
                        lblmessage.ForeColor = System.Drawing.Color.Green;
                    }
                }
                catch (Exception ex)
                {
                    throw ex;

                //    lblmessage.Text = "Your file not uploaded";
                   // lblmessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            //    try
            //    {

            //    string CurrentFilePath = Path.GetFullPath(FileUpload1.PostedFile.FileName);
            //    InsertExcelRecords(CurrentFilePath);
            //    }
            //    catch(Exception ex)
            //    {
            //        throw ex;
            //    }


            //}


            //        string Lendername;
            //        string branch;
            //        string LAreferenceno;
            //        string Loanapplicationname;
            //        string Phonenumber;
            //        string Emailid;

            //        string Primaryaddress;
            //        string Alternatephonenumber;
            //        string AlternteEmailid;

            //        string Secondaryaddress;
            //        string SalesRMName;
            //        string SalesContactPhoneNumber;
            //        string CAname;
            //        string CAPhonedetails;
            //        string CAEmailID;
            //        string HasLendersalesinforme;

            //        string path = Path.GetFileName(uploadExceFile.FileName);
            //        path = path.Replace(" ", "");
            //        uploadExceFile.SaveAs(Server.MapPath("~/excel/OrderDetailes.xlsx/") + path);
            //        string ExcelPath = Server.MapPath("~/excel/OrderDetailes.xlsx/") + path;
            //        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
            //        mycon.Open();
            //        OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
            //        OleDbDataReader dr = cmd.ExecuteReader();
            //        while (dr.Read())
            //        {
            //            // Response.Write("<br/>"+dr[0].ToString());

            //            Lendername = dr[0].ToString();
            //            branch = dr[1].ToString();
            //            LAreferenceno = dr[2].ToString();
            //            Loanapplicationname = dr[3].ToString();
            //            Phonenumber = dr[4].ToString();
            //            Emailid = dr[5].ToString();
            //            Primaryaddress = dr[6].ToString();
            //            Alternatephonenumber = dr[7].ToString();
            //            AlternteEmailid = dr[8].ToString();
            //            Secondaryaddress = dr[9].ToString();
            //            SalesRMName = dr[10].ToString();
            //            SalesContactPhoneNumber = dr[11].ToString();
            //            CAname = dr[12].ToString();
            //            CAPhonedetails = dr[13].ToString();
            //            CAEmailID = dr[14].ToString();
            //            HasLendersalesinforme = dr[15].ToString();


            //            savedata(Lendername, branch, LAreferenceno, Loanapplicationname, Phonenumber, Emailid, Primaryaddress, Alternatephonenumber,
            //                AlternteEmailid, Secondaryaddress, SalesRMName, SalesContactPhoneNumber, CAname, CAPhonedetails, CAEmailID, HasLendersalesinforme);


            //        }
            //    }

            //private void savedata(string Lendername, string branch, string LAreferenceno, string Loanapplicationname, string Phonenumber, string Emailid, string Primaryaddress, string Alternatephonenumber,
            //    string AlternteEmailid, string Secondaryaddress, string SalesRMName, string SalesContactPhoneNumber, string CAname, string CAPhonedetails,
            //    string CAEmailID, string HasLendersalesinforme)
            //{


            //    String query = "insert_Multipleupload";

            //    SqlConnection con = new SqlConnection(mycon);
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.CommandText = query;
            //    cmd.Connection = con;
            //    cmd.ExecuteNonQuery();

            //}
            //try
            //{
            //    string excelPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            //    FileUpload1.SaveAs(excelPath);

            //    string conString = string.Empty;
            //    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            //    switch (extension)
            //    {
            //        case ".xls": //Excel 97-03
            //            conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
            //            break;
            //        case ".xlsx": //Excel 07 or higher
            //            conString = ConfigurationManager.ConnectionStrings["Excel07+ConString+"].ConnectionString;
            //            break;

            //    }
            //    conString = string.Format(conString, excelPath);
            //    using (OleDbConnection excel_con = new OleDbConnection(conString))
            //    {
            //        excel_con.Open();
            //        string sheet1 = excel_con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null).Rows[0]["TABLE_NAME"].ToString();
            //        DataTable dtExcelData = new DataTable();

            //        //[OPTIONAL]: It is recommended as otherwise the data will be considered as String by default.
            //        dtExcelData.Columns.AddRange(new DataColumn[16]
            //            {
            //    new DataColumn("Lendername", typeof(string)),
            //    new DataColumn("branch", typeof(string)),
            //    new DataColumn("Lareferenceno", typeof(string)),
            //    new DataColumn("Loanapplicationname", typeof(string)),
            //    new DataColumn("Phonenumber", typeof(string)),
            //    new DataColumn("Emailid", typeof(string)),
            //    new DataColumn("Primaryaddress", typeof(string)),
            //    new DataColumn("Alternatephonenumber", typeof(string)),
            //    new DataColumn("AlternteEmailid", typeof(string)),
            //    new DataColumn("Secondaryaddress", typeof(string)),
            //    new DataColumn("SalesRMName", typeof(string)),
            //    new DataColumn("SalesContactPhoneNumber", typeof(string)),
            //    new DataColumn("CAname", typeof(string)),
            //    new DataColumn("CAPhonedetails", typeof(string)),
            //    new DataColumn("CAEmailID", typeof(string)),
            //     new DataColumn("HasLendersalesinforme", typeof(string)),

            //            });

            //        using (OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM [" + sheet1 + "]", excel_con))
            //        {
            //            oda.Fill(dtExcelData);
            //        }
            //        excel_con.Close();

            //        string consString = ConfigurationManager.ConnectionStrings["pms"].ConnectionString;
            //        using (SqlConnection con = new SqlConnection(consString))
            //        {
            //            using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
            //            {
            //                //Set the database table name
            //                sqlBulkCopy.DestinationTableName = "multipleupload";

            //                //[OPTIONAL]: Map the Excel columns with that of the database table

            //                sqlBulkCopy.ColumnMappings.Add("Lendername", "Lendername");
            //                sqlBulkCopy.ColumnMappings.Add("branch", "branch");
            //                sqlBulkCopy.ColumnMappings.Add("Lareferenceno", "Lareferenceno");
            //                sqlBulkCopy.ColumnMappings.Add("Loanapplicationname", "Loanapplicationname");
            //                sqlBulkCopy.ColumnMappings.Add("Phonenumber", "Phonenumber");
            //                sqlBulkCopy.ColumnMappings.Add("Emailid", "Emailid");
            //                sqlBulkCopy.ColumnMappings.Add("Primaryaddress", "Primaryaddress");
            //                sqlBulkCopy.ColumnMappings.Add("Alternatephonenumber", "Alternatephonenumber");
            //                sqlBulkCopy.ColumnMappings.Add("AlternteEmailid", "AlternteEmailid");
            //                sqlBulkCopy.ColumnMappings.Add("Secondaryaddress", "Secondaryaddress");
            //                sqlBulkCopy.ColumnMappings.Add("SalesRMName", "SalesRMName");
            //                sqlBulkCopy.ColumnMappings.Add("SalesContactPhoneNumber", "SalesContactPhoneNumber");
            //                sqlBulkCopy.ColumnMappings.Add("CAname", "CAname");
            //                sqlBulkCopy.ColumnMappings.Add("CAPhonedetails", "CAPhonedetails");
            //                sqlBulkCopy.ColumnMappings.Add("CAEmailID", "CAEmailID");
            //                sqlBulkCopy.ColumnMappings.Add("HasLendersalesinforme", "HasLendersalesinforme");
            //                con.Open();
            //                sqlBulkCopy.WriteToServer(dtExcelData);
            //                con.Close();
            //            }
            //        }
            //    }
            //}
            //catch(Exception ex)
            //{
            //    throw ex;
            //}

        }
        
           
    }
    }    

    
    
    

