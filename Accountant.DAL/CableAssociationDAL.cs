using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Accountant.Entities;

namespace Accountant.DAL
{
    public class CableAssociationDAL
    {
        //for UnitMaster drp
        public List<ItemMasterEntities> GetAllUnitMasterForDrp()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CableManDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_GetAllUnitMasterForDrp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            DataTable myTable = ds.Tables[0];
            List<ItemMasterEntities> unitMasterList = myTable.AsEnumerable().Select(m => new ItemMasterEntities()
            {
                UnitID = m.Field<int>("UnitID"),
                UnitName = m.Field<string>("UnitName")

            }).ToList();
            con.Close();
            return unitMasterList;
        }

    }
}
