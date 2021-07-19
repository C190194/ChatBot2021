\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 28 Jun 2021
\
\ A brief description of this program.
\

: recom_q1
  "Lunch or Dinner 🍱" button ctx{ b1 }
  "Wedding 👰" button ctx{ b2 }
  "Tea Party 🧁" button ctx{ b3 }
  q{
    <p style="margin-bottom: 10px">🍽️ What kind of event do you want to hold?</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
    <center>#{b3}</center>
  }q
;

assoc: recom_q1_choice
{{
  "Lunch or Dinner" 1
  "Wedding" 2
  "Tea Party" 3
}} +recom_q1_choice

: recom_q2_meal
  "$ 4~10/pax" button ctx{ b1 }
  "$ 10~15/pax" button ctx{ b2 }
  "$ 15~20/pax" button ctx{ b3 }
  q{
    <p style="margin-bottom: 10px">💵 Please select the budget per person:</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
    <center>#{b3}</center>
  }q
;

: recom_q2_wedding
  "$ 18~30/pax" button ctx{ b1 }
  "$ 30~52/pax" button ctx{ b2 }
  q{
    <p style="margin-bottom: 10px">💵 Please select the budget per person:</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
  }q
;

: recom_q2_party
  "$ 5~10/pax" button ctx{ b1 }
  "$ 10~17/pax" button ctx{ b2 }
  q{
    <p style="margin-bottom: 10px">💵 Please select the budget per person:</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
  }q
;

assoc: recom_q2
{{
  1 recom_q2_meal
  2 recom_q2_wedding
  3 recom_q2_party
}} +recom_q2

: recom_q3 ctx{ min_pax }
  "( Minimum number of guests: " 
  q{
    <b>#{min_pax}</b>
  }q concat 
  ")" concat ctx{ note }
  q{
    <p>👨‍👨‍👧‍👦 Please tell me the number of guests attending this event.</p>
    #{note}
  }q
;




