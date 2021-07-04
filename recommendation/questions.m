\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\

mem: recom_q1_answer recom_q2_answer recom_q3_answer
0 recom_q1_answer!
0 recom_q2_answer!
0 recom_q3_answer!

: recom_q1
  "Lunch or Dinner" button ctx{ b1 }
  "Wedding" button ctx{ b2 }
  "Tea Party" button ctx{ b3 }
  q{
    <p style="margin-bottom: 10px">What kind of event do you want to hold?</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
    <center>#{b3}</center>
  }q
;

: recom_q2
  "Below $10/pax" button ctx{ b1 }
  "$10 ~ $20/pax" button ctx{ b2 }
  "Above $20/pax" button ctx{ b3 }
  q{
    <p style="margin-bottom: 10px">Select the price range of the meal set:</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
    <center>#{b3}</center>
  }q
;

: recom_q3
  "20 ~ 35" button ctx{ b1 }
  "35 ~ 50" button ctx{ b2 }
  "Above 50" button ctx{ b3 }
  q{
    <p style="margin-bottom: 10px">How many people will attend the event?</p>
    <center>#{b1}</center>
    <center>#{b2}</center>
    <center>#{b3}</center>
  }q
;

room: recom

include ./recommendation/test.m

assoc: recom_ques 
{{
  1 recom_q1
  2 recom_q2
  3 recom_q3
}} +recom_ques

mem: q_index
1 q_index!

: last? q_index 4 >= ;

Q: $_
A: q_index 4 = % ${ recom_q1_answer recom_q2_answer last-question price_selection }
A: ${ q_index recom_ques }
C: q_index 2 = % last-question recom_q1_answer!
C: q_index 3 = % last-question recom_q2_answer!
C: q_index 4 = % last-question recom_q3_answer!
C: +q_index
K: q_index 4 = % -recom
\ C: last-question recom_q1_answer!
\ C: 0 recom_q1_answer = % last-question recom_q1_answer!
\ A: 0 recom_q1_answer = % ${ recom_q2 }
\ C: 0 recom_q2_answer = % last-question recom_q2_answer!
\ A: 0 recom_q2_answer = % ${ recom_q3 }
\ A: ${ recom_q1_answer recom_q2_answer last-question price_selection }
\ A: ${ recom_q1_answer } ${ recom_q2_answer } ${ recom_q3_answer }
--

end-room

Q: Recommend some meals for me
A: ${ q_index recom_ques } 
C: +q_index
K: recom
--

