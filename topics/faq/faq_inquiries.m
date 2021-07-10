\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

\ "You may contact us through our email at sales@rainbow.com.sg or call us at +65 6589 8855"
\ Remember to log the qn when they send it


Q: Back to all services
A: ${ faq-welcome }
K: $back services-faq
--

: faq-inquiry-thanks
"Back to all services" backButton ctx{ backBtn }
q{
    <h3>Thanks! We will get back to you 👍🏼</h3>
    </br>
    #{backBtn}
}q
;
Q: $_
A: ${ faq-inquiry-thanks }
L: [Customer inquiry] userName:${ userName } | ${ last-question } 
--

