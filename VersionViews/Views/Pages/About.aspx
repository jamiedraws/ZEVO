<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>
<% var phoneNumber = SettingsManager.ContextSettings["CustomerService.PhoneNumber"]; %>

<style>
    /*	About | @Layout
    * --------------------------------------------------------------------- */
    .about__figure {
        margin: auto;
    }

    @media all and ( min-width : 700px ) {
        .about__figure {
            max-width: 75%;
        }
    }

    .about__figure h2 {
        font: 2.8rem/1.5 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        margin: 1rem 0;
        text-align: center;
    }

    .about__figure img {
        display: block;
        margin: auto;
    }
</style>

<!-- // About | Section -->
<section class="section section--about section--line--bottom">

    <div class="section__in about">

        <h2 class="section__title">Our Team</h2>

        <figure class="about__figure">
            <img src="/images/team-shot.jpg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> Flying Insect Trap Team - Our Story">
            <figcaption>
                <h2 class="figcaption__title"><%= CampaignName %> - The brand that's changing insect control</h2>
                <p>Led by a team of passionate founders, Zevo is an effective and worry-free insect protection brand. Our new, revolutionary flying insect trap continuously eliminates flying insects without chemical insecticides.</p>

                <p>We created Zevo to be different from other insect control brands. We are committed to making products that are effective and worry-free - without chemical insecticides, odors, or messes.</p>

                <p>Our entire team is passionate about living life without tradeoffs. We want to end the tradeoff of choosing between annoying flying insects or chemical insecticides in our homes. Feel free to call <a href="tel:<%= phoneNumber %>"><%= phoneNumber %></a>. We're here to help.</p>
            </figcaption>
        </figure>
        
    </div>

</section>

</asp:Content>