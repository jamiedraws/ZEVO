using Dtm.Framework.Base.Controllers;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models.Ecommerce.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace ZEVO.Controllers
{
    public class IVRPhoneController : DtmContextController
    {
        public const string DOMAINVENDOR = "Domain";

        [HttpGet]
        public JsonResult GetPhoneNumber()
        {
            var result = new JsonResult();
            result.ContentType = "application/json";
            result.JsonRequestBehavior = JsonRequestBehavior.AllowGet;
            var response = new IVRResponse();
            var mediaId = string.Empty;
            try
            {
                var traffic = DtmContext.Traffic;
                if (DtmContext.VisitorSessionInfo != null)
                {
                    mediaId = DtmContext.VisitorSessionInfo.MediaId ?? string.Empty;
                }
             
                var campaignMedia = DtmContext.CampaignMediaIds.FirstOrDefault(oi => oi.Value.MediaId == mediaId);
                var referrer = Request != null ? Request.UrlReferrer.ToString() : string.Empty;
                var vendor = traffic != null ? traffic.Vendor : string.Empty;
                var mediaVendor = campaignMedia.Value != null ? campaignMedia.Value.Vendor : string.Empty;

                var splitUrl = referrer.Split('?');
                var isCloudDomain = false;
                if (splitUrl.Length > 1)
                {
                    var mid = splitUrl[1].Replace("mid=", string.Empty);
                    isCloudDomain = (mid == "10020092") ? true : false;

                }
                if(string.Equals(vendor, DOMAINVENDOR, StringComparison.InvariantCultureIgnoreCase)
                    && string.Equals(mediaVendor, DOMAINVENDOR, StringComparison.InvariantCultureIgnoreCase)
                    && !isCloudDomain)
                {
                    response.IsSuccess = true;
                    response.PhoneNumber = "800-713-8645";
                }
                
            }
            catch(Exception ex)
            {
                response.IsSuccess = false;
                response.Message = ex.Message;
                new SiteExceptionHandler(ex);
            }

            result.Data = response;

            return result;
        }

        private class IVRResponse
        {

            public IVRResponse()
            {
                IsSuccess = false;
                Message = string.Empty;
                PhoneNumber = string.Empty;
            }

            public bool IsSuccess { get; set; }

            public string Message { get; set; }

            public string PhoneNumber { get; set; }
        }
    }
}