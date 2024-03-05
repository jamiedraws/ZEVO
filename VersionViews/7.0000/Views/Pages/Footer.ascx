<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

	<footer data-eflex-footer-custom class="l-footer gfx-primary o-box--none block u-pad @print-only-hide">

		<nav class="l-footer__in c-brand u-pad fn--center u-mar--center">

			<% Html.RenderSnippet("FOOTER-FRONTEND"); %>

			<% if ( !DtmContext.Page.IsStartPageType ) { %>
				<div class="u-pad--vert center-margin @mobile-only-width-at-60">
					<%= Html.Partial("ViewSwitchLink") %>
				</div>
			<% } %>

			<img src="/images/zevo-white.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %>">

		</nav>

	</footer>




	<%-- // @JS-FOOTER --%>
	<% switch ( DtmContext.Page.IsStartPageType ) { %>

		<% case false: %>


			<% break; %>
		<% default: %>

			<% Html.RenderPartial("Scripts"); %>
			<% Html.RenderSnippet("ORDERFORMSCRIPT"); %>
			<script type="text/javascript">
				$(window).load(function () {
					_dtm.expressCheckout({
						submit: $('#stripeSubmit')
					});
                });
			</script>

			<% break; %>

	<% } %>



	<%= Model.FrameworkVersion %>

	<div class="l-controls">
		<% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
		<% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
		<% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
	</div>

	<script src="/js/app-no-lazy-load.js?appV=<%= DtmContext.ApplicationVersion %>" async></script>
	<script>
		DtmContext.ApplicationExtension = '<%= DtmContext.ApplicationExtension %>';

		function onAppReady (app) {
			// app.$html.on('dtm/vimeo', function (vimeo) {
			// 	_dtm.makeVimeoResponsive({
			// 		scaleByElement : $('[data-eflex-scale-vimeo-custom]')
			// 	});
			// });

			app.enableFixedNavTargetOffset = function () {
				return app.$window.width() <= 700 ? true : false;
			};
			
			_dtm.callbackAlert = function (data, $vse) {
				event.preventDefault();
				app.gotoTarget($('#order'));
			};

			<% if ( DtmContext.PageCode == "FAQ" ) { %>
				getFAQ(app);	
			<% } %>

			<% if ( DtmContext.PageCode == "Index" ) { %>
				var order = document.querySelector('#order'),
					order__pos = order.offsetTop,
					sticky__nav = document.querySelector('.l-header__nav--fixed');

				function debounce(func, wait, immediate) {
					var timeout;
					return function() {
						var context = this, args = arguments;
						var later = function() {
							timeout = null;
							if (!immediate) func.apply(context, args);
						};
						var callNow = immediate && !timeout;
						clearTimeout(timeout);
						timeout = setTimeout(later, wait);
						if (callNow) func.apply(context, args);
					};
				};
					
				var displayNavByCoordinates = debounce(function () {
					if ( window.scrollY + ( window.innerHeight / 2 ) > order__pos ) {
						sticky__nav.classList.add('nav--hidden');
					} else {
						sticky__nav.classList.remove('nav--hidden');
					}
				}, 50);

				window.addEventListener('scroll', displayNavByCoordinates);

				registerEvent('_dtmExpressCheckoutPaymentClick', function (get) {
					if ( get.detail.paymentType.match(/PayPal/i) ) {
						setTimeout(function () {
							$.scrollTo($('#calltoAction'), { top : -66 });
						}, 100);
					}
				});
			<% } %>

			if ( $('.validation-summary-errors').is(':visible') ) {
				if ( app.enableFixedNavTargetOffset() ) {
					app.getHeightFromStickyNav().done(function (offset) {
						$.scrollTo($('.validation-summary-errors'), { top : -(offset.sticky) });
					});
				} else {
					$.scrollTo($('.validation-summary-errors'));
				}
			}

			if ( app.enableFixedNavTargetOffset() ) {
				_dtm.mobile.setResponsiveFooter();
			}

			$('.l-footer').eflex('stretch');
		}
	</script>