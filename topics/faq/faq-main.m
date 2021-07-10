\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

\ jokes
include ./topics/faq/secret.m

\ FAQ specific stylings
include ./topics/faq/faq_css.m


room: services_faq
\ Room controller
include ./topics/faq/faq_room_controller.m

\ Questions List
include ./topics/faq/faq_question_db.m

\ FAQ Sections
include ./topics/faq/faq_section_db.m

\ idkResponses List
include ./topics/faq/faq_idk_responses_db.m
Q: $_
A: ${ faqIdk1 } ; ${ faqIdk2 } ; ${ faqIdk3 } ; ${ faqIdk4 }
--
end-room


\ Inquiries
room: services_inquiries

\ Room controller
include ./topics/faq/faq-room-controller.m

include ./topics/faq/faq_inquiries.m
end-room

\ Room control for Our Services bot
Q: Our Services
A: ${ faq-welcome }
K: services_faq
--





