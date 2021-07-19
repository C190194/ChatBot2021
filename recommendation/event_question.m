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

include ./recommendation/saving.m
include ./recommendation/question_text.m
include ./recommendation/meal_question.m
include ./recommendation/wedding_question.m
include ./recommendation/party_question.m





room: recom_event

Q: Lunch or Dinner
A: ${ recom_q2_meal }
C: 1 recom_q1_answer!
K: $back recom_price_meal
--

Q: Wedding
A: ${ recom_q2_wedding }
C: 2 recom_q1_answer!
K: $back recom_price_wedding
--

Q: Tea Party
A: ${ recom_q2_party }
C: 3 recom_q1_answer!
K: $back recom_price_party
--

Q: $_
A: Please select one of the choices above
--

end-room

\ Q: 1
\ C: "11" +recom
\ A: ok
\ --
\ 
\ Q: 0
\ C: recom #empty? not % recom clear
\ A: clear
\ --
\ 
\ Q: $_
\ A: ${ recom display }
\ --

Q: recommend me a meal
Q: recommend a meal
Q: recommend some meals
Q: recommend
\ A: ${ recom #size }
A: ${ recom_q1 } 
C: recom #empty? not % recom clear
K: recom_event
--








