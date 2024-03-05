<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<header class="ham header__nav--fixedz l-header @dv-o-shadow--out @print-only-hide">

	<input type="checkbox" id="header__nav" class="ham__input header__nav__checkbox hide">

	<div id="nav" class="l-header__in u-pad ham__container">

		<div class="row-to-center width-at-100">

			<%-- Html.RenderSnippet("HEADER-MAIN"); --%>

			<!-- // LOGO -->
			<div class="col col--logo">
				<a href="index<%= Model.Extension %>" title="<%= CampaignName %>" class="l-header__logo">
					<img class="no-margin" src="/images/logo.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %>">
				</a>
			</div>

			<!-- // HEADLINE -->
			<div class="col col--headline center-text" tabindex="0">
				<h1>INSTANT ACTION BIO-SELECTIVE,<br>DNA-TARGETED INSECT SPRAY</h1>
			</div>

			<!-- // ORDER BTN -->
			<div class="@back-only-hide col u-vw--10 col--link">
				<a href="#order" title="Order <%= CampaignName %> Now" class="button">Order Now!</a>
			</div>

			<!-- // NAV -->
			<div class="col col--nav @back-only-hide">
				<label for="header__nav" class="ham__button">
					<span></span><span></span><span></span>
				</label>
			</div>

		</div>

	</div>

	<nav class="@back-only-hide l-header__nav ham__nav">

		<div class="l-header__in nav__group">
			<a href="index<%= Model.Extension %>#how-it-works" title="<%= CampaignName %> | How It Works">How It Works</a>
			<a href="index<%= Model.Extension %>#reviews" title="<%= CampaignName %> | Customer Reviews">Customer Reviews</a>
			<a href="#" title="<%= CampaignName %> | Tips & Tricks" class="hide">Tips & Tricks</a>
			<a href="faq<%= Model.Extension %>" title="<%= CampaignName %> | FAQ">FAQ</a>
			<a href="about<%= Model.Extension %>" title="<%= CampaignName %> | About Us">About Us</a>
		</div>

	</nav>

	<% if ( DtmContext.PageCode == "Index" ) { %>
	<nav class="@back-only-hide l-header__nav--fixed">
		<a href="#order" title="Order <%= CampaignName %> Now" class="button">
			<span>Order Now</span>
		</a>
		<a href="#video" title="<%= CampaignName %> | Videos" class="button">
			<span>Video</span>
		</a>
		<a href="#features" title="<%= CampaignName %> | Features & Benefits" class="button">
			<span>Features & Benefits</span>
		</a>
	</nav>
	<% } %>

</header>
