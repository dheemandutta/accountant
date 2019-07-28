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
    }
}
