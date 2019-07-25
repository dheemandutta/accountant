using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class CableAssociationEntities
    {
        public int ID { get; set; }
        public int OwnerID { get; set; }
        public int DistributorID { get; set; }
        public string OwnerName { get; set; }
        public string DistributorName { get; set; }
        //public DateTime StartDate { get; set; }
        //public DateTime EndDate { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
    }
}
