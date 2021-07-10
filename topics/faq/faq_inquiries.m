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


Q: Back to our services
A: ${ faq-explore }
K: $clear services-faq
--

: faq-inquiry-thanks_1
"Back to Our Services" backButton ctx{ backBtn }
q{
    <h3>Thanks! We will get back to you 👍🏼</h3>
    </br>
    #{backBtn}
}q
;

: faq-inquiry-thanks_2
"Yes" yesButton ctx{ yes }
"No" noButton ctx{ no }
q{
    <h3>Thanks! We have received your message 👍🏼</h3>
    </br>
    <p>Would you like to leave your contact info to get our reply?</p>
    #{yes} #{no}
}q
;



Q: $_
A: name #empty? not % ${ faq-inquiry-thanks_1 }
L: name #empty? not % [Customer inquiry] userName: ${ name #keys head } | ${ last-question } 
A: last-question inquiry_log! % ${ faq-inquiry-thanks_2 }
K: name #empty? % waiting-for-permission
C: name #empty? % 1 unlogged_inquiry!
--


