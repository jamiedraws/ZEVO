<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<style>
    /*	FAQ | @Layout
    * --------------------------------------------------------------------- */
    .section--faq, .dtm .section--faq p {
        font: 1.6rem/1.5 'Roboto', Helvetica, sans-serif;
    }

    .section--faq p {
        line-height: 1.5;
        margin-bottom: 1.5rem;
    }

    .section--faq p:not(:first-of-type):last-of-type {
        margin-bottom: 0;
    }

    .faq .faq__container {
        border: none;
        background: none;
        border-radius: 0;
        padding: 0;
    }

    .faq__ul {
        list-style: none;
    }

    .faq__ul > li {
        border-bottom: 1px solid #c8c8c8;
    }

    .faq__ul > li:first-of-type {
        border-top: 1px solid #c8c8c8;
    }

    .faq__ul > li:last-of-type {
        border-bottom: none;
    }

    .faq__title {
        font: 2.4rem/1 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
        margin: 6rem 0 2.5rem;
    }

    .faq__title:first-of-type {
        margin-top: 0;
    }

    .faq__answer ul {
        list-style: initial;
        margin-left: 2rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .faq__question {
            font-size: 1.8rem;
        }

        .answer__img--icon {
            width: 26.612903225806452vw;
            height: 26.008064516129032vw;
            margin: auto;
        }
    }

    @media all and ( min-width : 993px ) {
        .faq__question {
            font-size: 2.2rem;
        }

        .answer__img--icon {
            width: 264px;
            height: 258px;
        }
    }

    .faq__question {
        border: none;
        background: none;
        display: table;
        padding: 2rem;
        width: 100%;
        text-align: left;
    }

    .faq__question > span {
        display: table-cell;
        vertical-align: middle;
    }

    .faq__question > span:last-of-type {
        padding-left: 2rem;
    }

    .faq__arrow {
        background: url(/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>) no-repeat center center;
        width: 15px;

        -webkit-transition: -webkit-transform 150ms ease-in-out;
        -moz-transition: -moz-transform 150ms ease-in-out;
        transition: transform 150ms ease-in-out;

        -webkit-transform-origin: center center;
        -moz-transform-origin: center center;
        transform-origin: center center;

        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    .faq__answer {
        height: 0;
        margin: 0;
        will-change: height;
        transition: height .3s cubic-bezier(.215,.61,.355,1);
        overflow: hidden;
    }
</style>

<!-- // FAQ | Section -->
<section class="section section--faq section--line--bottom">

    <div class="section__in faq">

        <h2 class="section__title">Frequently Asked Questions</h2>

        <div class="faq__container">
            <ul class="faq__ul">
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What is the <%= CampaignName %> Instant Action Insect Killer?</span>
                    </button>
                    <div class="faq__answer">
                        <p>New <%= CampaignName %> insect spray is effective on bugs, but safe for use around people and pets when used as directed: Always spray away from fish, birds & reptiles. Unlike traditional insect sprays, <%= CampaignName %> Instant Action Insect Killers use powerful essential oils to target the nervous system receptors that are only active in insects, and not people or pets. Our sprays come in crawling, flying, and stinging aerosol cans and a multi-insect trigger bottle.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Does <%= CampaignName %> Instant Action Insect Killer prevent or lesson my chances of contracting a mosquito transmitted virus, such as ZIKA, Dengue, Chikungunya, West Nile, Yellow Fever or Malaria?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> has not been tested on mosquitoes. For protection advice, please refer to the following link:<br><a href="https://www.epa.gov/mosquitocontrol" target="_blank">https://www.epa.gov/mosquitocontrol</a>.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>How do <%= CampaignName %> insect sprays work?</span>
                    </button>
                    <div class="faq__answer">
                        <p>The proprietary blend of essential oils in <%= CampaignName %> Instant Action Insect Killers is designed to kill insects and be safe for use around children and pets by targeting nervous receptors only active in insects but not in humans and pets. Please note that <%= CampaignName %> is safe when used as directed. Always spray away from fish, birds and reptiles.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Where do <%= CampaignName %> Instant Action Insect Killers work? Where should/shouldn't <%= CampaignName %> Instant Action Insect Killers be used? Can <%= CampaignName %> Instant Action Insect Killers be used outdoors?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Instant Action Insect Killer works as an instant kill spray that can be used in any room inside of your home, as well as outdoors.</p>
                        <ul>
                            <li>It is FLAMAMBLE and should be kept away from heat, sparks, grill and open flames.</li>
														<li>Do not apply directly to plants. If product comes in contact, rinse plants thoroughly with water</li>
														<li>This product may stain porous or unsealed surfaces.</li>
														<li>Prior to use, spray a small inconspicuous area to determine if staining will occur. If product comes in contact with clothing, curtains, carpet, upholstered furniture, or other textiles, immediately wash with soap and water.</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Are <%= CampaignName %> insect sprays safe to use around children, pets, the sickly and the elderly?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Instant Action Insect Killer comprises naturally occurring compounds found in a wide variety of fruits, vegetables and spices. As long as the <%= CampaignName %> Instant Action Insect Killer is used as directed, it is considered to be safe to use around children and pets.</p>
														<p>The compounds used are widely considered safe by:</p>
														<ul>
															<li>FDA: Generally Recognized as Safe (GRAS)</li>
															<li>EPA: FIFRA 25b Exempt &ndash; Minimum Risk Pesticide</li>
															<li>FEMA GRAS ingredients</li>
															<li>Joint FAO/WHO Expert Committee on Food Additives (JECFA) deemed safe for flavoring use</li>
															<li>The Council of Europe deemed safe for flavoring use</li>
														</ul>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>What should I do if <%= CampaignName %> Instant Action Insect Killer gets in my eyes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Hold eye open and rinse slowly with water for 15-20 minutes. Remove contact lenses, if present, after the first five minutes, then continue rinsing.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What should I do if <%= CampaignName %> Instant Action Insect Killer gets on my hands?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Wash thoroughly with soap and water.</p>
                    </div>
								</li>
								<li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What should I do if <%= CampaignName %> Instant Action Insect Killer gets on my mouth?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Rinse mouth out with water and contact a doctor for treatment advice. NOTE: If irritation develops, contact doctor or poison control center. Have product label or container with you when calling a doctor or going for treatment.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Why does my <%= CampaignName %> insect spray not dispense when I push on the top or pull the trigger?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Make sure the safety feature on the nozzle is unlocked by pointing the nozzle away from your face and pushing the trigger towards the left. You will hear 1-2 small clicks and the lock indicator will move from the locked to the unlocked position.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Why does my <%= CampaignName %> Instant Action Insect Killer - Stinging Insect not dispense/ dispense very little when I push on the top?</span>
                    </button>
                    <div class="faq__answer">
                        <p>For safety reasons, our nozzle has 2 notches that need to break before the product dispenses. Press strongly on the top of the dispenser until product begins to flow continuously.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>What ingredients and chemicals do <%= CampaignName %> insect sprays contain?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Instant Action Insect Killers is comprisedof naturally occurring compounds found in a wide variety of fruits, vegetables and spices. We believe the insect products people choose should be safe* for use around their families and homes. That's why we use the latest DNA science to understand the differences between bugs and mammals. Knowing these differences helps us carefully select ingredients that are effective on insects, but safe for use around people and pets. See table below for the ingredients in each of our products.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Where should I store <%= CampaignName %> Instant Action Insect Killer?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our rust-free aluminum can may be stored in any room of your home. Please keep out of reach of children and pets. <%= CampaignName %> Instant Action Insect Killer is FLAMAMBLE and should be kept away from heat, sparks, grill and open flames.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What types of insects is the <%= CampaignName %> Instant Action Insect Killer effective on?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our <%= CampaignName %> Ant, Roach & Spider &ndash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
												<p>Our <%= CampaignName %> Fly, Gnat & House Fly &ndash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
												<p>Our <%= CampaignName %> Wasp, Hornet & Yellow Jacket &ndash; Stinging Insect Killer is effective on wasps, wasp nests, hornets, yellow jackets, and other stinging insects.</p>
												<p>Our <%= CampaignName %> Ant, Roach & Fly &ndash; Multi-Insect Killer is effective on ants, roaches, fruit flies, gnats, drain flies, spiders, crickets, and other flying and crawling insects</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Do <%= CampaignName %> insect sprays work on bed bugs, fleas or termites?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our product has not been tested on bed bugs, fleas or termites. We have tested <%= CampaignName %> sprays on the following insects:</p>
												<p>Our <%= CampaignName %> Ant, Roach & Spider &ndash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
												<p>Our <%= CampaignName %> Fly, Gnat & House Fly &ndash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
												<p>Our <%= CampaignName %> Wasp, Hornet & Yellow Jacket &ndash; Stinging Insect Killer is effective on wasps, wasp nests, hornets, yellow jackets, and other stinging insects.</p>
												<p>Our <%= CampaignName %> Ant, Roach & Fly &ndash; Multi-Insect Killer is effective on ants, roaches, fruit flies, gnats, drain flies, spiders, crickets, and other flying and crawling insects</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Does your crawling insect spray work on ALL crawling insects?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our product has not been tested on all crawling insects. We have tested <%= CampaignName %> on the following insects:</p>
												<p>Our <%= CampaignName %> Ant, Roach & Spider &ndash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
												<p>Our <%= CampaignName %> Fly, Gnat & House Fly &ndash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
												<p>Our <%= CampaignName %> Wasp, Hornet & Yellow Jacket &ndash; Stinging Insect Killer is effective on wasps, wasp nests, hornets, yellow jackets, and other stinging insects.</p>
												<p>Our <%= CampaignName %> Ant, Roach & Fly &ndash; Multi-Insect Killer is effective on ants, roaches, fruit flies, gnats, drain flies, spiders, crickets, and other flying and crawling insects</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>I've been reading stories about people misusing bug spray and inhaling it to get high. Would misuse of <%= CampaignName %> sprays by inhalation cause an effect?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> aerosol products would fall under the same challenges of misuse of any other aerosol products, but the ingredients in the product do not produce any hallucinogenic or psychotropic effects</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Can I spray <%= CampaignName %> Instant Action Insect Killer on my skin to repel mosquitoes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>No, <%= CampaignName %> Instant Action Insect Killers is NOT intended for skin application. Please use as directed on product label and only spray directly on insect until thoroughly wet.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Can I spray <%= CampaignName %> Instant Action Insect Killer on my pet to repel mosquitoes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>No, <%= CampaignName %> Instant Action Insect Killers is NOT intended for use on any animal except the insects listed. Please use as directed on product label.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Can I use <%= CampaignName %> sprays on my plants or in my plant soil? If I am looking to get rid of gnats around the houseplants in my home, do I spray the plants or soil directly?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Do not spray directly on plants or on soil. We recommend you shake the plant and spray the insects in the air as they are released.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>For <%= CampaignName %> insect sprays, what does &ldquo;when used as directed&rdquo; mean?</span>
                    </button>
                    <div class="faq__answer">
                        <p>To use <%= CampaignName %> insect sprays as directed, carefully read and follow all instructions on the packaging and labels. Use only on hard surfaces like wood or tile. Do not spray on fabrics or carpet. Do not spray on skin or fur. Do not use around fish, birds or reptiles.</p>
                    </div>
								</li>
            </ul>

        </div>

    </div>

</section>

<style>
    /*	FAQ | Defer | @Layout
    * --------------------------------------------------------------------- */
    .faq__answer--visible {
        margin: 2rem 2rem 2rem 5.75rem;
    }

    .faq__question--selected .faq__arrow {
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        transform: rotate(180deg);
    }
</style>

<script>
    function getFAQ (app) {
        var $questions = $('.faq__question');
        var $answers = $('.faq__answer');
        var $nav = $('#nav');
        var $html__body = $('html, body');

        function getAnswerSize () {
            $answers.each(function () {
                var $answer = $(this);
                if ( !$answer.hasClass('faq__answer--visible') ) {
                    $(this).children().each(function () {
                        $answer.attr('data-container-height', ($answer.data('container-height') || 0) + $(this).outerHeight(true));
                    });
                } else {
                    $answer.attr('data-container-height', 0);
                }
            });
        }

        function scrollToTarget ($target) {
            $html__body.animate({
                scrollTop : $target.position().top - app.$nav.outerHeight()
            }, 100);
        }

        $questions.on('click', function (event) {
            event.preventDefault();

            var $question = $(this);
            var $current__answer = $question.siblings('.faq__answer').get(0);

            getAnswerSize();
            $answers.each(function () {
                var $answer = $(this);
                var $question = $answer.prev('.faq__question');
                if ( $current__answer === this ) {
                    $question.toggleClass('faq__question--selected');
                    $answer.toggleClass('faq__answer--visible').css('height', $answer.attr('data-container-height'));
                } else {
                    $question.removeClass('faq__question--selected');
                    $answer.removeClass('faq__answer--visible').css('height', 0);
                }
            });

            if ( app.isStickyNav() ) {
                scrollToTarget($question);
            } else {
                app.getHeightFromStickyNav().done(function (offset) {
                    scrollToTarget($question);
                });
            }
        });

        app.$body.on('transitionend', '.faq__answer--visible', function () {
            var $answer = $(this);
            $answer.attr('data-cache-height', $answer.height()).css('height', 'auto');
        });

        getAnswerSize();
    }

</script>


</asp:Content>