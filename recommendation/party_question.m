\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\


assoc: party_name party_price party_pax party_price_upper party_price_lower

{{
    1 "Le Bouchees Snack Box ($5/pax)"
    2 "Le Patisserie Snack Box ($6/pax)"
    3 "Le Fraiche Snack Box ($7/pax)"
    4 "Le Bouffee Snack Box ($8/pax)"
    5 "Le Emballee Snack Box ($10/pax)"
    6 "Le Valeur High Tea Express ($11/pax)"
    7 "Le Merveille High Tea Express ($12/pax)"
    8 "Le Superieur High Tea Express ($15/pax)"
}} +party_name

{{
    1 5.35
    2 6.42
    3 7.49
    4 8.56
    5 10.70
    6 11.77
    7 12.84
    8 16.05
}} +party_price

{{
    1 10
    2 17
}} +party_price_upper

{{
    1 5
    2 10
}} +party_price_lower

{{
    1 40
    2 40
    3 30
    4 30
    5 20
    6 20
    7 20
    8 20
}} +party_pax

mem: max_num
10000 max_num!

mem: party_min_pax

room: recom_price_party

: find_party_min_pax { price_choice }

    max_num party_min_pax!
    drop

    9 1 DO
        i party_price price_choice party_price_upper <= IF
            i party_price price_choice party_price_lower > IF
                i party_pax party_min_pax < IF
                    i party_pax party_min_pax! 
                    drop
                THEN
            THEN
        THEN
    LOOP
    
    party_min_pax
;

Q: 5~10/pax
A: ${ 1 find_party_min_pax recom_q3 }
C: 1 recom_q2_answer!
K: $back recom_pax_party
--

Q: 10~17/pax
A: ${ 2 find_party_min_pax recom_q3 }
C: 2 recom_q2_answer!
K: $back recom_pax_party
--

Q: $_
A: Please select one of the choices above
--

end-room

room: recom_pax_party

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

: recom_result_party { num_guest }
    9 1 DO
        i party_price recom_q2_answer party_price_upper <= IF
            i party_price recom_q2_answer party_price_lower > IF
                i party_pax num_guest <= IF
                    i party_name +recom
                THEN
            THEN
        THEN
    LOOP
    save-recom
    recom display
;

: not_enough_guests_1
  party_min_pax ctx{ min_pax }

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
  party_min_pax ctx{ min_pax }
  
  "The minimum number of guests is "
  q{
    <b>#{min_pax}</b>
  }q concat
  " for meals at this price range." concat ctx{ t1 }
  "Yes" yesButton ctx{ yes }
  "Show me the meals that require "
  party_min_pax concat
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
A: ${ recom_q2_party }
C: 0 recom_num_input_count!
K: $back recom_price_party
--

Q: Show me the meals that require
A: ${ party_min_pax recom_result_party recommended_menu }
C: 0 recom_num_input_count!
K: $back
--



Q: $num.@numberRegex guests
Q: $num.@numberRegex people
Q: There are $num.@numberRegex
Q: $num.@numberRegex
C: $num int party_min_pax < % recom_num_input_count 1+ 2 mod 1+ recom_num_input_count!
C: $num int party_min_pax < % party_min_pax recom_q3_answer!
A: $num int party_min_pax < % ${ not_enough_guests }
A: $num int recom_q3_answer! % ${ recom_q3_answer recom_result_party recommended_menu }
K: $num int party_min_pax < not %$back
--

Q: $_
A: Please tell me the number of guests
--


end-room
