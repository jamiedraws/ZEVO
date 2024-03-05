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
                        <span>What is the <%= CampaignName %> Instant Action Spray?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Instant Action Sprays are new, safe (when used as directed. Always spray away from fish, birds and reptile) and powerful insect sprays that are tough on bugs, but safe for use around people and pets. <%= CampaignName %> Instant Action Sprays are different from traditional insect sprays because they use powerful essential oils to target nervous system receptors only active in insects and not people and pets. Our sprays come in crawling, flying, and stinging aerosol cans and a multi-insect trigger bottle which will be available during the checkout process.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Does <%= CampaignName %> Instant Action Spray prevent or lesson my chances of contracting a mosquito transmitted virus, such as ZIKA, Dengue, Chikungunya, West Nile, Yellow Fever or Malaria?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Fly, Gnat & House Fly &mdash; Flying Insect Killer is designed to be one part of your overall insect management system. It is effective at killing a variety of mosquito species. For the <strong class="text-underline">Best Protection</strong> advice, please refer to the following link:</p>
                        <p><a href="https://www.epa.gov/mosquitocontrol" target="_blank" title="Click here to learn more about mosquito control">https://www.epa.gov/mosquitocontrol</a></p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>How do <%= CampaignName %> insect sprays work?</span>
                    </button>
                    <div class="faq__answer">
                        <p>The proprietary blend of essential oils in <%= CampaignName %> Instant Action Sprays is designed to kill insects and be safe for use around children and pets by targeting nervous receptors only active in insects but not in humans and pets. Please note that <%= CampaignName %> is safe when used as directed. Always spray away from fish, birds and reptiles.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Where do <%= CampaignName %> Instant Action Sprays work? Where should/shouldn't <%= CampaignName %> Instant Action Sprays be used? Can <%= CampaignName %> Instant Action Sprays be used outdoors?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> Instant Action Spray works as an instant kill spray that can be used in any room inside of your home, as well as outdoors.</p>
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
                        <p><%= CampaignName %> Instant Action Spray comprises naturally occurring compounds found in a wide variety of fruits, vegetables and spices. As long as the <%= CampaignName %> Instant Action Spray is used as directed, it is considered to be safe to use around children and pets.</p>
                        <p>The compounds used are widely considered safe by:</p>
                        <ul>
                            <li>FDA: Generally Recognized as Safe (GRAS)</li>
                            <li>EPA: FIFRA 25b Exempt &mdash; Minimum Risk Pesticide</li>
                            <li>FEMA GRAS ingredients</li>
                            <li>Joint FAO/WHO Expert Committee on Food Additives (JECFA) deemed safe for flavoring use</li>
                            <li>The Council of Europe deemed safe for flavoring use</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>What should I do if <%= CampaignName %> Instant Action Spray gets in my eyes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Hold eye open and rinse slowly with water for 15-20 minutes. Remove contact lenses, if present, after the first five minutes, then continue rinsing.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What should I do if <%= CampaignName %> Instant Action Spray gets on my mouth?</span>
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
                        <span>Why does my <%= CampaignName %> Instant Action Spray - Stinging Insect not dispense/ dispense very little when I push on the top?</span>
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
                        <p><%= CampaignName %> Instant Action Sprays is comprised of naturally occurring compounds found in a wide variety of fruits, vegetables and spices. We believe the insect products people choose should be safe* for use around their families and homes. That's why we use the latest DNA science to understand the differences between bugs and mammals. Knowing these differences helps us carefully select ingredients that are effective on insects, but safe for use around people and pets.</p>
                        <div id="placeholderFAQ"></div>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                        <span>Where should I store <%= CampaignName %> Instant Action Spray?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our rust-free aluminum can may be stored in any room of your home. Please keep out of reach of children and pets. <%= CampaignName %> Instant Action Spray is FLAMAMBLE and should be kept away from heat, sparks, grill and open flames.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>What types of insects is the <%= CampaignName %> Instant Action Spray effective on?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our <%= CampaignName %> Ant, Roach & Spider &mdash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
                        <p>Our <%= CampaignName %> Fly, Gnat & House Fly &mdash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Do <%= CampaignName %> insect sprays work on bed bus, fleas or termites?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our product has not been tested on bed bugs, fleas or termites. We have tested <%= CampaignName %> sprays on the following insects:</p>
                        <p>Our <%= CampaignName %> Ant, Roach & Spider &mdash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
                        <p>Our <%= CampaignName %> Fly, Gnat & House Fly &mdash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Does your crawling insect spray work on ALL crawling insects?</span>
                    </button>
                    <div class="faq__answer">
                        <p>Our product has not been tested on all crawling insects. We have tested <%= CampaignName %> on the following insects:</p>
                        <p>Our <%= CampaignName %> Ant, Roach & Spider &mdash; Crawling Insect Killer is effective on ants, cockroaches, spiders, crickets, beetles, and other crawling insects.</p>
                        <p>Our <%= CampaignName %> Fly, Gnat & House Fly &mdash; Flying Insect Killer is effective on flies, fruit flies, gnats, drain flies, moths, and other flying insects.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>I've been reading stories about people misusing bug spray and inhaling it to get high. Would misuse of <%= CampaignName %> sprays by inhalation cause an effect?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> aerosol products would fall under the same challenges of misuse of any other aerosol products, but the ingredients in the product do not produce any hallucinogenic or psychotropic effects.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Can I spray <%= CampaignName %> Instant Action spray on my skin to repel mosquitoes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>No, <%= CampaignName %> Instant Action sprays is NOT intended for skin application. Please use as directed on product label and only spray directly on insect until thoroughly wet.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>Can I spray <%= CampaignName %> Instant Action spray on my pet to repel mosquitoes?</span>
                    </button>
                    <div class="faq__answer">
                        <p>No, <%= CampaignName %> Instant Action sprays is NOT intended for use on any animal except the insects listed. Please use as directed on product label.</p>
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
                        <span>Are <%= CampaignName %> insect sprays safe to use around all types of pets?</span>
                    </button>
                    <div class="faq__answer">
                        <p><%= CampaignName %> insect sprays should always be used as directed. When done so, they are safe for use around mammals like dogs, cats, hamsters, guinea pigs, ferrets, and rabbits. Do not use <%= CampaignName %> insect sprays around fish, birds or reptiles.</p>
                    </div>
                </li>
                <li>
                    <button class="faq__question">
                        <span class="faq__arrow"></span>
                        <span>For <%= CampaignName %> insect sprays, what does "when used as directed" mean?</span>
                    </button>
                    <div class="faq__answer">
                        <p>To use <%= CampaignName %> insect sprays as directed, carefully read and follow all instructions on the packaging and labels. Use only on hard surfaces like wood or tile. Do not spray on fabrics or carpet. Do not spray on skin or fur. Do not use around fish, birds or reptiles.</p>
                    </div>
                </li>
            </ul>

        </div>

    </div>

