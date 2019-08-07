using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class CustomerEntities
    {
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string Address { get; set; }
        public string PanNo { get; set; }
        public string CstNo { get; set; }
        public string VatNo { get; set; }

        public int AccountId { get; set; }
        public int YearId { get; set; }
        public string AccountName { get; set; }
        public int GroupId { get; set; }
        public string AccountCode { get; set; }
        public Boolean isActive { get; set; }
        public Decimal OpeningBalance { get; set; }
        public Decimal ClosingBalance { get; set; }
        public int CompanyId { get; set; }
        public int ReferenceAccountId { get; set; }
    }
}