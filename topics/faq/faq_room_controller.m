\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\


: faq-explore
  "What events are you able to support?" button ctx{ generalBtn }
  "Food options and customisation" button ctx{ menuBtn }
  "Our value-added services" button ctx{ addOnBtn }
  "What is the order and delivery process?" button ctx{ orderDeliveryBtn }
  "How do I pay?" button ctx{ paymentBtn }
  "Send us a message" faqMenuButton ctx{ inquiryBtn }
  "Back to Home" backButton ctx{ homeBtn }
q{
    <h2 style="text-align:center">Our Services</h2>
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
  "Back to Our Services" backButton ctx{ backBtn }
  "Contact Us" faqMenuButton ctx{ contactInfoBtn }
q{
    <h2>How can we help?</h2>
    <p>
        Simply type your enquiry below. Our team will get in touch with you.
    </p>
    <br>
    
    <h3>Prefer to talk to us?</h3>
    #{contactInfoBtn}
        
    <br><br>
    
    <h3>Didn't mean to send a message?</h3>
    <br>
    #{backBtn}

}q
 ;


\ : faq-contact
\   "Back to Home" backButton ctx{ backBtn }
\   "Email" "sales@lerainbow.com.sg" "Question from Chatbot" email ", " concat
\   "Telephone" "+65 658 98855" tel concat " or " concat
\   "Our Website" "https://lerainbow.com.sg/contact/" link concat ctx{ links }
\ q{
\     <p>
\         You can contact us via
\     </p>
\     #{links}
\     <br><br>
\     We will be glad to help any way we can!
\     <br><br>
\     #{backBtn}
\ 
\ }q
\ ;


Q: Send a message
Q: Send us a message
Q: Inquiries
A: ${ faq-inquiries-msg }
K: -services_faq services_inquiries
--

\ Q: Back to Home
\ A: ${ homepage }
\ K: -services_faq -services_inquiries
\ --

\ Go back from inquiries page
Q: Back to our services
A: ${ faq-explore }
K: $clear services_faq
--



Q: Our services
A: ${ faq-explore }
K: services_faq
--

Q: Contact Us
A: ${ faq-contact }
K: -services_inquiries
--






