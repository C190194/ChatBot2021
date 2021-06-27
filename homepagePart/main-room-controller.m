\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 20 Jun 2021
\
\ A brief description of this program.
\

: ask-permission
  "Okay" yesButton ctx{ yes }
  "Maybe next time" noButton ctx{ no }
  q{
    <p>To better cater for your needs, I 
    would like to ask your permission to 
    collect some info from you.</p><br>
    #{yes} #{no}
  }q
;


Q: Start the chatbot
A: ${ask-permission}
K: chatbotHomepage
--


