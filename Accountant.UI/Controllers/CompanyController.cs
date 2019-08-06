using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Accountant.BL;
using Accountant.Entities;
using System.Globalization;
using System.Web.Script.Serialization;

namespace Accountant.UI.Controllers
{
    public class CompanyController : Controller
    {
        // GET: Company
        public ActionResult Index()
        {

            GetAllYearList();
            GetAllParentCompanyList();
            LoadAllCompanyData();
            return View();
        }

      


        public ActionResult SaveCompanyMaster(AccountMasterEntities account)
        {
            AccountBL accountBl = new AccountBL();
            int recordsaffected = accountBl.SaveAccountMaster(account);
            return Json(recordsaffected, JsonRequestBehavior.AllowGet);
        }

        public ActionResult UpdateCompanyMaster(CompanyMasterEntities company)
        {
            CompanyMasterBL companybl = new CompanyMasterBL();
            int recordAffected = companybl.UpdateCompany(company);
            return Json(recordAffected, JsonRequestBehavior.AllowGet);
        }

        public void GetAllParentCompanyList()
        {
            CompanyMasterBL companyBl = new CompanyMasterBL();
            List<CompanyMasterEntities> companylist = new List<CompanyMasterEntities>();

            /*Need to be changed in future*/
            companylist = companyBl.GetAllMasterCompanies(1);

            ViewBag.masterCompanyallforDrwopdwon = companylist.Select(x =>
                    new SelectListItem()
                    {
                        Text = x.CompanyName,
                        Value = x.ParentCompanyID.ToString()
                    });
        }

        public void GetAllYearList()
        {
            YearMasterBL yearbl = new YearMasterBL();
            List<YearMasterEntities> yearsList = new List<YearMasterEntities>();
            yearsList = yearbl.GetYears();
            ViewBag.getallyearlist = yearsList.Select(x =>
                  new SelectListItem
                  {
                      Text = x.YearDescription,
                      Value = x.YearId.ToString()
                  });
        }

        public ActionResult GetCompanyId(int CompanyId)
        {
            CompanyMasterBL compnayBl = new CompanyMasterBL();
            return Json(compnayBl.GetCompanyById(CompanyId), JsonRequestBehavior.AllowGet);
        }
      

        public JsonResult LoadAllCompanyData()
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

            CompanyMasterBL companyBl = new CompanyMasterBL();
            int totalrecords = 0;

            List<CompanyMasterEntities> companymasterList = new List<CompanyMasterEntities>();
            companymasterList = companyBl.GetAllCompanies(pageIndex, ref totalrecords, length/*, int.Parse(Session["VesselID"].ToString())*/);

            var data = companymasterList;
            return Json(new { draw = draw, recordsFiltered = totalrecords, recordsTotal = totalrecords, data = data }, JsonRequestBehavior.AllowGet);
        }
    }
}