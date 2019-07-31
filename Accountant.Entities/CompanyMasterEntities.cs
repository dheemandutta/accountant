using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class CompanyMasterEntities
    {
        public int CompanyId { get; set; }
        public string CompanyName { get; set; }
        public string CompanyAddress { get; set; }
        public int YearId { get; set; }
        public string CompanyCode { get; set; }
        public bool isMaster { get; set; }
        public bool isCopied { get; set; }

        public int ? ParentCompanyID { get; set; }

        public YearMasterEntities YearDescription { get; set; }
    }
}
