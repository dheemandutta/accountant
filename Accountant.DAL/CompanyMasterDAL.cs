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
        public int SaveCompany(CompanyMasterEntities company)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_InsertCompanyMaster_Web", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CompanyName", company.CompanyName);
            cmd.Parameters.AddWithValue("@CompanyAddress", company.CompanyAddress);
            cmd.Parameters.AddWithValue("@YearId", company.YearId);
            cmd.Parameters.AddWithValue("@CompanyCode", company.CompanyCode);
            cmd.Parameters.AddWithValue("@isMaster", company.isMaster);

            if (string.IsNullOrEmpty(company.ParentCompanyID.ToString()) || (company.ParentCompanyID == 0))
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", DBNull.Value);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ParentCompanyId", company.ParentCompanyID);
            }

            cmd.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int));
            cmd.Parameters[6].Direction = ParameterDirection.Output;

            int recordsAffected = cmd.ExecuteNonQuery();
            con.Close();
            return recordsAffected;
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
        public List<CompanyMasterEntities> GetAllCompanies(int pageIndex, ref int recordCount, int length)
        {
            List<CompanyMasterEntities> companyList = new List<CompanyMasterEntities>();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_SelectCompanyMastersAll_New", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", length);
                    cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4);
                    cmd.Parameters["@RecordCount"].Direction = ParameterDirection.Output;
                    // cmd.Parameters.AddWithValue("@VesselID", VesselID);
                    con.Open();

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        companyList.Add(new CompanyMasterEntities
                        {
                            // CompanyId= Convert.ToInt32(dr["CompanyId"].ToString()),
                            CompanyName = Convert.ToString(dr["CompanyName"]),
                            //YearId = Convert.ToInt32(dr["YearId"].ToString()),
                            Year = Convert.ToString(dr["YearDescription"]),
                            //  YearDescription = Convert.ToString(dr["YearDescription"]),
                            CompanyCode = Convert.ToString(dr["CompanyCode"]),
                        });
                    }
                    recordCount = Convert.ToInt32(cmd.Parameters["@RecordCount"].Value);
                    con.Close();
                }
            }
            return companyList;
        }

        public List<CompanyMasterEntities> GetAllMasterCompanies(int yearId)
        {
           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            List<CompanyMasterEntities> listMasterCompnay = new List<CompanyMasterEntities>();
            CompanyMasterEntities company = new CompanyMasterEntities();
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

        
        public List<CompanyMasterEntities> GetCompanyAndYear()
        {
            List<CompanyMasterEntities> companyList = new List<CompanyMasterEntities>();
            string constring = ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectCompanyAndYear", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                companyList.Add(new CompanyMasterEntities
                {
                    CompanyId = Convert.ToInt32(dr["ComapnyId"].ToString()),
                    CompanyName = Convert.ToString(dr["CompanyName"]),
                    YearId = Convert.ToInt32(dr["YearId"].ToString()),
                    YearDescription = Convert.ToString(dr["YearDescription"]),
                    CompanyCode = Convert.ToString(dr["CompanyCode"]),
                    StartDate = Convert.ToDateTime(dr["StartDate"].ToString()),
                    EndDate = Convert.ToDateTime(dr["EndDate"].ToString()),
                });
            }
            con.Close();
            return companyList;
        }
      
       
    }
}
