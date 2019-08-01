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

        public List<CompanyMasterEntities> GetAllCompanies()
        {
            CompanyMasterDAL companyDl = new CompanyMasterDAL();
            return companyDl.GetAllCompanies();
        }

        public CompanyMasterEntities GetCompanyById(int companyId)
        {
          
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                return companyDAL.GetCompanyById(companyId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<CompanyMasterEntities> GetAllMasterCompanies(int yearId)
        {
            DataSet dsCompany = new DataSet();
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
           
                return companyDAL.GetAllMasterCompanies(yearId);
           
        }

        public List<CompanyMasterEntities> GetCompanyByYearId(int yearId)
        {
            
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                return companyDAL.GetCompanyByYearId(yearId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<CompanyMasterEntities> GetBranchCompanyByYearId(int yearId)
        {
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                return  companyDAL.GetBranchCompanyByYearId(yearId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
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
        
        public List<CompanyMasterEntities> GetCompanyAndYear()
        {
          
            CompanyMasterDAL companyDAL = new CompanyMasterDAL();
            try
            {
                return companyDAL.GetCompanyAndYear();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally { companyDAL = null; }

        }
    }
}
