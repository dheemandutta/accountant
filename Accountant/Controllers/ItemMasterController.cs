using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Accountant.BL;
//using Accountant.Models;
using Accountant.Entities;
using System.Globalization;
using System.Web.Script.Serialization;
//using Accountant.Common;

namespace Accountant.UI
{
   // [TraceFilterAttribute]
    public class ItemMasterController : BaseController
    {
        // GET: ItemMaster
        //[SessionExpireFilterAttribute]
        public ActionResult Index()
        {
            GetAllUnitMasterForDrp();
            return View();
        }

        public JsonResult Add(ItemMasterEntities itemMasterEntities)
        {
            ItemMasterBL itemMasterBL = new ItemMasterBL();


            return Json(itemMasterBL.SaveItemMaster(itemMasterEntities), JsonRequestBehavior.AllowGet);
        }

        public JsonResult LoadData()
        {
            int draw, start, length;
            int pageIndex = 0;

            if (null != Request.Form.GetValues("draw"))
            {
                draw = int.Parse(Request.Form.GetValues("draw").FirstOrDefault().ToString());
                start = int.Parse(Request.Form.GetValues("start").FirstOrDefault().ToString());
                length = int.Parse(Request.Form.GetValues("length").FirstOrDefault().ToString());
            }
            else
            {
                draw = 1;
                start = 0;
                length = 50;
            }

            if (start == 0)
            {
                pageIndex = 1;
            }
            else
            {
                pageIndex = (start / length) + 1;
            }

            ItemMasterBL itemMasterBL = new ItemMasterBL();
            int totalrecords = 0;

            List<ItemMasterEntities> itemMasterEntitiesList = new List<ItemMasterEntities>();
            itemMasterEntitiesList = itemMasterBL.GetItemMasterPageWise(pageIndex, ref totalrecords, length/*, int.Parse(Session["VesselID"].ToString())*/);

            var data = itemMasterEntitiesList;

            return Json(new { draw = draw, recordsFiltered = totalrecords, recordsTotal = totalrecords, data = data }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetItemMasterByID(int ID)
        {
            ItemMasterBL itemMasterBL = new ItemMasterBL();
            ItemMasterEntities itemMasterEntitiesList = new ItemMasterEntities();

            itemMasterEntitiesList = itemMasterBL.GetItemMasterByID(ID);

            var data = itemMasterEntitiesList;
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteItemMaster(string ID)
        {
            ItemMasterBL itemMasterBL = new ItemMasterBL();
            return Json(itemMasterBL.DeleteItemMaster(int.Parse(ID)), JsonRequestBehavior.AllowGet);
            int recordaffected = 0;
            return Json(recordaffected, JsonRequestBehavior.AllowGet);
        }

        //for UnitMaster drp
        public void GetAllUnitMasterForDrp()
        {
            CableAssociationBL cableAssociationBL = new CableAssociationBL();
            List<ItemMasterEntities> pocoList = new List<ItemMasterEntities>();

            pocoList = cableAssociationBL.GetAllUnitMasterForDrp();

            List<ItemMasterEntities> itmasterList = new List<ItemMasterEntities>();

            foreach (ItemMasterEntities up in pocoList)
            {
                ItemMasterEntities unt = new ItemMasterEntities();
                unt.UnitID = up.UnitID;
                unt.UnitName = up.UnitName;

                itmasterList.Add(unt);
            }

            ViewBag.UnitMaster = itmasterList.Select(x =>
                                            new SelectListItem()
                                            {
                                                Text = x.UnitName,
                                                Value = x.UnitID.ToString()
                                            });

        }
    }
}