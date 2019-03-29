
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmsEntity;
using System.Data;

namespace BAL
{
    public class Bal_connection
    {
        Dal_connection dal = new Dal_connection();

        public DataSet dashboard_count()
        {
            return dal.dashboard_count();
        }
        public DataTable GetEmpLagByEmpId(int empid)
        {
            return dal.GetEmpLagByEmpId(empid);
        }
        public int langes_insert(subject_enty entty)
        {
            return dal.langes_insert(entty);
        }
        public object EmpSequenceId()
        {
            return dal.EmpSequenceId();
        }
        public int Delete_Lang(int sno,int empId)

        {
            return dal.Delete_Lang(sno,empId);
        }
        public DataSet Getempedit(int empid)
        {
            return dal.Getempedit(empid);
        }
        public int empudate(Employee_entity empenty, int empid)
        {
            return dal.empudate(empenty, empid);
        }
        public DataSet Getlenderedit(int lenderid)
        {
            return dal.Getlenderedit(lenderid);
        }
        public int lenderupdate(lender_entity enttity, int lenderid)
        {
            return dal.lenderupdate(enttity, lenderid);
        }
        public DataSet Getorderedit(int order_id)
        {
            return dal.Getorderedit(order_id);
        }
        public int orderupdate(order_entity orentity, int order_id)
        {
            return dal.orderupdate(orentity, order_id);
        }
        public int empresetpwd(employee_resetpassword emrepwd, int employeeid)
        {
            return dal.empresetpwd(emrepwd, employeeid);
        }

    }


}
