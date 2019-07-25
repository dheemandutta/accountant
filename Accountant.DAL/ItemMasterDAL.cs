using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Accountant.Entities;

namespace Accountant.DAL
{
    public class ItemMasterDAL
    {
        public int SaveItemMaster(ItemMasterEntities itemMaster)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CableManDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("stpSaveItemMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ItemName", itemMaster.ItemName.ToString());
      
            cmd.Parameters.AddWithValue("@UnitID", itemMaster.UnitID);

            if (itemMaster.ID > 0)
            {
                cmd.Parameters.AddWithValue("@ID", itemMaster.ID);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ID", DBNull.Value);
            }

            int recordsAffected = cmd.ExecuteNonQuery();
            con.Close();
            return recordsAffected;
        }

        public List<ItemMasterEntities> GetItemMasterPageWise(int pageIndex, ref int recordCount, int length)
        {
            List<ItemMasterEntities> itemMasterList = new List<ItemMasterEntities>();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CableManDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("stpGetItemMasterPageWise", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", length);
                    cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4);
                    cmd.Parameters["@RecordCount"].Direction = ParameterDirection.Output;
                    // cmd.Parameters.AddWithValue("@VesselID", VesselID);
                    con.Open();

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    //prodPOList = Common.CommonDAL.ConvertDataTable<ProductPOCO>(ds.Tables[0]);

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        itemMasterList.Add(new ItemMasterEntities
                        {
                            ID = Convert.ToInt32(dr["ID"]),
                            ItemName = Convert.ToString(dr["ItemName"]),
                            UnitName = Convert.ToString(dr["UnitName"])
                        });
                    }
                    recordCount = Convert.ToInt32(cmd.Parameters["@RecordCount"].Value);
                    con.Close();
                }
            }
            return itemMasterList;
        }

        public ItemMasterEntities GetItemMasterByID(int ID)
        {
            List<ItemMasterEntities> prodList = new List<ItemMasterEntities>();
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CableManDBConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("stpGetItemMasterByID", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", ID);
                    //cmd.Parameters.AddWithValue("@VesselID", VesselID);
                    con.Open();

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    con.Close();
                }
            }
            return ConvertDataTableToItemMasterList(ds);
        }
        private ItemMasterEntities ConvertDataTableToItemMasterList(DataSet ds)
        {
            ItemMasterEntities itemMasterPC = new ItemMasterEntities();
            //check if there is at all any data
            if (ds.Tables.Count > 0)
            {
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    if (item["ID"] != DBNull.Value)
                        itemMasterPC.ID = Convert.ToInt32(item["ID"].ToString());                   

                    if (item["ItemName"] != DBNull.Value)
                        itemMasterPC.ItemName = item["ItemName"].ToString();

                    if (item["UnitID"] != System.DBNull.Value)
                        itemMasterPC.UnitID = Convert.ToInt16(item["UnitID"]);
                    if (item["UnitName"] != System.DBNull.Value)
                        itemMasterPC.UnitName = item["UnitName"].ToString();

                    //List<int> days = new List<int>();

                    //departmentList.Add(departmentPC);
                }
            }
            return itemMasterPC;
        }

        public int DeleteItemMaster(int ID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CableManDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("stpDeleteItemMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);

            int recordsAffected = cmd.ExecuteNonQuery();
            con.Close();

            return recordsAffected;
        }
    }
}
