using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Accountant.BL;
//using CableMan.Models;
using Accountant.Entities;
using System.Globalization;
using System.Web.Script.Serialization;
using System.IO;
using System.Web.Security;
//using CableMan.Common;

namespace Accountant.UI
{
    
    public class HomeController : BaseController
    {
        
        public ActionResult Index()
        {
            ViewData["SubTitle"] = "CableMan 24x7";
            ViewData["Message"] = "";

           

            return View();
        }

        //public ActionResult Minor()
        //{
        //    ViewData["SubTitle"] = "Simple example of second view";
        //    ViewData["Message"] = "";

        //    return View();
        //}

     
       
    }
}