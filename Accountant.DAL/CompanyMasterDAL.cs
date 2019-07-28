using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Accountant.Entities;

namespace Accountant.DAL
{
    public class CompanyMasterDAL
    {
        //If there is no parent compant
        public int SaveCompanyMaster(CompanyMasterEntities company, SqlConnection con, SqlTransaction tran)
        {
           
            SqlCommand cmd = new SqlCommand("usp_InsertCompanyMaster", con,tran);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyName", company.CompanyName);
            cmd.Parameters.AddWithValue("@CompanyAddress", company.CompanyAddress);
            cmd.Parameters.AddWithValue("@YearId", company.YearId);

            if(string.IsNullOrEmpty(company.ParentCompanyID.ToString())||(company.ParentCompanyID==0))
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", company.ParentCompanyID);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", company.ParentCompanyID);
            }

            cmd.Parameters.AddWithValue("@CompanyId", company.CompanyId);

            cmd.Parameters.Add(new SqlParameter("CompanyId", SqlDbType.Int));
            cmd.Parameters[6].Direction = ParameterDirection.Output;

            cmd.ExecuteNonQuery();
            int companyID = (int)cmd.Parameters[6].Value;
            return companyID;

        }

        public int SaveCompany(CompanyMasterEntities company)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_InsertCompanyMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyName", company.CompanyName);
            cmd.Parameters.AddWithValue("@CompanyAddress", company.CompanyAddress);
            cmd.Parameters.AddWithValue("@YearId", company.YearId);
            cmd.Parameters.AddWithValue("@CompanyCode", company.CompanyCode);
            cmd.Parameters.AddWithValue("@isMaster", company.isMaster);

            if (string.IsNullOrEmpty(company.ParentCompanyID.ToString()) || (company.ParentCompanyID == 0))
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", company.ParentCompanyID);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", company.ParentCompanyID);
            }

            cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
            cmd.Parameters[6].Direction = ParameterDirection.Output;

            cmd.ExecuteNonQuery();

            int companyID = (int)cmd.Parameters[6].Value;
            return companyID;
        }
    }
}
