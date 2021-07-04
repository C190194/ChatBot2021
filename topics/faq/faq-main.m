\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

\ terra/chat
\ terra/chat/app
\ terra/chat/log


room: services_faq

@: faq-whatis
faq-whatis: what_is_a tell_me_about explain

\ Questions by category
\ Q - "Events"
include ./topics/faq/faq-qn-events.m

\ Q - "Meals"
include ./topics/faq/faq-qn-meals.m

\ Q - "Value-Add Services"
include ./topics/faq/faq-qn-valueadd.m
    
\ Q - "Orders"
include ./topics/faq/faq-qn-orders.m
    
\ Q - "Delivery"
include ./topics/faq/faq-qn-delivery.m
    
\ Q - "Payment"
include ./topics/faq/faq-qn-payment.m

\ FAQ Sections
include ./topics/faq/faq-sections.m

\ Room controller
include ./topics/faq/faq-room-controller.m

Q: $_
A: If you can't find what you're searching for, feel free to drop us a question here: ${ "Inquiries" button }
--
end-room

\ Inquiries
room: services-faq-inquiries
include ./topics/faq/faq-inquiries.m

\ Room controller
include ./topics/faq/faq-room-controller.m
end-room


\ \ Room control for Our Services bot
\ Q: Our Services
\ A: ${ faq-welcome }
\ K: $back services-faq
\ --

\ Room control for Our Services bot
Q: Our Services
A: ${ faq-welcome }
K: services_faq
--

