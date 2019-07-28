using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class CompanyRelationEntities
    {
        public int CompanyId { get; set; }
        public int ChildCompanyId { get; set; }
        public int YearId { get; set; }
    }
}
