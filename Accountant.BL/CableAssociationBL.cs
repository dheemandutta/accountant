using Accountant.DAL;
using Accountant.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.BL
{
    public class CableAssociationBL
    {
       
        //for UnitMaster drp
        public List<ItemMasterEntities> GetAllUnitMasterForDrp()
        {
            CableAssociationDAL cableAssociation = new CableAssociationDAL();
            return cableAssociation.GetAllUnitMasterForDrp();
        }

    }
}
