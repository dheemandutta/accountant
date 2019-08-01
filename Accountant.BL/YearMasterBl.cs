using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Accountant.Entities;
using Accountant.DAL;

namespace Accountant.BL
{
    public class YearMasterBL
    {
        public List<YearMasterEntities> GetYears()
        {
            YearMasterDAL yearsDl = new YearMasterDAL();
            return yearsDl.GetYears();
        }
    }
}
