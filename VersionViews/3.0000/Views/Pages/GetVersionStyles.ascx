<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%-- Html.RenderSnippet("STYLE-BLOCK-HEAD"); --%>
<style>
/* Cascading Stylesheet | Campaign Version

    @Layout

* --------------------------------------------------------------------- */
    /*	Normalize | @Layout
    * --------------------------------------------------------------------- */
    img, 
    .no-supports .dtm__in img {
        display: block;
        margin: auto;
        max-width: 100%;
        width: auto;
        height: auto;
    }


    /*	Row | @Layout
    * ------------------------------------------------------ */
    .nu-row {
        display: table;
        word-spacing: -1em;
    }

    .nu-row > .item {
        display: inline-block;
        vertical-align: top;
        word-spacing: 0;
    }

    .nu-row--center > .item {
        vertical-align: middle;
    }

    .nu-row--bottom > .item {
        vertical-align: bottom;
    }


    /*	Flexbox | @Layout
    * ------------------------------------------------------ */
    @supports ( display : flex ) {
        .dtm .flex {
            display: flex;
            flex-wrap: wrap;
        }
        
        .dtm .flex > .item {
            display: block;
            flex: 1 1 auto;
        }
    }


    /*	Grid | @Layout
    * ------------------------------------------------------ */
    @supports ( display : grid ) {
        .dtm .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        }
    }


    /*	Canvas | @Layout
    * --------------------------------------------------------------------- */
    /* set the minimum width of our canvas */
    .dtm__in .l-outer,
    .dtm__in .l-header,
    .dtm__in .l-footer {
        max-width: none;
    }

    /* set the maximum width of our canvas */
    .dtm__in .l-header__in,
    .dtm__in .section__in,
    .dtm__in .l-footer__in,
    .\@b .l-outer__in,
    .dtm__processpayment {
        margin: auto;
        position: relative;
    }

    .dtm__in .l-header__in,
    .dtm__in .section__in,
    .\@b .l-outer__in,
    .dtm__processpayment {
        max-width: 1000px;
    }

    .\@f .dtm__in .l-outer__in {
        margin: 0;
    }

    #content_top .subpage-text-nav {
        display: block;
    }

    /* set the minimum height of our footer */
    .dtm__in .l-footer {
        min-height: 15rem;
    }

    /* set the padding of the canvas */
    .dtm__in .l-outer__in {
        padding: 0;
    }

    /* set the border style of our header & midline sections */
    .dtm__in .l-header,
    .dtm__in .o-box--banner {
        border-style: none;
    }

    /* set the border width of our header section */
    .dtm__in .l-header,
    .\@b .l-outer__in {
        border-width: 0;
        box-shadow: none;
    }

    .dtm .dtm__in .l-header {
        z-index: 3;
    }

    .\@b .l-outer__in {
        padding: 1rem;
    }

    /* set the border width of our midline section */
    .dtm__in .o-box--banner {
        border-width: 3px 0;
    }

    .has-responsive-footer {
        color: #252525;
    }


    /*	Header | @Layout
    * --------------------------------------------------------------------- */
    .l-header > .l-header__in {
        background: white;
    }

    .l-header h1 {
        font-size: 35px;
    }

    .l-header__logo {
        display: block;
    }

    .l-header__nav--fixed {
        width: 100%;
        background: white;
        display: flex;
        justify-content: center;
        transition: opacity 250ms ease-in-out;
        opacity: 1;
    }

    .nav--hidden {
        opacity: 0;
        pointer-events: none;
    }

    .l-header__nav--fixed .button {
        flex: 1 1;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 1% 0.5%;
    }

    .l-header__nav--fixed .button:first-child {
        margin-left: 1%;
    }

    .l-header__nav--fixed .button:last-child {
        margin-right: 1%;
    } 

    @media all and ( min-width : 1001px ) {
        .l-header__logo {
            width: 214px;
        }

        .l-header__nav--fixed {
            display: none;
        }
    }

    @media all and ( max-width : 1000px ) {
        .l-header h1 {
            font-size: 22px;
        }

        .l-header__logo {
            max-width: 50%;
            min-width: 100px;
        }

        .l-header__nav--fixed {
            position: fixed;
            bottom: 0;
        }
    }

    @media all and ( min-width : 701px ), ( orientation : landscape ) {
        .l-header__in .col--nav {
            display: none;
        }
    }

    @media all and ( max-width : 700px ) and ( orientation : portrait ) {
        .l-header__nav,
        .l-header__in .col--headline,
        .l-header__in .col--link {
            display: none;
        }

        .\@f .l-header > .l-header__in,
        .\@f .l-header__nav {
            position: fixed;
            width: 100%;
        }

        .l-header > .l-header__in {
            z-index: 2;
        }

        .l-header__nav {
            height: 100%;
            text-align: center;
        }

        .\@f .l-outer {
            padding-top: 8rem;
        }

        .dtm .l-header__nav--fixed .button {
            font-size: 1.4rem;
        }
    }

    @supports ( display : flex ) {
        @media all and ( max-width : 700px ) and ( orientation : portrait ) {
            .ham__input:checked ~ .ham__nav {
                display: flex;
            }

            .ham__input:checked ~ .ham__nav,
            .ham__input:checked ~ .ham__nav .nav__group {
                flex-direction: column;
                justify-content: center;
            }
        }
    }


    /*	Hamburger | @Model
    * --------------------------------------------------------------------- */
    .dtm .ham__button,
    .dtm .ham__container {
        border: none;
        border-radius: 0;
        display: block;
    }

    .l-header__in .ham__button {
        float: right;
    }

    .ham__button,
    .ham__button > span {
        display: block;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
    }

	.ham__button {
        position: relative;
		width: 30px;
		height: 25px;
		margin: auto;
		-webkit-transition: .5s ease-in-out;
		-moz-transition: .5s ease-in-out;
		-o-transition: .5s ease-in-out;
		transition: .5s ease-in-out;
		cursor: pointer;
    }

    .ham__button > span {
        position: absolute;
        height: 5px;
        width: 100%;
        background: #4b3d3e;
        border-radius: 9px;
        opacity: 1;
        left: 0;
        -webkit-transition: .25s ease-in-out;
        -moz-transition: .25s ease-in-out;
        -o-transition: .25s ease-in-out;
        transition: .25s ease-in-out;
    }

    .ham__button > span:nth-child(1) {
        top: 0;
    }

    .ham__button > span:nth-child(2) {
        top: 0; bottom: 0; margin: auto;
    }

    .ham__button > span:nth-child(3) {
        bottom: 0;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(1),
    .ham__input:checked ~ .ham__container .ham__button span:nth-child(3) {
        top: 10px;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(1) {
        -webkit-transform: rotate(135deg);
        -moz-transform: rotate(135deg);
        -o-transform: rotate(135deg);
        transform: rotate(135deg);
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(2) {
        opacity: 0;
        left: -60px;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(3) {
        -webkit-transform: rotate(-135deg);
        -moz-transform: rotate(-135deg);
        -o-transform: rotate(-135deg);
        transform: rotate(-135deg);
    }


    /*	Nav | Header | @Layout
    * --------------------------------------------------------------------- */
    .l-header__nav {
        background: #3c84cb;
        color: white;
    }

    .nav__group {
        text-align: center;
        text-transform: uppercase;
    }

    .nav__group a {
        display: inline-block;
        vertical-align: middle;
        text-decoration: none;
        padding: 1.5rem;
    }

    .nav__group a:hover {
        text-decoration: underline;
    }

    .dtm .nav__group {
        display: flex;
        justify-content: space-between;
    }

    @media all and ( min-width : 1001px ) {
        .dtm .nav__group {
            width: 80rem;
        }
    }


    /*	Section | @Layout
    * --------------------------------------------------------------------- */
    .dtm__in--mv .c-brand--subpage > h2,
    .section__title {
        font: 2.5rem/1 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        color: #0065cb;
        text-align: center;
        margin-bottom: 1rem;
    }

    @media all and ( min-width : 700px ) {
        .dtm__in--mv .c-brand--subpage > h2,
        .section__title {
            font-size: 4rem;
        }
    }

    .dtm--subpage .c-brand--subpage,
    .dtm--subpage .c-brand--subpage p {
        font: 1.8rem/1.5 'Roboto', Helvetica, sans-serif;
    }

    #content_top .subpage-text-nav {
        display: none;
    }


    /*	ATF | @Layout
    * --------------------------------------------------------------------- */
    .atf {
        width: 100%;
        min-height: 486px;
        text-align: center;
    }

    .atf__offer > .button {
        margin-top: 10rem;
    }

    @media all and ( min-width : 1001px ) {
        .section--atf {
            background: url(/images/3.0000/main-offer.png?appV=<%= DtmContext.ApplicationVersion %>) no-repeat center top, #dbd9da;
            min-height: 486px;
        }

        .atf {
            height: 486px;
        }

        .atf__offer {
            width: 23%;
        }

        .atf__media {
            width: 77%;
        }

        .atf__aside {
            max-width: 394px;
            float: right;
            margin-top: 2.75rem;
        }

        .dtm .atf .atf__offer__img {
            display: none;
        }
    }

    @media all and ( max-width : 1000px ) {
        .section--atf {
            background: url(/images/_bg-kitchen.png?appV=<%= DtmContext.ApplicationVersion %>) no-repeat center top, #dbd9da;
            background-size: cover;
        }

        .section--atf {
            padding: 2rem;
        }

        .dtm .atf,
        .atf > .atf__offer,
        .atf > .atf__media {
            display: block;
            width: 100%;
        }

        .atf__offer .button {
            display: none;
        }
    }

    .media__list .button {
        width: 100%;
    }

    @supports ( display : flex ) {
        .atf__media .media__list > .item {
            display: flex;
        }
    }

    .atf__aside ul {
        list-style: none;
    }

    .atf__aside li {
        width: 32%;
        padding: 0;
        margin-top: 1%;
        margin-bottom: 1%;
    }

    .atf__aside li:not(:last-child) {
        margin-right: 1%;
    }

    .atf .atf__aside .button {
        font-size: 1.8rem;
    }

    @media all and ( max-width: 700px ) {
        .atf .atf__aside .button {
            font-size: 1.2rem;
        }
    }

    iframe[src*="vimeo.com"] {
        background: #252525;
    }


    /*	Banner | @Layout
    * --------------------------------------------------------------------- */
    .section--banner {
        border: solid #cccccc;
        border-width: 2px 0;
        margin: 2px 0;
    }

    .banner {
        text-align: center;
        width: 100%;
    }

    .banner > .item {
        padding: 1rem;
    }

    @media all and ( max-width : 940px ) {
        .banner > .item {
            max-width: 20%;
            min-width: 120px;
        }

        .banner > .item:nth-child(2) {
            max-width: 30%;
        }
    }

    .banner img {
        display: block;
        margin: auto;
    }

    @supports ( display: flex ) {
        .banner {
            justify-content: space-around;
            align-items: center;
        }
    }


    /*	Detail | @Layout
    * --------------------------------------------------------------------- */
    @media all and ( min-width : 993px ) {
        .detail__group {
            padding: 4rem 2rem;
        }

        .detail__product:not(:last-of-type) {
            margin-bottom: 10rem;
        }
    }

    @media all and ( max-width : 992px ) {
        .detail__group {
            padding: 0 1rem;
        }

        .detail__product {
            margin-left: auto;
            margin-right: auto;
        }

        .detail__product:not(:last-of-type) {
            margin-bottom: 7rem;
        }
    }

    @media all and ( min-width : 601px ) and ( max-width : 992px ) {
        .detail__product {
            width: 70%;
        }
    }

    .section--detail {
        font-size: 18px;
        line-height: 1.35;
    }

    .detail__product {
        line-height: 1.2;
    }

    .detail__product h2 {
        font-size: 30px;
        text-transform: uppercase;
        margin-bottom: 0.5rem;
    }

    .detail__product h3 {
        font-size: 26px;
    }

    .detail__fb h2 {
        font-size: 32px;
        text-transform: uppercase;
    }

    .detail__fb {
        max-width: none;
        width: auto;
    }

    .detail__fb .fb__list {
        list-style: none;
        border: none;
        padding: 1rem 0;
    }

    .detail__fb li:before {
        background: white;
        top: .9rem;
    }

    @media all and ( min-width : 993px ) {
        .detail__offer {
            width: 60%;
        }

        .detail__fb {
            width: 40%;
            position: relative;
            left: 3rem;
        }
    }

    @media all and ( max-width : 993px ) {
        .detail__offer,
        .detail__fb {
            padding: 4rem 0;
        }

        .detail__fb h2 {
            text-align: center;
        }
    }

    @media all and ( max-width : 768px ) {
        .detail__offer {
            text-align: center;
        }
    }

    @supports ( display : flex ) {
        @media all and ( max-width : 992px ) {
            .detail__group {
                flex-direction: column-reverse;
            }
        }
    }

    @media all and ( max-width : 500px ) {
        .detail__fb h2 {
            font-size: 27px;
        }

        .detail__product h2 {
            font-size: 20px;
        }

        .detail__product h3 {
            font-size: 18px;
        }
    }

    @media all and ( min-width : 501px ) {
        .product__desc {
            width: 70%;
        }
    }

    .product__desc {
        margin: 3.5rem auto;
    }

    .product__detail {
        text-align: center;
    }

    .product__shot {
        min-width: 114px;
    }

    @media all and ( min-width : 769px ) {
        /*
        .product__img {
            padding-left: 2rem;
        }
        */
    }


    /*	Gallery | @Layout
    * --------------------------------------------------------------------- */
    .gallery {
        text-align: center;
    }

    @media all and ( min-width : 826px ) {
        .gallery {
            margin: auto;
        }

        .gallery > .item {
            width: 24.5%;
            margin: 0.25%;
        }
    }

    @media all and ( max-width : 825px ) {
        .gallery > .item {
            margin: 0.5rem;
        }
    }

    @supports ( display : grid ) {
        @media all and ( max-width : 825px ) {
            .dtm .gallery {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(40%, 1fr));
                margin: 0.5rem;
                grid-gap: 0.5rem;
            }

            .gallery > .item {
                margin: 0;
                width: 100%;
            }

            .gallery img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        }
    }


    /*	Info | @Layout
    * --------------------------------------------------------------------- */
    .section--info .section__in {
        max-width: 1180px;
        text-align: center;
        padding-bottom: 3rem;
    }

    .info__group {
        font-size: 15px;
        line-height: 1.35;
        margin: 3rem 0;
    }

    .info__group > .item {
        margin: 0;
        padding: 2%;
    }

    @media all and ( min-width : 1001px ) {
        .info__group > .item {
            width: 25%;
        }
    }

    @media all and ( min-width : 701px ) and ( max-width : 1000px ) {
        .info__group > .item {
            width: 50%;
            padding: 2rem;
        }
    }

    @media all and ( max-width : 700px ) {
        .info__group > .item {
            width: 100%;
            padding: 4rem 2rem;
        }

        .info__group img {
            max-width: 30%;
            min-width: 110px;
        }
    }

    .info__group h2 {
        color: #0066cb;
        font: 20px/1 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        margin: 1rem auto;
    }

    .info__disc {
        font-size: 12px;
    }


    /*	Linebreak | @Layout
    * --------------------------------------------------------------------- */
    .linebreak {
        position: relative;
        text-align: center;
    }

    .linebreak:before {
        display: block;
        content: '';
        width: 100%;
        height: 2px;
        background: #cccccc;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        margin: auto;
    }

    .linebreak .button {
        position: relative;
    }


    /*	Graph | @Layout
    * --------------------------------------------------------------------- */
    .section--graph {
        padding: 6rem 0;
    }

    .graph > h2 {
        font: 32px/1 'Roboto', Helvetica, sans-serif;
        text-transform: uppercase;
        color: #0066cb;
        text-align: center;
        margin-bottom: 1rem;
    }

    .graph__content {
        padding-top: 2rem;
    }

    .graph__list h4 {
        color: #5a93cb;
        font-size: 30px;
    }

    .graph__list li {
        padding-bottom: 1.5rem;
    }

    .graph__list li > .col {
        vertical-align: middle;
    }

    @media all and ( max-width : 992px ) {
        .graph__group {
            padding: 0 2rem;
        }
    }

    @media all and ( max-width : 620px ) {
        .section--graph {
            padding-left: 2rem;
            padding-right: 2rem;
        }

        .graph__list h4 {
            font-size: 20px;
        }

        .graph__group {
            padding: 0;
        }
    }

    @supports ( display : flex ) {
        .graph__content__in {
            justify-content: center;
        }

        @media all and ( min-width : 761px ) and ( max-width : 992px ) {
            .graph__list {
                width: 70%;
            }

            .graph__product {
                width: 30%;
            }
        }

        @media all and ( max-width : 760px ) {
            .graph__content__in {
                margin: auto;
                align-items: center;
            }
        }

        @media all and ( min-width : 621px ) and ( max-width : 760px ) {
            .graph__content__in {
                width: 80%;
            }
        }
    }

    @supports ( display : grid ) {
        .graph__list {
            justify-items: start;
            margin: auto;
        }

        @media all and ( min-width : 761px ) and ( max-width : 992px ) {
            .graph .graph__list {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media all and ( min-width : 621px ) and ( max-width : 760px ) {
            .graph .graph__list {
                grid-template-columns: repeat(1, 1fr);
            }
        }

        @media all and ( max-width : 620px ) {
            .graph .graph__list {
                grid-template-columns: repeat(2, 1fr);
            }
        }

    }


    /*	Review | @Layout
    * --------------------------------------------------------------------- */
    .section--review {
        padding: 7rem 2rem;
        text-align: center;
    }

    .review > h2 {
        font: 32px/1 'Roboto', Helvetica, sans-serif;
        text-transform: uppercase;
        margin-bottom: 3rem;
    }

    .review__item {
        background: #c6eaff;
        color: #00427a;
        border-radius: 20px;
        box-shadow: inset 0 3px 7px #3c84cb;
        font-size: 15px;
        line-height: 1.35;
        padding: 3rem 2.5rem;
        width: 30%;
        margin: 1%;
    }

    .review__group .review__item {
        display: inline-block;
    }

    .review__item span {
        display: block;
        margin-bottom: 0.5rem;
    }

    @supports ( display: grid ) {
        .review__item {
            width: auto;
            margin: 0;
        }

        .review__group .review__item {
            display: flex;
        }

        .review__group {
            grid-gap: 2.5rem;
        }

        @media all and ( min-width : 601px ) and ( max-width : 1000px ) {
            .review .review__group {
                grid-template-columns: repeat(2, 1fr);
            }

            .review__item:last-of-type {
                grid-column: 1 / -1;
            }
        }

        @media all and ( max-width : 600px ) {
            .review .review__group {
                grid-template-columns: repeat(1, 1fr);
            }
        }
    }

    @supports ( display: flex ) {
        .review__item {
            justify-content: center;
            align-items: center;
        }
    }

    .review__item > footer {
        margin-top: 1rem;
    }

    .review__item strong {
        font-family: 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
    }

    .review__item > footer span {
        display: block;
    }


    /*	Form Title | @Layout
    * ------------------------------------------------------ */
    .btf__title {
        font: 41px/1 'Roboto', Helvetica, sans-serif;
        text-align: center;
        text-transform: uppercase;
        color: #0066cb;
    }

    .btf__title a {
        text-decoration: none;
    }
    
    @media all and ( min-width : 641px ) and ( max-width : 1000px ) {
        .btf__title {
            font-size: 30px;
        }
    }

    @media all and ( max-width : 640px ) {
        .btf__title {
            font-size: 6vw;
        }
    }


    /*	Form | @Layout
    * ------------------------------------------------------ */
    .dtm__in--mv #form.c-brand--form {
        border: none;
        padding: 0 2rem;
    }

    .dtm__in .c-brand--form__fieldset {
        border: 1px solid;
    }

    .c-brand .c-brand--form__item .button {
        font-size: 2.75rem;
    }

    .dtm .c-brand .reviewTable__wrap {
        padding: 1rem;
    }

    #cc img {
        display: inline-block;
    }


    /*	Offer | Form | @Layout
    * ------------------------------------------------------ */
    .offer__banner {
        background: #0066cb;
        color: white;
        padding: 1.5rem;
        width: 100%;
        text-align: center;
        font: 25px/1 'Roboto', Helvetica, sans-serif;
    }

    .offer__banner > .col > span {
        padding: 1rem;
    }

    .banner__title {
        text-transform: uppercase;
        font-family: 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
    }

    .offer__group {
        display: flex;
        flex-wrap: wrap;
        padding-top: 2rem;
        width: 100%;
    }

    .offer__group > .offer__col:first-child {
        flex: 2;
    }
    
    .offer__group > .col--card {
        flex: 1.25;
    }

    .offer__group > .offer__col:last-child {
        flex: 2.25;
    }

    @media all and ( min-width : 601px ) {
        .offer__col:first-of-type {
            padding-right: 2rem;
        }

        .offer__col:last-of-type {
            padding-left: 2rem;
        }

        .offer__banner > .col:not(:first-of-type):not(:last-of-type) {
            border-right: 2px solid;
        }
    }

    @media all and ( max-width : 860px ) {
        .dtm .offer .offer__col {
            flex: 1 1 auto;
            width: 47%;
        }

        .dtm .offer__group .col--card {
            flex: 1;
            order: 2;
        }

        .offer .offer__banner {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            font-size: 20px;
        }
        .offer__banner > .col:first-of-type {
            width: 100%;
        }

        @media all and ( max-width : 600px ) {
            .dtm .offer .offer__col {
                display: flex;
                justify-content: flex-start;
                width: 100%;
            }

            .dtm .offer__banner > .col {
                display: block;
                width: 100%;
            }

            .offer__banner > .col > span {
                display: inline-block;
            }

            .offer__banner > .col:not(:first-of-type):not(:last-of-type) > span {
                border-bottom: 2px solid;
            }
        }
    }

    .offer__cta {
        font: 1.5rem/1 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        text-transform: uppercase;
        border: 1px solid hsla(0, 0%, 100%, 0.37);
    }

    @media all and ( min-width : 861px ) {
        .offer__cta {
            display: none;
        }
    }

    @media all and ( max-width : 860px ) {
        #dtm .offer__cta--dv,
        .offer__card {
            display: none;
        }

        .offer .offer__banner > .col:nth-last-of-type(2),
        .offer .offer__banner > .col:nth-last-of-type(2) > span {
            border: 0;
        }
    }

    .c-brand .offer__item .button {
        font-size: 1.5em;
    }

    .offer__item > h3 {
        font: 20px/1 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        color: #0066cb;
        text-transform: uppercase;
    }

    .offer__em {
        color: #00bcc3;
    }

    .item__offer {
        padding: 1.5rem 2.5rem 1.5rem 0;
    }

    .item__label {
        margin: 0.75rem 0 1rem;
    }

    .item__img {
        padding: 2rem 0;
    }

    .offer__card {
        background: #3c84cb;
        color: white;
        border: 8px double white;
        text-align: center;
        font: 1.5rem/1 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
        padding: 1.25rem;
        text-transform: uppercase;
    }

    .offer__card > em {
        font-size: 4.125em;
        line-height: 0.9;
        border-bottom: 2px solid white;
        margin-bottom: 1rem;
        padding-bottom: 1rem;
    }

    .offer__card > em > small {
        font-size: 0.5em;
    }

    .offer__card > span,
    .offer__card > em,
    .offer__card > em > small {
        display: block;
    }


/* --------------------------------------------------------------------- *

    @Module

* --------------------------------------------------------------------- */
    /*	Button | @Module
    * --------------------------------------------------------------------- */
    .dtm .button {
        background: #00bcc3;
        color: white;
        border: 4px double white;
        text-transform: uppercase;
        padding: 0.5em 0.5em 0.3em;
        font: 2rem/1 'Sofia Pro Regular', sans-serif;
        transition: all 250ms ease-in-out;
    }

    .dtm .button:hover,
    .dtm .button:focus {
        background: #00e2ea;
    }


/* --------------------------------------------------------------------- *

    @Theme

* --------------------------------------------------------------------- */
    /*	Font Size | @Theme
        Desc: Set up our font sizes
    * --------------------------------------------------------------------- */
    h1, .h1 {
        font-size: 75px;
    }

    h2, .h2 {
        font-size: 50px;
    }

    h3, .h3 {
        font-size: 35px;
    }

    h4, .h4 {
        font-size: 30px;
    }

    h5, .h5 {
        font-size: 25px;
    }

    h6, .h6  {
        font-size: 20px;
    }

    body, .p  {
        font-size: 16px;
    }


    /*	Font Family | @Theme
        Desc: Set up our font families
    * --------------------------------------------------------------------- */
    .dtm__in,
    .sans-primary {
        font-family: 'Roboto', Helvetica, sans-serif;
    }

    .sans-primary-bold {
        font-family: 'Roboto Bold', 'Roboto', Helvetica, sans-serif;
    }

    .sans-secondary {
        font-family: 'Sofia Pro Regular', 'Roboto', Helvetica, sans-serif;
    }


    /*	Color | @Theme
        Desc: Set up our font color palette
    * --------------------------------------------------------------------- */
    .color-primary {
        color: #0066cb;
    }

    .about, .faq, .c-brand--subpage {
        color: #5d7e95;
    }


    /*	Background | @Theme
        Desc: Set up our background color palette
    * --------------------------------------------------------------------- */
    .bg-primary {
        background: #3c84cb;
    }

    .bg-secondary {
        background: #c6eaff;
    }

    .dtm--subpage #content_top {
        background: #fcfcfc;
        border-bottom: 3px solid #3c84cb;
        padding-bottom: 1rem;
        margin-bottom: 1rem;
    }

    /* set the desktop color of our white-space background */
    .dtm__in {
        background: white;
    }

    /* set the desktop color of our header, midline & footer */
    .dtm__in .l-header {
        background: white;
        color: #0066cb;
    }

    /* set the color of our form headline (defaults to #333) */
    .c-brand--form .c-brand--form__legend {
        background: #303030;
    }

    /* set the color of our order review table (defaults to red) */
    .c-brand--table th,
    #dtm.\@f .c-brand--table__th,
    #dtm.\@f .table-is-responsive tbody td:first-of-type {
        background: #00bcc3;
    }
    

    /*	Graphics | @Theme
    * --------------------------------------------------------------------- */
    /* set our desktop background image */
    .gfx-primary {
        background: url(/images/_bg-pattern.png?appV=<%= DtmContext.ApplicationVersion %>) repeat, #3c84cb;
        color: white;
    }
</style>