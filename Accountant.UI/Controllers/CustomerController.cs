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
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }
    }
}