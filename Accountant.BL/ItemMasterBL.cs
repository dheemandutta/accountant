using Accountant.DAL;
using Accountant.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accountant.BL
{
    public class ItemMasterBL
    {
        public int SaveItemMaster(ItemMasterEntities itemMasterEntities)
        {
            ItemMasterDAL itemMasterDAL = new ItemMasterDAL();
            return itemMasterDAL.SaveItemMaster(itemMasterEntities);
        }

        public List<ItemMasterEntities> GetItemMasterPageWise(int pageIndex, ref int recordCount, int length)
        {
            ItemMasterDAL itemMasterDAL = new ItemMasterDAL();
            return itemMasterDAL.GetItemMasterPageWise(pageIndex, ref recordCount, length);
        }

        public ItemMasterEntities GetItemMasterByID(int ID)
        {
            ItemMasterDAL itemMasterDAL = new ItemMasterDAL();
            return itemMasterDAL.GetItemMasterByID(ID);
        }

        public int DeleteItemMaster(int ID)
        {
            ItemMasterDAL itemMasterDAL = new ItemMasterDAL();
            return itemMasterDAL.DeleteItemMaster(ID);

        }
    }
}
