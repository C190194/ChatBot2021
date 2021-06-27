\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\

: intro 
    "Start the chatbot" generalButton ctx{ startChatbot }

    q{
        <img data-action="zoom" src="https://lerainbow.com.sg/wp-content/uploads/2020/10/lerainbowlogo-02.png" style="width: 100%;">
        <p color="red">Welcome to <br>🌈<b >LE RAINBOW CATERING!</b>🌈</p>
        #{startChatbot}

    }q
;

: select_recom_or_explore
    "Recommend some meals for me" button ctx{ recom }
    "Let me explore Le Rainbow services" button ctx{ explore }
    q{
        <p style="margin-bottom: 10px">Hi! What would you like to do?</p>
        #{recom} <br>
        #{explore}
    }q
;



Q: start the chatbot
A: ${select_recom_or_explore}
--