</section>

<!-- FAQ Table -->
<script id="templateFAQ" type="text/template">
    
    {{# group }}
    <div class="faq__table__group {{# header }}faq__table__header{{/ header }}">
        {{# row }}
        <div class="faq__table__item {{^ item }}faq__table__item--none{{/ item }}">
            {{# item }}
                {{# header }}
                    <strong>{{ title }}</strong>
                {{/ header }}
                {{^ header }}
                    {{# title }}
                        <span>{{ title }}</span>
                    {{/ title }}

                    {{# checkmark }}
                        <span class="icon-checkmark"></span>
                    {{/ checkmark }}
                {{/ header }}
            {{/ item }}
        </div>
        {{/ row }}
    </div>
    {{/ group }}

</script>

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

    .faq__table__group {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        text-align: center;
    }

    .faq__table__item {
        background: #ededed;
        padding: 1rem;
        margin: 0.15rem;
    }

    .faq__table__item:nth-child(2):not(.faq__table__item--none) {
        background: #d8e6bb;
        color: #304802;
    }

    .faq__table__item:nth-child(3):not(.faq__table__item--none) {
        background: #a9cdd6;
        color: #023c4a;
    }

    .faq__table__item--none {
        display: none;
    }

    @media all and ( max-width : 39.938em ) {
        .faq__table__item:first-of-type {
            flex-basis: 100%;
        }

        .faq__table__item {
            flex: 1 1 48%;
        }

        .faq__table__group:not(.faq__table__header):not(:first-of-type) {
            padding-bottom: 1.2rem;
        }
    }

    @media all and ( min-width : 40em ) {
        .faq__table__item--none {
            display: block;
        }

        .faq__table__item {
            flex: 1 1 15rem;
        }

        .faq__table__item:first-of-type:not(:last-of-type) {
            flex-grow: 0;
        }

        .faq__table__header .faq__table__item:first-of-type {
            margin-right: 0;
        }

        .faq__table__header .faq__table__item:not(:first-of-type) {
            margin-left: 0;
        }   
    }
</style>

<script>
    function getFAQ (app) {
        var $questions = $('.faq__question');
        var $answers = $('.faq__answer');
        var $nav = $('#nav');
        var $html__body = $('html, body');
        var $placeholderFAQ = $('#placeholderFAQ');
        var $templateFAQ = $('#templateFAQ').html();
        var viewFAQ = {
            group : [
                {
                    row : [
                        { item : false },
                        { item : true, title : 'Ant, Roach & Spider; Crawling Insect Killer', header : true },
                        { item : true, title : 'Fly, Gnat & Fruit Fly; Flying Insect Killer', header : true }
                    ]
                },
                {
                    header : true,
                    row : [
                        { item : true, title : 'Actives:', header : true },
                        { item : false }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Geraniol' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Lemongrass Oil' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Cinnamon Oil' },
                        { item : true, checkmark : true },
                        { item : true }
                    ]
                },
                {
                    header : true,
                    row : [
                        { item : true, title : 'Inerts:', header : true },
                        { item : false }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'White Mineral Oil' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : '2-Propanol Vanillin' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Isopropyl Myristate' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Triethyl Citrate' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Lactic Acid N-Butyl Ester' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },
                {
                    row : [
                        { item : true, title : 'Carbon Dioxide' },
                        { item : true, checkmark : true },
                        { item : true, checkmark : true }
                    ]
                },{
                    row : [
                        { item : true, title : '*When used as directed. Always spray away from fish, birds and reptiles.' }
                    ]
                }
            ]
        };

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

        _dtm.requestScript.dictionary.push({ name : 'myMustache', file : 'mustache.js', dir : '/shared/js/' });
        _dtm.requestScript.get();

        app.$html.on('myMustache:ready', function (x) {
            var template = Mustache.render($templateFAQ, viewFAQ);
            $placeholderFAQ.html(template);
        });
    }

</script>


</asp:Content>