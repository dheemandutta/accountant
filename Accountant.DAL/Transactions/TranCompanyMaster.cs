using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Accountant.Entities;

namespace Accountant.DAL.Transactions
{
    public class TranCompanyMaster
    {
        public bool SaveCompany(CompanyMasterEntities company)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();

            SqlTransaction tran = con.BeginTransaction(IsolationLevel.ReadUncommitted, "SaveCompany");

            try
            {
                CompanyMasterDAL companyDal = new CompanyMasterDAL();
                AccountMasterDAL accountMasterDal = new AccountMasterDAL();
                if (company.isMaster)
                {
                    int companyID = companyDal.SaveCompanyMaster(company,con, tran);
            
                    AccountMasterEntities accountMasterOne=new AccountMasterEntities();
                    accountMasterOne.AccountName = "Sales Tax";
                    accountMasterOne.GroupId = 3;
                    accountMasterOne.AccountCode = string.Empty;
                    accountMasterOne.YearId = company.YearId;
                    accountMasterOne.isActive = 1;
                    accountMasterOne.OpeningBalance = 0.00;
                    accountMasterOne.ClosingBalance = 0.00;
                    accountMasterOne.CompanyId = company.CompanyId;
                    accountMasterOne.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterOne,con,tran);

                    AccountMasterEntities accountMasterTwo = new AccountMasterEntities();
                    accountMasterTwo.AccountName = "Sales";
                    accountMasterTwo.GroupId = 6;
                    accountMasterTwo.AccountCode = string.Empty;
                    accountMasterTwo.YearId = company.YearId;
                    accountMasterTwo.isActive = 1;
                    accountMasterTwo.OpeningBalance = 0.00;
                    accountMasterTwo.ClosingBalance = 0.00;
                    accountMasterTwo.CompanyId = company.CompanyId;
                    accountMasterTwo.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterTwo, con, tran);

                    AccountMasterEntities accountMasterThree = new AccountMasterEntities();
                    accountMasterThree.AccountName = "Purchase";
                    accountMasterThree.GroupId = 7;
                    accountMasterThree.AccountCode = string.Empty;
                    accountMasterThree.YearId = company.YearId;
                    accountMasterThree.isActive = 1;
                    accountMasterThree.OpeningBalance = 0.00;
                    accountMasterThree.ClosingBalance = 0.00;
                    accountMasterThree.CompanyId = company.CompanyId;
                    accountMasterThree.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterThree, con, tran);

                }
                else
                {
                    int companyID = companyDal.SaveCompanyMaster(company,con,tran);
                    //get parent company id
                    CompanyMasterDAL companydal = new CompanyMasterDAL();
                    
                    int parentCompanyId = company.ParentCompanyID.Value;

                    int salesTax = accountMasterDal.GetAccountIdByAccountName("Sales Tax", company.YearId, parentCompanyId);
                    int salesId = accountMasterDal.GetAccountIdByAccountName("Sales", company.YearId, parentCompanyId);
                    int purchaseId = accountMasterDal.GetAccountIdByAccountName("Purchase", company.YearId, parentCompanyId);

                    AccountMasterEntities accountMasterOne = new AccountMasterEntities();
                    accountMasterOne.AccountName = "Sales Tax";
                    accountMasterOne.GroupId = 3;
                    accountMasterOne.AccountCode = string.Empty;
                    accountMasterOne.YearId = company.YearId;
                    accountMasterOne.isActive = 1;
                    accountMasterOne.OpeningBalance = 0.00;
                    accountMasterOne.ClosingBalance = 0.00;
                    accountMasterOne.CompanyId = company.CompanyId;
                    accountMasterOne.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterOne, con, tran);

                    AccountMasterEntities accountMasterTwo = new AccountMasterEntities();
                    accountMasterTwo.AccountName = "Sales";
                    accountMasterTwo.GroupId = 6;
                    accountMasterTwo.AccountCode = string.Empty;
                    accountMasterTwo.YearId = company.YearId;
                    accountMasterTwo.isActive = 1;
                    accountMasterTwo.OpeningBalance = 0.00;
                    accountMasterTwo.ClosingBalance = 0.00;
                    accountMasterTwo.CompanyId = company.CompanyId;
                    accountMasterTwo.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterTwo, con, tran);

                    AccountMasterEntities accountMasterThree = new AccountMasterEntities();
                    accountMasterThree.AccountName = "Purchase";
                    accountMasterThree.GroupId = 7;
                    accountMasterThree.AccountCode = string.Empty;
                    accountMasterThree.YearId = company.YearId;
                    accountMasterThree.isActive = 1;
                    accountMasterThree.OpeningBalance = 0.00;
                    accountMasterThree.ClosingBalance = 0.00;
                    accountMasterThree.CompanyId = company.CompanyId;
                    accountMasterThree.ReferenceAccountId = null;
                    accountMasterDal.SaveAccountMaster(accountMasterThree, con, tran);
                }
                tran.Commit();
                con.Close();
                return true;
            }
            catch (Exception)
            {
                tran.Rollback();
                return false;
            }
            
        }
    }
}
