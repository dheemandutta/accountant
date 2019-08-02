using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class AccountMasterEntities
    {
        public int AccountId { get; set; }
        public string AccountName { get; set; }
        public int GroupId { get; set; }
        public string AccountCode { get; set; }
        public int YearId { get; set; }
        public int isActive { get; set; }
        public double OpeningBalance { get; set; }
        public double ClosingBalance{ get; set; }
        public int CompanyId { get; set; }
        public int ? ReferenceAccountId { get; set; }
        public bool isCopied { get; set; }

    }
}
