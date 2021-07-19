\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\


assoc: wedding_name wedding_price wedding_pax wedding_price_upper wedding_price_lower

{{
    1 "Le Matrimony Mini Wedding Bite ($38/pax)"
    2 "Le Nuptial Mini Wedding Feast ($48/pax)"
    3 "Le Romance Wedding Buffet ($18/pax)"
    4 "Le Destino Wedding Buffet ($20/pax)"
    5 "Le Eternite Wedding Buffet ($23/pax)"
    6 "Le Charme Wedding Buffet ($28/pax)"
    7 "Le Beaute Wedding Buffet ($38/pax)"
    8 "Le Amore Wedding Buffet ($48/pax)"
}} +wedding_name

{{
    1 40.36
    2 51.36
    3 19.26
    4 21.40
    5 24.61
    6 29.96
    7 40.36
    8 51.36
}} +wedding_price

{{
    1 30
    2 52
}} +wedding_price_upper

{{
    1 18
    2 30
}} +wedding_price_lower

{{
    1 20
    2 20
    3 50
    4 45
    5 40
    6 80
    7 60
    8 50
}} +wedding_pax

mem: max_num
10000 max_num!

mem: wedding_min_pax

room: recom_price_wedding

: find_wedding_min_pax { price_choice }

    max_num wedding_min_pax!
    drop

    9 1 DO
        i wedding_price price_choice wedding_price_upper <= IF
            i wedding_price price_choice wedding_price_lower > IF
                i wedding_pax wedding_min_pax < IF
                    i wedding_pax wedding_min_pax! 
                    drop
                THEN
            THEN
        THEN
    LOOP
    
    wedding_min_pax
;

Q: 18~30/pax
A: ${ 1 find_wedding_min_pax recom_q3 }
C: 1 recom_q2_answer!
K: $back recom_pax_wedding
--

Q: 30~52/pax
A: ${ 2 find_wedding_min_pax recom_q3 }
C: 2 recom_q2_answer!
K: $back recom_pax_wedding
--

Q: $_
A: Please select one of the choices above
--

end-room

room: recom_pax_wedding

mem: recom_num_input_count
0 recom_num_input_count!

assoc: recom_q1_choices  

{{
  1 "lunch or dinner" 
  2 "wedding" 
  3 "tea wedding" 
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

: recom_result_wedding { num_guest }
    9 1 DO
        i wedding_price recom_q2_answer wedding_price_upper <= IF
            i wedding_price recom_q2_answer wedding_price_lower > IF
                i wedding_pax num_guest <= IF
                    i wedding_name +recom
                THEN
            THEN
        THEN
    LOOP
    save-recom
    recom display
;

: not_enough_guests_1
  wedding_min_pax ctx{ min_pax }

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
  wedding_min_pax ctx{ min_pax }
  
  "The minimum number of guests is "
  q{
    <b>#{min_pax}</b>
  }q concat
  " for meals at this price range." concat ctx{ t1 }
  "Yes" yesButton ctx{ yes }
  "Show me the meals that require "
  wedding_min_pax concat
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
A: ${ recom_q2_wedding }
C: 0 recom_num_input_count!
K: $back recom_price_wedding
--

Q: Show me the meals that require
A: ${ wedding_min_pax recom_result_wedding recommended_menu }
C: 0 recom_num_input_count!
K: $back
--



Q: $num.@numberRegex guests
Q: $num.@numberRegex people
Q: There are $num.@numberRegex
Q: $num.@numberRegex
C: $num int wedding_min_pax < % recom_num_input_count 1+ 2 mod 1+ recom_num_input_count!
C: $num int wedding_min_pax < % wedding_min_pax recom_q3_answer!
A: $num int wedding_min_pax < % ${ not_enough_guests }
A: $num int recom_q3_answer! % ${ recom_q3_answer recom_result_wedding recommended_menu }
K: $num int wedding_min_pax < not %$back
--

Q: $_
A: Please tell me the number of guests
--


end-room
