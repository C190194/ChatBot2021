\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\


assoc: meal_name meal_price meal_pax meal_price_upper meal_price_lower

{{
    1 "Le Bitez Bento ($4/pax)"
    2 "Le Fushion Bento ($5/pax)"
    3 "Le Delicieux Bento ($6/pax)"
    4 "Le Saveur Bento ($8/pax)"
    5 "Le Mieux Bento ($10/pax)"
    6 "Le Grande Bento ($12/pax)"
    7 "Le Gusto Bento ($14/pax)"
    8 "Le Boite Bento ($16/pax)"
    9 "Le Appetit Mini Feast ($8/pax)"
    10 "Le Valueuer Mini Feast ($11/pax)"
    11 "Le Merveille Mini Feast ($12/pax)"
    12 "Le Superieur Mini Feast ($15/pax)"
    13 "Le Joyeux Mini Feast ($18/pax)"
}} +meal_name

{{
    1 4.28
    2 5.35
    3 6.42
    4 8.56
    5 10.70
    6 12.84
    7 14.98
    8 17.15
    9 8.56
    10 11.77
    11 12.84
    12 16.05
    13 19.26
}} +meal_price

{{
    1 10
    2 15
    3 20
}} +meal_price_upper

{{
    1 4
    2 10
    3 15
}} +meal_price_lower

{{
    1 50
    2 40
    3 35
    4 25
    5 20
    6 20
    7 20
    8 20
    9 25
    10 20
    11 20
    12 20
    13 20
}} +meal_pax

mem: max_num
10000 max_num!

mem: meal_min_pax

room: recom_price_meal

: find_meal_min_pax { price_choice }

    max_num meal_min_pax!
    drop

    14 1 DO
        i meal_price price_choice meal_price_upper <= IF
            i meal_price price_choice meal_price_lower > IF
                i meal_pax meal_min_pax < IF
                    i meal_pax meal_min_pax! 
                    drop
                THEN
            THEN
        THEN
    LOOP
    
    meal_min_pax
;

Q: 4~10/pax
A: ${ 1 find_meal_min_pax recom_q3 }
C: 1 recom_q2_answer!
K: $back recom_pax_meal
--

Q: 10~15/pax
A: ${ 2 find_meal_min_pax recom_q3 }
C: 2 recom_q2_answer!
K: $back recom_pax_meal
--

Q: 15~20/pax
A: ${ 3 find_meal_min_pax recom_q3 }
C: 3 recom_q2_answer!
K: $back recom_pax_meal
--

Q: $_
A: Please select one of the choices above
--

end-room

room: recom_pax_meal

mem: recom_num_input_count
0 recom_num_input_count!

assoc: recom_q1_choices  

{{
  1 "lunch or dinner" 
  2 "wedding" 
  3 "tea party" 
}} +recom_q1_choices

: recommended_menu ctx{ buttons }
  "We recommend the following options for your " 
  recom_q2_answer recom_q1_choices concat
  " attended by " concat
  recom_q3_answer concat
  " guests:" concat ctx{ text }
  q{
    <p>#{text}</p>
    #{buttons}
  }q
;

: recom_result_meal { num_guest }
    14 1 DO
        i meal_price recom_q2_answer meal_price_upper <= IF
            i meal_price recom_q2_answer meal_price_lower > IF
                i meal_pax num_guest <= IF
                    i meal_name +recom
                THEN
            THEN
        THEN
    LOOP
    save-recom
    recom display
;

: not_enough_guests_1
  meal_min_pax ctx{ min_pax }

  "The minimum number of guests is "
  q{
    <b>#{min_pax}</b>
  }q concat
  " for meals at this price range." concat ctx{ t1 }
  q{
    <p>#{t1}</p><br>
    <p>Please tell me a number larger than that.</p>
  }q
;

: not_enough_guests_2
  meal_min_pax ctx{ min_pax }
  
  "The minimum number of guests is "
  q{
    <b>#{min_pax}</b>
  }q concat
  " for meals at this price range." concat ctx{ t1 }
  "Yes" yesButton ctx{ yes }
  "Show me the meals that require "
  meal_min_pax concat
  " paxs" concat noButton ctx{ no }
  q{
    <p>#{t1}</p><br>
    <p>
    Meal sets with higher prices would require less minimum paxs. 
    Would you like to choose another price range?
    </p>
    #{yes}
    #{no}
  }q
;

: not_enough_guests
  recom_num_input_count 0 = IF
        not_enough_guests_1
  ELSE
        not_enough_guests_2
  THEN
;

Q: Yes
A: ${ recom_q2_meal }
C: 0 recom_num_input_count!
K: $back recom_price_meal
--

Q: Show me the meals that require
A: ${ meal_min_pax recom_result_meal recommended_menu }
C: 0 recom_num_input_count!
K: $back
--



Q: $num.@numberRegex guests
Q: $num.@numberRegex people
Q: There are $num.@numberRegex
Q: $num.@numberRegex
C: $num int meal_min_pax < % recom_num_input_count 1+ 2 mod 1+ recom_num_input_count!
C: $num int meal_min_pax < % meal_min_pax recom_q3_answer!
A: $num int meal_min_pax < % ${ not_enough_guests }
A: $num int recom_q3_answer! % ${ recom_q3_answer recom_result_meal recommended_menu }
K: $num int meal_min_pax < not %$back
--

Q: $_
A: Please tell me the number of guests
--


end-room





