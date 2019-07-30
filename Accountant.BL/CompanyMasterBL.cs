using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Accountant.Entities;
using Accountant.DAL;
using Accountant.DAL.Transactions;

namespace Accountant.BL
{
    public class CompanyMasterBL
    {
        public bool SaveCompany (CompanyMasterEntities compnayentity)
        {
            //CompanyMasterEntities compnayentity = new CompanyMasterEntities();
            TranCompanyMaster tran = new TranCompanyMaster();
            return tran.SaveCompany(compnayentity);
        }

        //public DataSet GetAllCompanies()
        //{
        //    DataSet dsCompany = new DataSet();
        //    CompanyMasterDAL companyDAL = new CompanyMasterDAL();
        //    try
        //    {
        //        dsCompany = companyDAL.GetAllCompanies();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    return dsCompany;
        //}

        public List<CompanyMasterEntities> GetAllCompanies()
        {
            CompanyMasterDAL companyDl = new CompanyMasterDAL();
            return companyDl.GetAllCompnay();
        }

        public DataSet GetCompanyById(int companyId)
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                dsCompany = companyDAL.GetCompanyById(companyId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsCompany;
        }

        public DataSet GetAllMasterCompanies(int yearId)
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                dsCompany = companyDAL.GetAllMasterCompanies(yearId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsCompany;
        }

        public DataSet GetCompanyByYearId(int yearId)
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                dsCompany = companyDAL.GetCompanyByYearId(yearId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsCompany;
        }

        public DataSet GetBranchCompanyByYearId(int yearId)
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                dsCompany = companyDAL.GetBranchCompanyByYearId(yearId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsCompany;
        }

        public int UpdateCompany(CompanyMasterEntities companyentity)
        {
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
               return companyDAL.UpdateCompany(companyentity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { companyDAL = null; }
        }

        public DataSet GetCompanyAndYear()
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                dsCompany = companyDAL.GetCompanyAndYear();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { companyDAL = null; }
            return dsCompany;
        }
    }
}
