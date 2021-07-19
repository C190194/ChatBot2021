\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\

: intro 
    "Yes, please recommend a meal !" yesButton ctx{ yes }
    "Let me explore your services first ~" noButton ctx{ no }

    q{
        <img data-action="zoom" src="https://lerainbow.com.sg/wp-content/uploads/2020/10/lerainbowlogo-02.png" style="width: 100%;">
        <p color="red">Welcome to <br>🌈<b >LE RAINBOW CATERING!</b>🌈</p><br>
        <p>Would you like me to recommend a meal for you?</p>
        #{yes}
        #{no}

    }q

;

: homepage
  "View Menu" generalButton ctx{ btn1 }
  "Our Services" generalButton ctx{ btn2 }
  "About Us" generalButton ctx{ btn3 }
q{
    <h2 style="text-align:center">Just ask! 🙋</h2>
    <p>Simply ask any question you have about 
    our food, our services, or our terms & conditions! </p>
    </br>
    <h2 style="text-align:center">Or, explore 🗺️</h2>
    <p style="margin-bottom: 10px">
        You can choose to explore Le Rainbow by topic as well.
    </p>
        <center>
        #{btn1} <br> 
        #{btn2} <br> 
        #{btn3}
        </center>
    
}q
;


Q: Let me explore your services 
A: ${ homepage }
--







