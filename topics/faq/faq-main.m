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

\ Room controller
include ./topics/faq/faq_room_controller.m

room: services_faq

\ Questions List
include ./topics/faq/faq_question_db.m

\ FAQ Sections
include ./topics/faq/faq_section_db.m



\ Go back from any of the faq topics
Q: Back
A: ${ faq-explore }
--


end-room


\ Inquiries
room: services_inquiries
include ./topics/faq/faq_inquiries.m
end-room

\ Room control for Our Services bot
\ Q: Our Services
\ A: ${ faq-welcome }
\ K: services_faq
\ --







