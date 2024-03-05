<%@ Control Language = "C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace = "Dtm.Framework.ClientSites" %>

<div id="form" class="c-brand--form col u-vw--40 u-pad @x2-pad">

    <% using (Html.BeginForm()) { %>




        <%= Html.Partial("ViewSwitchLink") %>
        <div id = "vse" data-vse-scroll class="vse"><%= Html.ValidationSummary("The following errors have occurred:") %></div>




        <% Html.RenderSnippet("PRODUCTSELECTION"); %>




        <%= Html.Partial("OrderFormReviewTable", Model) %>



        <%-- // Indicate Requires Field --%>
        <p data-required class="u-mar--bottom fn--center"><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %></p>



        <div class="row u-vw--100">



            <!-- // Column -->
            



            <!-- // Column -->
            <div class="col @sm-u-vw--50 @sm-u-pad--top u-pad--left u-pad--right ">

              



                <% Model.ShippingIsDifferentThanBilling = true; %>
                <%-- // BEGIN #ShippingIsSame --%>
                <label id = "ShippingIsSame" for="ShippingIsDifferentThanBilling" class="o-grid--vert--center u-mar--bottom" style="display:none;">
                    <div class="o-grid__col u-pad"><%= Html.CheckBoxFor(m => m.ShippingIsDifferentThanBilling) %></div>
                    <p class="o-grid__col u-pad"><%= LabelsManager.Labels["IsShippingDifferentFromBillingDisclaimer"] %></p>
                </label>
                <%-- // END #ShippingIsSame --%>

                <input type="hidden" name="OrderType" value="none"/>




                <%-- // BEGIN #shippingInformation --%>
                <fieldset id = "shippingInformation" class="c-brand--form__fieldset">

                    <%-- // @SHIPPING HEADLINE --%>
                    <div class="c-brand--form__legend u-vw--100">
                        <h3 class="c-brand--form__headline">
        					<b class="uppercase"><%= LabelsManager.Labels["ShippingStep"] %></b> <%= LabelsManager.Labels["ShippingHeadline"] %>
        				</h3>
                    </div>

                    <ul class="c-brand--form__list u-pad">

                        <%-- // @SHIPPING FULL NAME --%>
                        <li id = "ShippingFullNameCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "ShippingFullNameLabel" for="ShippingFullName" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["FullName"] %></label>
                            <input id = "ShippingFullName" name="ShippingFullName" type="text" value="<%= ViewData["ShippingFullName"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["FullNamePlaceholder"] %>" aria-labelledby="ShippingFullNameLabel" aria-required="true" class="c-brand--form__input o-grid__col o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET --%>
                        <li id = "ShippingStreetCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "ShippingStreetLabel" for="ShippingStreet" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Address"] %></label>
                            <input id = "ShippingStreet" name="ShippingStreet" type="text" value="<%= ViewData["ShippingStreet"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["AddressPlaceholder"] %>" aria-labelledby="ShippingStreetLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING STREET 2 --%>
                        <li id = "ShippingStreet2Ct" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "ShippingStreet2Label" for="ShippingStreet2" class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Address2"] %></label>
                            <input id = "ShippingStreet2" name="ShippingStreet2" type="text" value="<%= ViewData["ShippingStreet2"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["Address2Placeholder"] %>" aria-labelledby="ShippingStreet2Label" aria-required="false" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING CITY --%>
                        <li id = "ShippingCityCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "ShippingCityLabel" for="ShippingCity" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["City"] %></label>
                            <input id = "ShippingCity" name="ShippingCity" type="text" value="<%= ViewData["ShippingCity"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["CityPlaceholder"] %>" aria-labelledby="ShippingCityLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @SHIPPING COUNTRY --%>
                        <li id = "ShippingCountryCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label for="ShippingCountry" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Country"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingCountry, new SelectList(Model.Countries, "CountryCode", "CountryName"), LabelsManager.Labels["CountryPlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING STATE --%>
                        <li id = "ShippingStateCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label for="ShippingState" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["State"] %></label>
                            <%= Html.DropDownListFor(m => m.ShippingState, new SelectList(Model.States, "StateCode", "StateName"), LabelsManager.Labels["StatePlaceholder"], new { @class = "c-brand--form__select o-grid--col o-box o-shadow @xs-u-vw--100 fx--animate" })%>
                        </li>

                        <%-- // @SHIPPING ZIP --%>
                        <li id = "ShippingZipCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "ShippingZipLabel" for="ShippingZip" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Zip"] %></label>
                            <input id = "ShippingZip" name="ShippingZip" type="tel" value="<%= ViewData["ShippingZip"] %>" maxlength="10" placeholder="<%= LabelsManager.Labels["ZipPlaceholder"] %>" aria-labelledby="ShippingZipLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                            <input id = "BillingZip" name="BillingZip" type="hidden" value="32423" style="display:none;" />
                        </li>

                        <%-- // @PHONE --%>
                        <li id = "PhoneCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "PhoneLabel" for="Phone" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Phone"] %></label>
                            <input id = "Phone" name="Phone" type="tel" value="<%= ViewData["Phone"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["PhonePlaceholder"] %>" aria-labelledby="PhoneLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>

                        <%-- // @EMAIL --%>
                        <li id = "EmailCt" class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <label id = "EmailLabel" for="Email" data-required class="c-brand--form__label @xs-o-grid--none o-grid__col @xs-u-vw--10 fn--right"><%= LabelsManager.Labels["Email"] %></label>
                            <input id = "Email" name="Email" type="email" value="<%= ViewData["Email"] %>" maxlength="50" placeholder="<%= LabelsManager.Labels["EmailPlaceholder"] %>" aria-labelledby="EmailLabel" aria-required="true" class="c-brand--form__input o-box o-shadow @xs-u-vw--100 fx--animate">
                        </li>
                    </ul>

                </fieldset>
                <%-- // END #shippingInformation --%>



                <%-- // BEGIN #calltoAction --%>
                <fieldset id = "calltoAction" >

                    <ul class="c-brand--form__list @mv-u-pad--vert @dv-u-pad--horz">

                        <%-- // @PROCESS ORDER BUTTON --%>
                        <li class="c-brand--form__item o-grid--vert--center u-vw--100 u-mar--top">
                            <input id = "AcceptOfferButton" name="acceptOffer" type="submit" value="Continue" class="button u-mar--center">
                        </li>

                        <%-- // @PROCESS ORDER TEXT --%>
                        <li class="c-brand--form__item c-brand--form__submission o-grid--vert--center u-vw--100 fn--center" tabindex="0">
        					<p><%= LabelsManager.Labels["SubmissionDisclaimer"] %></p>
                            <% Html.RenderSiteControl("InsureShipCheckbox"); %>
                        </li>

                        <%-- // @SSL BADGE --%>
                        <li class="c-brand--form__item o-grid--vert--center u-vw--100">
                            <img src = "/shared/images/PositiveSSL_tl_trans.png?appV=<%= DtmContext.ApplicationVersion %>" alt="SSL" class="u-mar--center u-mar--horz" />
                        </li>

                    </ul>

                </fieldset>
                <%-- // END #calltoAction --%>

            </div>



        </div>



    <% } %>

</div>
