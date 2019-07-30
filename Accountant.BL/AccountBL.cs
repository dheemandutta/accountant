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
    public class AccountBL
    {
        public int SaveAccountMaster(AccountMasterEntities accounts)
        {
            AccountMasterDAL accountDal = new AccountMasterDAL();
            return accountDal.SaveAccountMaster(accounts);
        }
    }
}
