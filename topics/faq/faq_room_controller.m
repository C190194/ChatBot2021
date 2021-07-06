\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\
 

: faq-welcome 
  "Explore" faqMenuButton ctx{ exploreBtn }
  "Back to Home" backButton ctx{ homeBtn }
q{
    <h2 style="text-align:center">Just ask!</h2>
    <p>Simply ask any question you have about our food, our services, or our ordering process! </p>
    </br>
    
    <h2 style="text-align:center">Or, explore.</h2>
    <p>You can also choose to explore the questions by topic as well </br>
    #{exploreBtn}
    </p>
    
    </br>
    #{homeBtn}
}q
 ;

: faq-explore
  "What events are you able to support?" button ctx{ generalBtn }
  "Menu options and customisation" button ctx{ menuBtn }
  "Our value-added services" button ctx{ addOnBtn }
  "What is the order and delivery process?" button ctx{ orderDeliveryBtn }
  "How do I pay?" button ctx{ paymentBtn }
  "Send us a message" faqMenuButton ctx{ inquiryBtn }
  "Back to Home" backButton ctx{ homeBtn }
q{
    <h2 style="text-align:center">Exploring Services</h2>
    <p>At Le Rainbow Catering, we offer a hassle-free catering experience. Click any topic to learn more!
    </br>
    #{generalBtn} #{menuBtn} #{addOnBtn} #{orderDeliveryBtn} #{paymentBtn}
    </p>

    </br>
    <h3>Can't find what you're looking for? </h3>
    #{inquiryBtn}


    </br>
    
    #{homeBtn}
}q

 ;

\ Our inquiries message
: faq-inquiries-msg
  "Back to our services" backButton ctx{ backBtn }
  "Contact Us" faqMenuButton ctx{ contactInfoBtn }
q{
    <h2>How can we help?</h2>
    <p>
        Simply type your enquiry below. Our team will get in touch with you.
    </p>
    </br>
    
    <h3>Prefer to talk to us?</h3>
    #{contactInfoBtn}
        
    </br>
    
    <h3>Didn't mean to send a message?</h3>
    #{backBtn}

}q
 ;


: faq-contact-info
  "Back to all services" backButton ctx{ backBtn }
\   "msg" "sales@lerainbow.com.sg" "I need help" email ctx{ salesEmail }
\   "+65 6589 8855" "+65 6589 8855" tel ctx{ salesTel }

q{
    <p>
        You can contact us via email () or telephone (). We will be glad to help any way we can!
        When you are done, click the button to explore our other services, or to go back to the main page. </br>
        #{backBtn}
    </p>
}q
;


Q: Send a message
Q: Inquiries
A: ${ faq-inquiries-msg }
K: -services_faq services_inquiries
--

Q: Back to Home
A: ${ home_menu }
K: -services_faq -services_inquiries
--

\ Go back from inquiries page
Q: Back to our services
A: ${ faq-welcome }
K: $back services_faq
--

\ Go back from any of the faq topics
Q: Back
A: ${ faq-explore }
--

Q: Explore
A: ${ faq-explore }s
--

Q: Contact Us
A: ${ faq-contact-info }
--






