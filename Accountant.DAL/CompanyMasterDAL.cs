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

        public int UpdateCompany(CompanyMasterEntities company)
        {
            string constr = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(constr);// connection string
            myConn.Open();
            SqlCommand cmd = new SqlCommand("usp_UpdateCompanyMaster", myConn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyId", company.CompanyId);
            cmd.Parameters.AddWithValue("@CompanyName", company.CompanyName);
            cmd.Parameters.AddWithValue("@CompanyAddress", company.CompanyAddress);
            cmd.Parameters.AddWithValue("@YearId", company.YearId);
            cmd.Parameters.AddWithValue("@CompanyCode", company.CompanyCode);
            int recordsAffected = cmd.ExecuteNonQuery();

            myConn.Close();
            return recordsAffected;
        }
        public List<CompanyMasterEntities> GetAllCompnay()
        {
            List<CompanyMasterEntities> companyList = new List<CompanyMasterEntities>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectCompanyMastersAll", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                companyList.Add(new CompanyMasterEntities
                {
                    CompanyId= Convert.ToInt32(dr["CompanyId"].ToString()),
                    CompanyName = Convert.ToString(dr["CompanyName"]),
                    YearId=Convert.ToInt32(dr["YearId"].ToString()),
                  //  YearDescription = Convert.ToString(dr["YearDescription"]),
                    CompanyCode=Convert.ToString(dr["CompanyCode"]),
                });
            }
            con.Close();
            return companyList;
        }

        public List<CompanyMasterEntities> GetAllMasterCompanies(int yearId)
        {
            List<CompanyMasterEntities> listMasterCompnay = new List<CompanyMasterEntities>();
            CompanyMasterEntities company = new CompanyMasterEntities();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_GetAllMasterCompanies", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listMasterCompnay.Add(new CompanyMasterEntities
                {
                    CompanyId = Convert.ToInt32(dr["CompanyId"].ToString()),
                    CompanyName = Convert.ToString(dr["CompanyName"]),
                    CompanyCode = Convert.ToString(dr["CompanyCode"]),
                });
            }
            con.Close();
            return listMasterCompnay;
        }

        public CompanyMasterEntities GetCompanyById(int companyId)
        {
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectCompanyMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            CompanyMasterEntities company = new CompanyMasterEntities();
            con.Close();
            company.CompanyId = Convert.ToInt32(ds.Tables[0].Rows[0]["CompnayId"].ToString());
            company.CompanyName = ds.Tables[0].Rows[0]["CompanyName"].ToString();
            return company;

        }

        public List<CompanyMasterEntities> GetCompanyByYearId(int yearId)
        {
            List<CompanyMasterEntities> CompanyList = new List<CompanyMasterEntities>();
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectCompanyMastersByAndYearId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach(DataRow dr in ds.Tables[0].Rows)
            {
                CompanyList.Add(new CompanyMasterEntities
                {
                    CompanyId = Convert.ToInt32(dr["CompanyId"].ToString()),
                    CompanyName = Convert.ToString(dr["CompanyName"]),
                    YearId = Convert.ToInt32(dr["YearId"].ToString()),
                    CompanyCode = Convert.ToString(dr["CompanyCode"]),
                    isMaster = Convert.ToBoolean(dr["isMaster"].ToString()),
                });
            }
            con.Close();
            return CompanyList;
        }

        public List<CompanyMasterEntities> GetBranchCompanyByYearId(int yearId)
        {
            List<CompanyMasterEntities> CompanyList = new List<CompanyMasterEntities>();
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectMasterCompanyByAndYearId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                CompanyList.Add(new CompanyMasterEntities
                {
                    CompanyId = Convert.ToInt32(dr["CompanyId"].ToString()),
                    CompanyName = Convert.ToString(dr["CompanyName"]),
                    YearId = Convert.ToInt32(dr["YearId"].ToString()),
                    CompanyCode = Convert.ToString(dr["CompanyCode"]),
                    isMaster = Convert.ToBoolean(dr["isMaster"].ToString()),
                });
            }
            con.Close();
            return CompanyList;
        }
       
        public List<CompanyMasterEntities> GetParentCompany(int companyId, int yearId)
        {
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            List<CompanyMasterEntities> companyList = new List<CompanyMasterEntities>();
            SqlCommand cmd = new SqlCommand("usp_GetParentCompnay", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                companyList.Add(new CompanyMasterEntities
                {
                    CompanyId = Convert.ToInt32(dr["CompanyId"].ToString()),
                });
            }
            con.Close();
            return companyList;
        }

        /*Dheeman da nicher method ta multiple table a ache, viewmodel nite hbe ki?*/
        public DataSet GetCompanyAndYear()
        {
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectCompanyAndYear", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        /*Dheeman da oporer method ta multiple table a ache, viewmodel nite hbe ki?*/
       
    }
}
