\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

terra/chat
terra/chat/app
terra/chat/log


room: services-faq

@: faq-whatis
faq-whatis: what_is_a tell_me_about explain

\ Questions by category
\ Q - "Events"
include ./faq/faq-qn-events.m

\ Q - "Meals"
include ./faq/faq-qn-meals.m

\ Q - "Value-Add Services"
include ./faq/faq-qn-valueadd.m
    
\ Q - "Orders"
include ./faq/faq-qn-orders.m
    
\ Q - "Delivery"
include ./faq/faq-qn-delivery.m
    
\ Q - "Payment"
include ./faq/faq-qn-payment.m

\ FAQ Sections
include ./faq/faq-sections.m

\ Room controller
include ./faq/faq-room-controller.m

Q: $_
A: If you can't find what you're searching for, feel free to drop us a question here: ${ "Inquiries" button }
--
end-room

\ Inquiries
room: services-faq-inquiries
include ./faq/faq-inquiries.m

\ Room controller
include ./faq/faq-room-controller.m
end-room


\ Room control for Our Services bot
Q: Our Services
A: ${ faq-welcome }
K: $back services-faq
--
