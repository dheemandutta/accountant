using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Accountant.Entities;

namespace Accountant.DAL
{
    public class AccountMasterDAL
    {
        public DataSet GetAllAccounts()
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMastersAll", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            return ds;
        }

        public DataSet GetAccountByYearIdCompanyId(int yearId, int companyId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMastersByAndYearId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            return ds;
        }

        public DataSet GetAccountOpeningBalance(int accountId, int yearId, bool isMaster, DateTime fromDate, DateTime toDate, DateTime fiscalstartdate, int companyId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_GetTotalOpeningBalance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountId", accountId);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@isMaster", isMaster);
            cmd.Parameters.AddWithValue("@fromdate", fromDate);
            cmd.Parameters.AddWithValue("@todate", toDate);
            cmd.Parameters.AddWithValue("@fiscalstartdate", fiscalstartdate);
            cmd.Parameters.AddWithValue("@companyid", companyId);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            return ds;
        }

        public DataSet GetAccountByYearIdCompanyIdTransactionType(int yearId, int companyId, string transactionType, string AccTag)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMastersByYearIdCompanyIdTransactionTypeAccTag", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            cmd.Parameters.AddWithValue("@TransactionType", transactionType);
            cmd.Parameters.AddWithValue("@AccTag", AccTag);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            return ds;
        }

        public DataSet GetAccountById(int accountId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountId", accountId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        public DataSet GetAccountByGroupId(int groupId, int yearId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMastersByAndGroupId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@GroupId", groupId);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        public DataSet GetAccountByGroupIdYearIdAndCompanyId(int groupId, int yearId, int companyId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectAccountMastersByAndGroupIdAndCompanyId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@GroupId", groupId);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        public int GetAccountIdByAccountName(string accountName, int yearId, int companyId)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_GetAccountIdbyName", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountName", accountName);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);

            int accountId = (int)cmd.ExecuteScalar();
            con.Close();
            return accountId;


        }

        public int SaveAccountMaster(AccountMasterEntities account)
        {
            SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_InsertAccountMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountName", account.AccountName);
            cmd.Parameters.AddWithValue("@GroupId", account.GroupId);

            if (string.IsNullOrEmpty(account.AccountCode.ToString()))
            {
                cmd.Parameters.AddWithValue("@AccountCode", account.AccountCode);
            }
            else
            {
                cmd.Parameters.AddWithValue("@AccountCode", account.AccountCode);
            }


            cmd.Parameters.AddWithValue("@YearId", account.YearId);
            cmd.Parameters.AddWithValue("@isActive", account.isActive);
            cmd.Parameters.AddWithValue("@OpeningBalance", account.OpeningBalance);
            cmd.Parameters.AddWithValue("@ClosingBalance", account.ClosingBalance);
            cmd.Parameters.AddWithValue("@CompanyId", account.CompanyId);


            if (string.IsNullOrEmpty(account.ReferenceAccountId.ToString()) || (account.ReferenceAccountId == 0))
            {
                cmd.Parameters.AddWithValue("@ReferenceAccountId", account.ReferenceAccountId);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ReferenceAccountId", account.ReferenceAccountId);
            }


            cmd.Parameters.Add(new SqlParameter("@AccountId", SqlDbType.Int));
            cmd.Parameters[9].Direction = ParameterDirection.Output;


            cmd.ExecuteNonQuery();

            int accountId = (int)cmd.Parameters[9].Value;


            con.Close();

            return accountId;
        }

        public int SaveAccountMaster(AccountMasterEntities account, SqlConnection con, SqlTransaction tran)
        {
            // string constr = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            // SqlConnection myConn = new SqlConnection(constr);// connection string
            // myConn.Open();
            SqlCommand cmd = new SqlCommand("usp_InsertAccountMaster", con, tran);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountName", account.AccountName);
            cmd.Parameters.AddWithValue("@GroupId", account.GroupId);
            if (String.IsNullOrEmpty(account.AccountCode))
                cmd.Parameters.AddWithValue("@AccountCode", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@AccountCode", account.AccountCode);
            cmd.Parameters.AddWithValue("@YearId", account.YearId);
            cmd.Parameters.AddWithValue("@isActive", account.isActive);
            cmd.Parameters.AddWithValue("@OpeningBalance", account.OpeningBalance);
            cmd.Parameters.AddWithValue("@ClosingBalance", account.ClosingBalance);
            cmd.Parameters.AddWithValue("@CompanyId", account.CompanyId);
            if (string.IsNullOrEmpty(account.ReferenceAccountId.ToString()) || (account.ReferenceAccountId == 0))
            {
                cmd.Parameters.AddWithValue("@ReferenceAccountId", account.ReferenceAccountId);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ReferenceAccountId", account.ReferenceAccountId);
            }

            cmd.Parameters.Add(new SqlParameter("@AccountId", SqlDbType.Int));
            cmd.Parameters[9].Direction = ParameterDirection.Output;

            cmd.ExecuteNonQuery();

            int accountId = (int)cmd.Parameters[9].Value;

            //myConn.Close();

            return accountId;
        }

        public void UpdateAccount(int accountId, string accountName, int groupId, string accountCode, int yearId, bool isActive, decimal openingBalance, decimal closingBalance, int companyId, int? referenceAccountId)
        {
            string constr = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(constr);// connection string
            myConn.Open();
            SqlCommand cmd = new SqlCommand("usp_UpdateAccountMaster", myConn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountId", accountId);
            cmd.Parameters.AddWithValue("@AccountName", accountName);
            cmd.Parameters.AddWithValue("@GroupId", groupId);
            if (String.IsNullOrEmpty(accountCode))
                cmd.Parameters.AddWithValue("@AccountCode", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@AccountCode", accountCode);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@isActive", isActive);
            cmd.Parameters.AddWithValue("@OpeningBalance", openingBalance);
            cmd.Parameters.AddWithValue("@ClosingBalance", closingBalance);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            cmd.Parameters.AddWithValue("@ReferenceAccountId", referenceAccountId);
            cmd.ExecuteNonQuery();

            myConn.Close();


        }

        public void InsertUpdateDeleteAccountFromMasterCompany(int accountId, string accountName, int groupId, string accountCode, int yearId, bool isActive, decimal openingBalance, decimal closingBalance, int companyId, int? referenceAccountId, bool isDelete)
        {
            string constr = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(constr);// connection string
            myConn.Open();
            SqlCommand cmd = new SqlCommand("usp_InsertUpdateAccountFromMasterCompany", myConn);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@AccountId", accountId);
            cmd.Parameters.AddWithValue("@AccountName", accountName);
            cmd.Parameters.AddWithValue("@GroupId", groupId);
            //if (String.IsNullOrEmpty(accountCode))
            //    cmd.Parameters.AddWithValue("@AccountCode", DBNull.Value);
            //else
            //    cmd.Parameters.AddWithValue("@AccountCode", accountCode);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@isActive", isActive);
            cmd.Parameters.AddWithValue("@OpeningBalance", openingBalance);
            cmd.Parameters.AddWithValue("@ClosingBalance", closingBalance);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            cmd.Parameters.AddWithValue("@ReferenceAccountId", referenceAccountId);
            cmd.Parameters.AddWithValue("@isDelete", isDelete);
            cmd.ExecuteNonQuery();

            myConn.Close();
        }

        public void UpdateAccount(int accountId, string accountName, int groupId, string accountCode, int yearId, bool isActive, decimal openingBalance, decimal closingBalance, int companyId, SqlConnection myConn, SqlTransaction tran, int? referenceAccountId)
        {
            //string constr = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            //SqlConnection myConn = new SqlConnection(constr);// connection string
            //myConn.Open();
            SqlCommand cmd = new SqlCommand("usp_UpdateAccountMaster", myConn, tran);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountId", accountId);
            cmd.Parameters.AddWithValue("@AccountName", accountName);
            cmd.Parameters.AddWithValue("@GroupId", groupId);
            if (String.IsNullOrEmpty(accountCode))
                cmd.Parameters.AddWithValue("@AccountCode", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@AccountCode", accountCode);
            cmd.Parameters.AddWithValue("@YearId", yearId);
            cmd.Parameters.AddWithValue("@isActive", isActive);
            cmd.Parameters.AddWithValue("@OpeningBalance", openingBalance);
            cmd.Parameters.AddWithValue("@ClosingBalance", closingBalance);
            cmd.Parameters.AddWithValue("@CompanyId", companyId);
            cmd.Parameters.AddWithValue("@ReferenceAccountId", referenceAccountId);

            cmd.ExecuteNonQuery();

            //myConn.Close();


        }

    }
}
