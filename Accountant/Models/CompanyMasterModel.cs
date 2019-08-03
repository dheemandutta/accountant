﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Accountant.UI.Models
{
    public class CompanyMasterModel
    {
        public int CompanyId { get; set; }
        public string CompanyName { get; set; }
        public string CompanyAddress { get; set; }
        public int YearId { get; set; }
        public string CompanyCode { get; set; }
        public Boolean isMaster { get; set; }
        public Boolean isCopied { get; set; }

        public int? ParentCompanyID { get; set; }

        public string YearDescription { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string AccountCode { get; set; }
    }
}