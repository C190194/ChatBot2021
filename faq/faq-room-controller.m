\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

\ Our services welcome message
: faq-welcome
  "Events" button ctx{ eventBtn }
  "Meals" button ctx{ mealsBtn }
  "Value-Add Services" button ctx{ valueBtn }
  "Orders" button ctx{ ordersBtn }
  "Delivery" button ctx{ deliveryBtn }
  "Payment" button ctx{ paymentBtn }
  "Inquiries" button ctx{ inquiryBtn }
q{
    <h1>Our Services</h1>
    <p>We offer a wide variety of food and services to fit your needs. Click any of the buttons below to browse by topic, or try typing your question and we’ll help you the best we can :) </p>
    </br>
    #{eventBtn} #{mealsBtn} #{valueBtn} #{ordersBtn} #{deliveryBtn} #{paymentBtn}
    
    <p>If you still can't find your answer, send us an inquiry: </br>
    #{inquiryBtn}
    </p>
}q
 ;

\ Our search message
: faq-search-msg
  "Inquiries" button ctx{ inquiryBtn }
  "Back to all services" button ctx{ backBtn }
q{
    <h2>FAQ Search</h2>
    <p>
        You may type in keywords or questions to search our FAQ answers database. Try 'bento meals' or 'alternate payment' etc!
    </p>
    <p>
        Click here to go back and browse FAQ by category: </br>
        #{backBtn}
    <p>
        Can't find what you're looking for? Send us your inquiries: </br>
        #{inquiryBtn}
    </p>

}q
 ;
 
\ Our inquiries message
: faq-inquiries-msg
  "Back to all services" button ctx{ backBtn }
q{
    <h2>Inquiry Form</h2>
    <p>
        You may type your inquiry below and press enter. Our customer sales associates will get in touch with you.
        Alternatively, you may contact us via email or telephone instead. We will be glad to help any way we can!
        When you are done, click the button to browse FAQ, or to go back to the main page. </br>
        #{backBtn}
    </p>

}q
 ;

Q: Search FAQ
A: ${ faq-search-msg }
K: $back services-faq-search
--

Q: Inquiries
A: ${ faq-inquiries-msg }
K: $back services-faq-inquiries
--

Q: Back to all services
A: ${ faq-welcome }
K: $back services-faq
--


