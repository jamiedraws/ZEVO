<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<% var phoneNumber = SettingsManager.ContextSettings["CustomerService.PhoneNumber"]; %>


<style>

    .dtm--subpage .c-brand--subpage ul {
        font: 1.8rem/1.5 'Roboto', Helvetica, sans-serif;
    }

    .text p,
    .text ul {
        line-height: 1.5;
        margin-bottom: 1.5rem;
    }

    .text h3 {
        font: 2rem/1 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
        margin: 6rem 0 2.5rem;
    }

    .text ul {
        list-style: initial;
        margin-left: 2rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .text {
            font-size: 1.8rem;
        }
    }

    @media all and ( min-width : 993px ) {
        .text {
            font-size: 2.2rem;
        }
    }
</style>

<!-- // FAQ | Section -->
<section class="section section--store-policy section--line--bottom">

    <div class="section__in">

        <h3 class="section__title">Store Policy</h3>

        <div class="text">
        <h3><strong>INTRODUCTION AND ACCEPTANCE OF TERMS</strong></h3>
        <p>This website offers consumers a convenient way to find, learn about, and purc nmnhase products from Zevo ( &ldquo;we&rdquo;,&rdquo; us&rdquo;, or &ldquo;our&rdquo;). We provide this website (the &ldquo;Site&rdquo;) subject to the terms and conditions set forth herein (the &ldquo;Agreement&rdquo;). The terms of this Agreement apply whether you are just visiting the Site or are a registered Account user (as described below). By using the Site, you acknowledge that you have read and understand this Agreement and that you agree to be bound by all of its terms. If you do not agree to all of the terms set forth in this Agreement, please do not use the Site.</p>
        <p>Your use of this Site shall be governed in all respects by the laws of the state of Ohio, U.S.A., without regard to choice of law provisions. You agree that jurisdiction over and venue in any legal proceeding directly or indirectly arising out of or relating to this Site shall be in the state or federal courts located in Hamilton County, Ohio.</p>
        <p>&nbsp;In accordance with our Zevo Store Policies, to make a purchase online, you must be a legal resident of the 50 states of the United States of America or the District of Columbia and be at least 18 years of age.</p>
        <h3><strong>MODIFICATION OF THIS AGREEMENT</strong></h3>
        <p>&nbsp;We may modify this Agreement or other policies set forth on the Site from time to time. When we modify this Agreement, we will update the &ldquo;Last Updated&rdquo; line above. It is your responsibility to regularly review this Agreement. Your use of the Site following the posting of an updated Agreement constitutes your acceptance of such updated Agreement.</p>
        <h3><strong>SEVERABILITY</strong></h3>
        <p>If any part of this Agreement is found to be invalid or unenforceable, that shall not affect the validity or enforceability of any other provision of this Agreement.</p>
        <h3><strong>PRIVACY</strong></h3>
        <p>Your use of the Site is also subject to our&nbsp;<a href="http://www.pg.com/privacy/english/privacy_notice.html">Privacy Policy</a>.</p>
        <h3><strong>YOUR ACCOUNT</strong></h3>
        <p>The use of certain services on the Site requires the user to have established a user account (an &ldquo;Account&rdquo;). There is no charge to establish or maintain an Account, and an Account is not required to make a purchase from the Site. In order to establish an account, you must:</p>
        <ul>
        <li>Provide us with your name, a valid e-mail address, and such other information as we may require from time to time;</li>
        <li>Create a password; and</li>
        <li>In accordance with our Zevo Store Policies , to make a purchase online, you must be a legal resident of the 50 states of the United States of America or the District of Columbia and be at least 18 years of age</li>
        </ul>
        <p>You are solely responsible for maintaining the confidentiality of your password(s) and for restricting access to your computer, and for all activities that occur under your Account or password. We will not be liable for any loss that you may incur as a result of someone else using your Account or password, either with or without your knowledge. You agree to be responsible for losses incurred by us or another party due to someone else using your Account and/or password either with or without your knowledge. You agree to notify us immediately of any unauthorized use of your Account and/or password(s) and any other breach of security relating to the Site. You agree that any information you provide to us will be current, accurate and complete and that you will keep such information up to date by notifying us of any changes.</p>
        <p>We reserve the right to terminate any Account at any time in our sole discretion, including without limitation for any failure to comply with these Terms of Use, any fraud or abuse, or any misrepresentation that you or anyone using your Account may make to us.</p>
        <h3>RESERVATIONS AND PRE-ORDERS</h3>
        <p>Your placement of a reservation and pre-order does not create a contract for sale. By placing a reservation and pre-order for the Device that is not yet available for sale, you make an offer to purchase the Device subject to these Terms. We (or our third-party payment processor) will obtain an authorization from your bank or credit card Company for no charge. An authorization from your payment card company may stay open for several days or weeks before a charge is actually made.</p>
        <p>You may cancel your offer to purchase the Device at any time prior to shipment and you will not be charged. You will receive an email several days prior to the shipment of the reserved Device in which you will have an option to cancel your offer and you will not be charged.</p>
        <p>Later, when the Device is offered for sale, we may accept your offer to purchase the Device subject to these Terms. At that time, we (or our third-party payment processor) will capture payment on the payment card you provided and ship your Device. We (or our third-party payment processor) may obtain an additional authorization from your payment card company to confirm necessary funds are available to purchase the Device requested.</p>
        <p>We reserve the right to cancel or refuse any order for any reason at any time prior to shipment, including after an order has been submitted, whether or not the order has been confirmed. We may attempt to contact you if all or a portion of your order is cancelled, or if additional information is needed to complete and accept your order.</p>
        <h3>MAKING A PURCHASE</h3>
        <p>If you wish to purchase a Device or other product through the Site, you will be asked to supply certain information, including but not limited to credit card or other payment information. You agree that all information that you provide to us (or our third-party payment processor) will be accurate, complete and current. You agree to pay all charges incurred by you or any other user of your credit card or other payment mechanism issued to you, including without limitation any applicable taxes and shipping, handling and processing charges, if any, relating to such purchases and transactions. We will charge your credit card when the item you purchased is shipped. Credit card orders shipped to a location other than your billing address may require additional verification. Tax is not collected on orders.</p>
        <p>We only sell Devices or products to individuals who can purchase with a permitted payment method. You are permitted to purchase only for personal use and not for resale. We may in our discretion refuse and/or cancel any order that we believe may lead to resale. We make no promise that the Device or products described in the Site are appropriate or available for use outside of the United States. Accessing this Site from territories where its contents are unlawful is prohibited. It is your responsibility to ascertain and obey all applicable laws and regulations with respect to the purchase, possession and use of any Device or products ordered via the Service.</p>
        <p>We reserve the right to refuse to process or complete any transaction, and to cancel any transaction, in our sole discretion.</p>
        <h3>ORDER ACCEPTANCE POLICY</h3>
        <p>The advertisement of the Device or any product through the Site does not constitute an offer to sell. Your order or your receipt of an electronic or other form of order confirmation does not signify our acceptance of your order, nor does it constitute confirmation of our offer to sell. We reserve the right at any time after receipt of your order to accept or decline your order. We reserve the right at any time after receipt of your order, without prior notice to you, to supply less than the quantity you ordered of any item. All orders placed are subject to additional credit verification. We may also require additional verifications or information before shipping any order.</p>
        <h3>ORDER LIMITATION POLICY</h3>
        <p>Given the popularity of the Device or other products, we reserve the right to limit the quantities of items that can be purchased.</p>
        <h3>PAYMENT</h3>
        <p>We currently accept the following payment methods:</p>
        <ul>
        <li>VISA</li>
        <li>MasterCard</li>
        <li>Discover Card</li>
        <li>American Express</li>
        </ul>
        <p>If the payment method you provide cannot be verified, is invalid or is otherwise not acceptable, your order may be suspended or cancelled.</p>
        <h3>AVAILABILITY AND PRICING</h3>
        <p>All Devices or products offered through the Site are subject to availability, and we reserve the right to impose quantity limits on any order, to reject all or part of an order and to discontinue offering without prior notice. Prices are subject to change at any time, but changes will not affect any orders you have already placed. All prices and availability of products are subject to change without notice, up until the order is completed and confirmed. We make every effort to provide you the most accurate information on pricing and availability.</p>
        <p>In addition, some of the items may be incorrectly priced or no longer available at the time you place your order. In the event a product is listed at an incorrect price, we have the right to refuse or cancel any orders placed for the product listed at the incorrect price. If an item's correct price is lower than our stated price, we will charge the lower amount and ship you the item. If an item's correct price is higher than our stated price, we will cancel your order and notify you of the price error and order cancellation. You will, of course, have an opportunity to purchase the item at the correct price.</p>
        <h3>RISK OF LOSS</h3>
        <p>All items purchased from us are made pursuant to a shipment contract. This means that the risk of loss and title for such items pass to you upon our delivery to the carrier.</p>
        <h3>SHIPPING AND DELIVERY</h3>
        <p>Orders will only be shipped to addresses within the fifty (50) states of the United States of America excluding Hawaii, Alaska, South Dakota and Maine. We strive to ship your order as quickly as possible. However, our shipping estimates are not guarantees or promises that a product will ship on a specific day or be received by you within a specific period. The amount of time it takes for you to receive your order will depend on how long it takes us to process your order and how long it takes the carrier to deliver the order to you once it is shipped.</p>
        <p>Our preferred shipping carrier is UPS. However, we reserve the right to use other shipping carriers. Sorry, we are unable to ship to P.O. Boxes. All items must be shipped to a valid street address. Shipping will be standard delivery and shipping charges are free, but subject to change at any time. Orders are typically delivered within 5 &ndash; 8 business days. Actual delivery time depends on shipping distance and may vary. Delivery to some remote addresses may require up to 2 additional days.</p>
        <p>All safety warnings, information, instructions, packaging, in-box materials, mobile apps, and support services are provided only in English (U.S.) The Device and products available through the Site are not intended for use outside of the United States. You are responsible for complying with all applicable laws and regulations of the country for which the Device and products are destined. We are not liable or responsible if you break any such law.</p>
        <h3>RETURNS FOR REFUND OR REPLACEMENT</h3>
        <h3><u>Return Policy</u></h3>
        <p>We want to ensure your complete satisfaction so we will happily accept returns in accordance with the following Return Policy:</p>
        <h3>Defective, damaged or incorrect items:</h3>
        <ul>
        <li>Contact us by phone <a href="tel:(<%= phoneNumber %>)">(<%= phoneNumber %>)</a> to connect with a customer service representative and receive your return authorization (if eligible). Do not send personal credit card information over email.&nbsp;</li>
        <li>You must have purchased the item from us at zevoinsect.<span></span>com.</li>
        <li>If you received a damaged or defective item from us, you will not be responsible for return shipping charges, and we will not charge any restocking or other fee in connection with the return. In addition, you will receive a full refund for the item or replacement product, as described in our Refund/Replacement Procedures.</li>
        <li>To obtain a refund or replacement, the item must be returned to us, unopened (unless the item was received by you in a defective or damaged condition) and in its original packaging, with all accessories, within 30 days of the date upon which we provided the item to the carrier for shipment to you. You must also follow the Return Procedures specified below.</li>
        <li>We cannot accept items back that have been opened or used unless the item was received by you in a damaged or defective condition.</li>
        <li>Damaged or defective items returned without their original packaging will not be eligible for a refund or replacement.</li>
        </ul>
        <h3>Other returns:</h3>
        <ul>
        <li>Contact us by phone <a href="tel:(<%= phoneNumber %>)">(<%= phoneNumber %>)</a> to connect with a customer service representative and receive your return authorization (if eligible). Do not send personal credit card information over email.</li>
        <li>You must have purchased the item from us at zevoinsect.<span></span>com</li>
        <li>For all returns other than damaged, defective or incorrectly-shipped items (see above), you will be responsible for the shipping charges to return the item(s).</li>
        <li>To obtain your refund or replacement product, the item must be returned to us, unopened and in its original packaging, with all accessories, within 30 days of the date upon which we provided the item to the carrier for shipment to you. You must also follow the Return Procedures specified below.</li>
        </ul>
        <h3>
        <strong>&#65279;</strong><u>Return Procedures</u>
        </h3>
        <ul>
        <li>To return an item, contact us by phone <a href="tel:(<%= phoneNumber %>)">(<%= phoneNumber %>)</a> to connect with a customer service representative and receive your return authorization (if eligible). Do not send personal credit card information over email.</li>
        <li>Customer Service will provide you with a return label, which you will be required to print and affix to the package (if eligible).</li>
        <li>Securely pack the item(s) you are returning and include a copy of your original packing slip in an appropriately sized box.</li>
        <li>Affix the shipping label on the package to be returned.</li>
        <li>After we receive, inspect and process your return, a refund will be issued in accordance with our Refund/Replacement Procedures below.</li>
        <li>Return Address:<br> P&amp;G Zevo Insect<br> Aero Fulfillment<br> 3900 Aero Drive<br> Mason, Ohio 45050</li>
        </ul>
        <h3><u>Refund/Replacement Procedures</u></h3>
        <p>If you are entitled to a refund or replacement product in connection with a return, the following conditions will apply:</p>
        <h4>Replacement:</h4>
        <ul>
        <li>Replacement products will be shipped after we receive, inspect and process your return. Please allow time for the returned item to be delivered to us, for us to inspect and process the return, and for us to ship the new product.</li>
        <li>Contact us by phone <a href="tel:(<%= phoneNumber %>)">(<%= phoneNumber %>)</a> to connect with a customer service representative for any questions about your replacement product, or to inquire about the status. Do not send personal credit card information over email.</li>
        </ul>
        <h4>Refund:</h4>
        <ul>
        <li>Your refund will be in the form of payment used for the purchase.</li>
        <li>The amount refunded will be the purchase price paid by you for the returned item (which reflects the amount of any discounts, promotions or coupons that you received), including sales tax charged with respect to the item, as applicable.</li>
        <li>Credits will be issued after we receive, inspect and process your return. Please allow time for the returned item to be delivered to us, for us to inspect and process the return, and for the credit card issuer to credit your account. Your credit card company determines when the credit will be reflected in your statement. It may take one full billing cycle for the credit to appear on your account.</li>
        <li>Contact us by phone <a href="tel:(<%= phoneNumber %>)">(<%= phoneNumber %>)</a> to connect with a Customer Service Representative for any questions about your return, or to inquire about the status of your refund. Do not send personal credit card information over email.</li>
        </ul>
        <h3><strong>PRODUCT DESCRIPTIONS</strong></h3>
        <p>We try our best to be as accurate as possible. However, we do not warrant that the product descriptions or other content of this Site are accurate, complete, reliable, current, or error-free. The colors you see will depend on your monitor and we cannot guarantee that your monitor's display of any color will be accurate. All features, content, specifications, sizes and prices of products and services described or depicted on the Site are subject to change at any time without notice. Certain weights, measures and similar descriptions may be approximate and are provided for convenience only. Packaging may vary from that shown. If a product offered by us is not as described, your sole remedy is to return it unopened in its original packaging in accordance with the Return Policy and Return Procedures.</p>
        <h3><strong>RISK OF LOSS</strong></h3>
        <p>All items purchased from us are made pursuant to a shipment contract. This means that the risk of loss and title for such items pass to you upon our delivery to the carrier.</p>
      </div>

    </div>

</section>



</asp:Content>