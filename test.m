\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\

\ Q: $_
\ A: ${ "Call our hotline now" "+65 555 12345" tel }
\ --
\ 

: faq-contact
  "Back to Our Services" backButton ctx{ backBtn }
  "Email" "sales@lerainbow.com.sg" "Question from Chatbot" email ", " concat
  "Telephone" "+65 658 98855" tel concat " or " concat
  "Our Website" "https://lerainbow.com.sg/contact/" link concat ctx{ links }
q{
    <h2>We're always in reach.</h2>
    <br>
    <p>
        You can contact us via
    </p>
    #{links}
    <br><br>
    We will be glad to help any way we can!
    <br><br>
    #{backBtn}

}q
;

\ for faq inquiry
mem: inquiry_log
"" inquiry_log!

mem: unlogged_inquiry
0 unlogged_inquiry!














