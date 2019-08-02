using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Mvc;
using Accountant.BL;
using Accountant.Entities;


namespace CableMan.UI.Controllers
{
    public class AddNewCompanyController : Controller
    {
        // GET: AddNewCompany
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

        public void GetCompanyId(int CompanyId)
        {

        }
        public JsonResult LoadAllCompanyData()
        {
            CompanyMasterBL companyBl = new CompanyMasterBL();
            List<CompanyMasterEntities> companymasterList = new List<CompanyMasterEntities>();
            companymasterList = companyBl.GetAllCompanies();
            var data = companymasterList;
            return Json(JsonRequestBehavior.AllowGet);

            }


    }
}