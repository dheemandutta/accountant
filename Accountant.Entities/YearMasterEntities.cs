using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.Entities
{
    public class YearMasterEntities
    {
        public int YearId { get; set; }
        public string YearDescription { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool IsActive{ get; set; }
    }
}
