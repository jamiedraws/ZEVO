<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
	var CampaignName = SettingsManager.ContextSettings["Label.ProductName"];
	var EnableOrderForm = SettingsManager.ContextSettings["Order.EnableOrderform", true];
	var ShowMobileOrderForm = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.ShowOrderFormOnMobile", false];
%>

	<%-- // Displays the form top on desktop --%>
	<section id="order" class="l-outer__in section--btf bg--white" tabindex="0">

		<div class="padding @x2-pad center-text section__in">

			<% Html.RenderSnippet("FORMTOP"); %>

		</div>

	</section>



	<section id="content_bottom" class="l-outer__in c-brand block">

		<div class="section__in">

			<% if ( !ShowMobileOrderForm ) { %>
				<%-- // Displays the back button on a mobile order form --%>
				<% Html.RenderPartial("MobileOrderFormNav", Model); %>

			<% } %>

			<% if ( EnableOrderForm ) { %>

				<%-- // Displays the order form --%>
				<% Html.RenderPartial("OrderForm", Model); %>

			<% } else { %>

				<%-- // Displays the out of stock text --%>
				<% Html.RenderPartial("OutOfStock", Model); %>

			<% } %>

			<%-- // Displays the offer details on desktop --%>
			<% if ( EnableOrderForm ) { %>

				<div class="u-mar--bottom @x2-mar">

					<div class="l-disclaimer o-box u-vw--80 u-mar--center" tabindex="0">

						<% Html.RenderSnippet("OFFERDETAILS"); %>

					</div>

				</div>

			<% } %>

		</div>

	</section>