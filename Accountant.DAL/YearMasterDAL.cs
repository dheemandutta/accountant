using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Accountant.Entities;

namespace Accountant.DAL
{
    public class YearMasterDAL
    {
        public List<YearMasterEntities> GetYears()
        {
            List<YearMasterEntities> yearList = new List<YearMasterEntities>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountantDBConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_SelectYearMastersAll", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();            
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                yearList.Add(new YearMasterEntities
                {
                    YearId = Convert.ToInt32(dr["YearId"].ToString()),
                    YearDescription = Convert.ToString(dr["YearDescription"]),
                    StartDate = Convert.ToDateTime(dr["StartDate"].ToString()),
                    EndDate = Convert.ToDateTime(dr["EndDate"].ToString()),
                    IsActive = Convert.ToBoolean(dr["IsActive"].ToString()),
                });
            }
            return yearList;
            
        }
    }
}
