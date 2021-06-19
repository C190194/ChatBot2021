\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

\ == Events
: faq-events
  "Back to all services" backButton ctx{ servicesBtn }
  "Do you cater multiple meals for all-day events?" faqButton ctx{ Btn1 }
  "How many people can you cater to?" faqButton ctx{ Btn2 }
  "Are there special services which can improve my event?" faqButton ctx{ Btn3 }
  "How much space is required for buffet table set-up?" faqButton ctx{ Btn4 }
q{
    <h2>Events</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3370-1-scaled.jpg" style="width:260px;">
    <p>We offer buffet or mini-buffet sets for all events such as parties, seminars, celebrations, and more! Click to learn more: </p>
    
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3} </br>
    #{Btn4} </br>
    </p>
    
    </br>
    #{servicesBtn}

}q
;

Q: Events
A: ${ faq-events }
--

\ == Meals
: faq-meals
  "Back to all services" backButton ctx{ servicesBtn }
  "What is a Bento meal?" faqButton ctx{ Btn1 }
  "What is a Mini Buffet?" faqButton ctx{ Btn2 }
  "What is a Buffet Package?" faqButton ctx{ Btn3 }
  "Can I change or swap food items?" faqButton ctx{ Btn4 }
  "How much food should I order?" faqButton ctx{ Btn5 }
  "Can I split the main course into half rice and half noodles?" faqButton ctx{ Btn6 }
  "How long will the food last?" faqButton ctx{ Btn7 }
q{
    <h2>Meals</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/a1.jpg" style="width:260px;">
    <p>From Bento meals, Mini Buffet to full Buffet Packages, we have them all! Click to learn more: </p>

    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3} </br>
    #{Btn4} </br>
    #{Btn5} </br>
    #{Btn6} </br>
    #{Btn7} </br>
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Meals
A: ${ faq-meals }
--

\ == Value-Add Services
: faq-valueadd
  "Back to all services" backButton ctx{ servicesBtn }
  "What is a Cocktail Canape?" faqButton ctx{ Btn1 }
  "What is a live cooking station?" faqButton ctx{ Btn2 }
  "Is there food tasting?" faqButton ctx{ Btn3 }
  "Can we arrange a site visit?" faqButton ctx{ Btn4 }
q{
    <h2>Value-Add Services</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/LR-Wedding-Page-Banner-03-1.jpg" style="width:260px;">
    <p>We provide wedding reception styling, live station (chef station), and cocktail canape to spice up your event! Click to explore:</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3} </br>
    #{Btn4}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Value-Add Services
A: ${ faq-valueadd }
--

\ == Orders
: faq-orders
  "Back to all services" backButton ctx{ servicesBtn }
  "How do I know if my order is confirmed?" faqButton ctx{ Btn1 }
  "How do I change my order?" faqButton ctx{ Btn2 }
  "Can I add additional pax after placing my order?" faqButton ctx{ Btn3 }
q{
    <h2>Orders</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/lrgal-scaled.jpg" style="width:260px;">
    <p>Our order process is flexible. We will generally need you to order at least 3 days prior to the event, but we have also offered express catering services with 1 day notice. Click to find out more:</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Orders
A: ${ faq-orders }
--

\ == Delivery
: faq-delivery
  "Back to all services" backButton ctx{ servicesBtn }
  "What are the delivery charges?" faqButton ctx{ Btn1 }
  "What time will the collection be?" faqButton ctx{ Btn2 }
  "Will disposable cutlery be provided?" faqButton ctx{ Btn3 }
  "Is the eating time the same as the set up time?" faqButton ctx{ Btn4 }
q{
    <h2>Delivery</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3365-2-scaled.jpg" style="width:260px;">
    <p>Delivery is made on time to ensure that your event runs smoothly. Click to learn more:</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3} </br>
    #{Btn4}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Delivery
A: ${ faq-delivery }
--

\ == Payment
: faq-payment
  "Back to all services" backButton ctx{ servicesBtn }
  "Are there other payment options?" faqButton ctx{ Btn1 }
  "Can I get an official invoice for my company?" faqButton ctx{ Btn2 }
q{
    <h2>Payment</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/lr4-scaled.jpg" style="width:260px;">
    <p>We accept bank transfers via PayNow before the event date. Our customer service associates will advise you on payment when your order has been confirmed.</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Payment
A: ${ faq-payment }
--