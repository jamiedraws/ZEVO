using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models;
using Dtm.Framework.Models.Ecommerce;


namespace ZEVO.PageHandlers
{
    public class GlobalPageHandler : PageHandler
    {

        #region " Overrides... "

        public override void PostValidate(ModelStateDictionary modelState)
        {
            if(DtmContext.Page.IsStartPageType)
            {
                var total = ActionItems.Where(a => a.Key != "ADDSHIP").Sum(a => a.Value);

                if(total == 0)
                {
                    modelState.AddModelError("Form", "Please ensure a product is selected");
                }
            }
        }

        public override void PostProcessPageActions()
        {
            //Checking for the pages code based on the main order pages array on line ten.
            if (DtmContext.Page.IsStartPageType)
            {
                Trace.WriteLine("Processing post page actions...");

                if(DtmContext.Version < 6)
                {
                    var product = new string[] { "ZCA", "ZFA", "ZCA5", "ZFA5" };
                    var shoppingCart = DtmContext.ShoppingCart
                                   .Where(i => product.Contains(i.ProductCode))
                                   .ToList();

                    var triplePackTotal = DtmContext.ShoppingCart["ZC3PACK"].Quantity + DtmContext.ShoppingCart["ZF3PACK"].Quantity + DtmContext.ShoppingCart["ZC3PACK5"].Quantity + DtmContext.ShoppingCart["ZF3PACK5"].Quantity;
                    if (triplePackTotal == 0)
                    {
                        if (shoppingCart.Sum(i => i.Quantity) > 0)
                        {
                            var firstItem = shoppingCart.First();

                            OrderManager.SetProductQuantity(firstItem.ProductCode, firstItem.Quantity - 1);

                            var firstItemCode = firstItem.ProductCode.Replace("A", "S");

                            OrderManager.SetProductQuantity(firstItemCode, 1);
                        }
                    }
                }
            }
        }

        public void ProcessShopify()
        {
            if (Form["acceptOffer"] != null && DtmContext.OrderId > 0)
            {

                var state = DtmContext.CampaignStates.FirstOrDefault(x => x.StateCode == Order.ShippingState || x.StateName == Order.ShippingState);

                if (state != null)
                {
                    var prodCount = -1;
                    var productsString = string.Join("", DtmContext.ShoppingCart.Where(x => x.Quantity > 0)
                        .Select(y =>
                        {
                            prodCount++;
                            return string.Format("&ITEM{2}={0}&QTY{2}={1}", y.ProductCode, y.Quantity, prodCount);
                        }));

                    var shippingString =
                        "&EMAIL=" + Order.Email +
                        "&FNAME=" + Order.ShippingFirstName +
                        "&LNAME=" + Order.ShippingLastName +
                        "&ADDR1=" + Order.ShippingStreet +
                        "&ADDR2=" + Order.ShippingStreet2 +
                        "&CITY=" + Order.ShippingCity +
                        "&ZIP=" + Order.ShippingZip +
                        "&STATE=" + state.StateName;

                    Order.OrderStatusId = 1;

                    Response.StatusCode = 307;
                    Response.Redirect("/shared/DirectCheckout.aspx?ect=SHOPIFY" + productsString + shippingString + "&COVID=" + DtmContext.VersionId + "&ORDERID=" + DtmContext.OrderId);
                }                
            }
        }

        public override void PostSetOrderStatus()
        {
            if (DtmContext.Version == 99)
            {
                Order.BillingTitle = Order.ShippingTitle;
                Order.BillingFullName = Order.ShippingFullName;
                Order.BillingFirstName = Order.ShippingFirstName;
                Order.BillingLastName = Order.ShippingLastName;
                Order.BillingCountry = Order.ShippingCountry;
                Order.BillingState = Order.ShippingState;
                Order.BillingZip = Order.ShippingZip;
                Order.BillingCity = Order.ShippingCity;
                Order.BillingStreet = Order.ShippingStreet;
                Order.BillingStreet2 = Order.ShippingStreet2;                
                ProcessShopify();
            }

        }
        #endregion
    }
}
