<%@ Page Language = "C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace = "Dtm.Framework.ClientSites" %>

<asp:Content ID = "Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID = "Content2" ContentPlaceHolderID="MainContent" runat="server">

	<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

	<!-- Above the fold -->
	<div class="section section--atf">
		<div class="section__in">
			<div class="row atf">
				<div class="col-to-middle atf__offer">
					<a href = "#order" title="Order <%= CampaignName %> Now" class="button">Order Now</a>
  					<a href = "#order" title= "Order <%= CampaignName %> Now" class="atf__offer__img">
						<img src = "/images/main-offer-sm.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> available for flying and crawling insects">
					</a>
				</div>
				<div class="col atf__media">
					<aside id = "video" class="atf__aside" data-eflex-scale-vimeo-custom>
						<iframe id = "video-video1199" src="https://player.vimeo.com/video/279744844?autoplay=0&title=0&byline=0&portrait=0" width="394" height="222" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
						<ul id = "playlist" class="nu-row flex media__list">
							<li class="item"><button class="button">Watch The Show</button></li>
							<li class="item"><button class="button">Customer Reviews</button></li>
							<li class="item"><button class="button">How It Works</button></li>
						</ul>
					</aside>
				</div>
			</div>
		</div>
	</div>

	<!-- Banner -->
	<div class="section section--banner">
		<div class="section__in">
			<div class="nu-row nu-row--center banner flex">
				<div class="item">
					<img src = "/images/good-housekeeping.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Good Housekeeping logo">
				</div>
				<div class="item">
					<img src = "/images/wall-street-journal.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Wall Street Journal logo">
				</div>
				<div class="item">
					<img src = "/images/gear-patrol.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Gear Patrol logo">
				</div>
			</div>	
		</div>
	</div>

	<!-- Details -->
	<div class="section section--detail gfx-primary">
		<div class="section__in">
			<div class="nu-row detail__group flex">
				<div class="item detail__offer">
					<div class="row-to-center detail__product">
						<div class="col @sm-u-vw">
							<img class="product__shot" src="/images/product-crawling-small.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> crawling insect spray">
						</div>
						<div class="col @sm-u-vw product__detail">
							<h2><%= CampaignName %> crawling insect spray is effective on</h2>
							<div class="row @sm-u-vw--90">
								<div class="col @sm-u-vw--50 product__desc">
									<h3>Ants, cockroaches, spiders, crickets and beetles</h3>
								</div>
								<div class="col @sm-u-vw--50 product__img">
									<img src = "/images/crawling-insects.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Crawling insects">
								</div>
							</div>
						</div>
					</div>

					<div class="row-to-center detail__product">
						<div class="col @sm-u-vw">
							<img class="product__shot" src="/images/product-flying-small.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> flying insect spray">
						</div>
						<div class="col @sm-u-vw product__detail">
							<h2><%= CampaignName %> flying insect spray is effective on</h2>
							<div class="row @sm-u-vw--90">
								<div class="col @sm-u-vw--40 product__desc">
									<h3>Flies, fruit flies, gnats, drain flies and moths</h3>
								</div>
								<div class="col @sm-u-vw--50 product__img">
									<img src = "/images/flying-insects.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Flying insects">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id = "features" class="item fb detail__fb">
					<h2>Features & Benefits</h2>
					<ul class="fb__list">
						<li>The revolutionary, bio-selective, DNA targeted insecticide that targets nervous system receptors only active in insects.</li>
						<li>DOES NOT contain imiprothrin, cypermethrin pyrethroids, butane, or propane.</li>
						<li>Crawling insect spray kills ants, cockroaches, spiders, crickets and beetles.</li>
						<li>Flying insect spray kills flies, fruit flies, gnats, drain flies and moths.</li>
						<li>100% Money Back Guarantee</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Image Gallery -->
	<figure class="nu-row gallery">
		<div class="item">
			<img src = "/images/in-use-1.jpg" alt="<%= CampaignName %> in use shot">
		</div>
		<div class="item">
			<img src = "/images/in-use-2.jpg" alt="<%= CampaignName %> in use shot">
		</div>
		<div class="item">
			<img src = "/images/in-use-3.png" alt="<%= CampaignName %> in use shot">
		</div>
		<div class="item">
			<img src = "/images/in-use-4.jpg" alt="<%= CampaignName %> in use shot">
		</div>
	</figure>

	<!-- Info -->
	<div id = "how-it-works" class="section section--info">
		<div class="section__in">

			<div class="nu-row info__group flex">
				<figure class="item">
					<img src = "/images/gfx-bugs.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Bugs">
					<h2>How It Works</h2>
					<p>You can feel good about using <%= CampaignName %> in your home because we understand what makes crawling and flying insects tick.Our bio-selective, DNA targeted formula quickly eliminates insects by using essential oils that target nervous system receptors only active in insects.That means you can use<%= CampaignName %> around your loved ones and pets without worry.*</p>
				</figure>
	
				<figure class="item">
					<img src = "/images/gfx-indoors-outdoors.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Indoors and outdoors">
					<h2>Use Indoors<br>And Outdoors</h2>
					<p>With ingredients you can trust and a precision trigger that allows you to spray from a distance with accuracy, <%= CampaignName %> Insect Spray is effective for both indoor and outdoor use.</p>
				</figure>

				<figure class="item">
					<img src = "/images/gfx-home.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Home">
					<h2>Use in problem areas</h2>
					<p>Our proprietary formula uses powerful essential oils and other familiar ingredients, so you can feel good about using <%= CampaignName %> Instant Action Spray in areas such as your kitchen floors, dining rooms, bathrooms, family rooms, living rooms, bedrooms, children's playrooms, basements, garages, attics, laundry rooms, hallways, and mud rooms.</p>
				</figure>
	
				<figure class="item">
					<img src = "/images/gfx-sink.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Sink">
					<h2>Safe and effective, you can store<%= CampaignName %> wherever you need it!</h2>
					<p>Since you don't have to worry about what's inside the can, you can store<%= CampaignName %> Insect Spray throughout the home.That way, <%= CampaignName %> is ready to use whenever and wherever insects appear. Plus, our cans are subtle, so you won't let the world know you are trying to take care of those pesky pests.</p>
				</figure>
			</div>

			<small class="info__disc">* When used as directed.</small>
		</div>
	</div>

	<!-- Linebreak -->
	<div class="linebreak">
		<a href = "#order" title="Order <%= CampaignName %> Now" class="button">Click Here To Order Now</a>
	</div>

	<!-- Graph -->
	<div class="section section--graph">
		<div class="section__in graph">
			<h2>Safe enough to keep in ANY room in the house!</h2>
			<div class="row graph__group">
				<div class="col @md-u-vw">
					<img src = "/images/house-blueprint.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Blueprint of a house to show where to apply <%= CampaignName %>">
				</div>
				<div class="col @md-u-vw--25 graph__content">
					<div class="flex graph__content__in">
						<ul class="graph__list grid">
							<li class="row">
								<img src = "/images/bug-kitchens.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Ant" class="col">
								<h4 class="col">Kitchens</h4>
							</li>
							<li class="row">
								<img src = "/images/bug-garages.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Flea" class="col">
								<h4 class="col">Garages</h4>
							</li>
							<li class="row">
								<img src = "/images/bug-bedrooms.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Bed bug" class="col">
								<h4 class="col">Bedrooms</h4>
							</li>
							<li class="row">
								<img src = "/images/bug-family-room.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Spider" class="col">
								<h4 class="col">Family Rooms</h4>
							</li>
							<li class="row">
								<img src = "/images/bug-bathrooms.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Ant" class="col">
								<h4 class="col">Bathrooms</h4>
							</li>
							<li class="row">
								<img src = "/images/bug-entry-ways.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Bug" class="col">
								<h4 class="col">Entry Ways</h4>
							</li>
						</ul>
						<div class="graph__product">
							<img class="graph__product__img" src="/images/zevo-crawling-and-flying.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> crawling and flying">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Reviews -->
	<div id = "reviews" class="section section--review gfx-primary">
		<div class="section__in review">
			<h2><%= CampaignName %> Customer Reviews</h2>
			<div class="review__group nu-row grid">
				<blockquote class="item review__item flex">
					<p>"I really like the product!!! It works quickly and efficiently. It makes me feel safe to use it around my children and pets!"</p>
					<footer>
						<strong>Sheila S.</strong>
						<span>Orlando, FL</span>
					</footer>
				</blockquote>
				<blockquote class="item review__item flex">
					<p>"This pest spray is like MAGIC. I am blown away by how easy and effective it is. I want to keep it on hand at all times. I'm afraid this will put some pest control companies out of business."</p>
					<footer>
						<strong>Ann Q.</strong>
						<span>Orlando, FL</span>
					</footer>
				</blockquote>
				<blockquote class="item review__item flex">
					<p>"<%= CampaignName %> is by far the best spray we've used in our house. We used it inside and outside and saw a difference almost immediately. The best part is that I didn't have to worry about the smell or danger to my little ones!!"</p>
					<footer>
						<strong>Candice W.</strong>
						<span>Orlando, FL</span>
					</footer>
				</blockquote>
			</div>
		</div>
	</div>

</asp:Content>
