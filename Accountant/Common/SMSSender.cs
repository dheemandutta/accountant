using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Collections.Specialized;

namespace Accountant.UI.Common
{
    public static class SMSSender
    {

        public static void SendSMS(string message,string toNumber)
        {
            string result = String.Empty;
            String smsmessage = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "k/OPSBOiU9g-PURQeb7SZSinzAznmKxHmTJ3yBPsWJ"},
                {"numbers" , toNumber},
                {"message" , smsmessage},
                {"sender" , "TXTLCL"}
                });
                result = System.Text.Encoding.UTF8.GetString(response);
                // return result;
            }
        }

    }
}