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
  "Back" backButton ctx{ servicesBtn }
  "Do you cater multiple meals for all-day events?" button ctx{ Btn1 }
  "How many people can you cater to?" button ctx{ Btn2 }
  "Are there special services which can improve my event?" button ctx{ Btn3 }
  "Amount of space required for the buffet setup?" button ctx{ Btn4 }
q{
    <h2>We can support many events! 🎟️</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3370-1-scaled.jpg" style="width:260px;">
    <p>We offer buffet or mini-buffet sets for all events such as parties, seminars, celebrations, and more!</p>
    
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

Q: What events are you able to support
Q: Events
A: ${ faq-events }
--

\ == Meals
: faq-meals
  "Back" backButton ctx{ servicesBtn }
  "What is a Bento meal?" button ctx{ Btn1 }
  "What is a Mini Buffet?" button ctx{ Btn2 }
  "What is a Buffet?" button ctx{ Btn3 }
  "Can I change or swap food items?" button ctx{ Btn4 }
  "Should I order more food?" button ctx{ Btn5 }
  "Can I split the main course into half rice and half noodles?" button ctx{ Btn6 }
  "How long will the food last?" button ctx{ Btn7 }
q{
    <h2>Questions about our food? 🍛</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/a1.jpg" style="width:260px;">
    <p>From Bento meals, Mini Buffet to full Buffet Packages, we have them all!</p>

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

Q: Food options and customisation
Q: Meals
A: ${ faq-meals }
--

\ == Value-Add Services
: faq-valueadd
  "Back" backButton ctx{ servicesBtn }
  "Want to add some beautiful bites?" button ctx{ Btn1 }
  "How about adding a live cooking show?" button ctx{ Btn2 }
  "Is there food tasting?" button ctx{ Btn3 }
  "Can we arrange a site visit?" button ctx{ Btn4 }
  "Is there last minute order amendment available?" button ctx{ Btn5 }
q{
    <h2>May I suggest some ways to elevate your food reception? ✨</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/LR-Wedding-Page-Banner-03-1.jpg" style="width:260px;">
    <p>We create beautiful wedding receptions, offer live cooking station (chef station), provide real time updates and more!</p>
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3} </br>
    #{Btn4} </br>
    #{Btn5}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: Our value-added services
Q: Value-Added Services
A: ${ faq-valueadd }
--

\ == Orders
: faq-orders-delivery
  "Back" backButton ctx{ servicesBtn }
  "How do I know if my order is confirmed?" button ctx{ Btn1 }
  "How do I change my order?" button ctx{ Btn2 }
  "Can I add additional pax after placing my order?" button ctx{ Btn3 }
  
  "What are the delivery charges?" button ctx{ Btn4 }
  "What time will the collection be?" button ctx{ Btn5 }
  "Will disposable cutlery be provided?" button ctx{ Btn6 }
q{
    <h2>About Our Ordering Process 📝</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/lrgal-scaled.jpg" style="width:260px;">
    <p>We generally need you to order at least 3 days prior to the event, but we have also offered express catering services with 1 day notice.</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2} </br>
    #{Btn3}
    </p>
    
    <br>
    <p>
    <h3>Delivery 🚚</h3>
    #{Btn4} </br>
    #{Btn5} </br>
    #{Btn6}

    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: What is the order and delivery process
Q: Orders
Q: Delivery
A: ${ faq-orders-delivery }
--

\ \ == Delivery
\ : faq-delivery
\   "Back to all services" backButton ctx{ servicesBtn }
\   "What are the delivery charges?" button ctx{ Btn1 }
\   "What time will the collection be?" button ctx{ Btn2 }
\   "Will disposable cutlery be provided?" button ctx{ Btn3 }
\   "Is the eating time the same as the set up time?" button ctx{ Btn4 }
\ q{
\     <h2>Delivery</h2>
\     <img src="https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3365-2-scaled.jpg" style="width:260px;">
\     <p>Delivery is made on time to ensure that your event runs smoothly. Click to learn more:</p>
\     </br>
\     <p>
\     #{Btn1} </br>
\     #{Btn2} </br>
\     #{Btn3} </br>
\     #{Btn4}
\     </p>
\     
\     </br>
\     #{servicesBtn}
\ }q
\ ;
\ 
\ Q: Delivery
\ A: ${ faq-delivery }
\ --

\ == Payment
: faq-payment
  "Back" backButton ctx{ servicesBtn }
  "Are there other payment options?" button ctx{ Btn1 }
  "Can I get an official invoice for my company?" button ctx{ Btn2 }
q{
    <h2>Payment is easy! 💲</h2>
    <img src="https://lerainbow.com.sg/wp-content/uploads/2021/04/lr4-scaled.jpg" style="width:260px;">
    <p>We accept bank transfers via PayNow. Our customer service associates will advise you on payment when your order has been confirmed.</p>
    </br>
    <p>
    #{Btn1} </br>
    #{Btn2}
    </p>
    
    </br>
    #{servicesBtn}
}q
;

Q: How do I pay
Q: Payment
A: ${ faq-payment }
--
