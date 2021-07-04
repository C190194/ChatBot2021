\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 26 Jun 2021
\
\ A brief description of this program.
\

assoc: cat1 cat2 price1 pax1 price_upper price_lower

{{
    1 "f1"
    2 "f2"
    3 "f3"
    4 "f4"
}} +cat1

{{
    1 "F11"
    2 "F22"
    3 "F33"
    4 "F44"
}} +cat2



{{
    1 8
    2 10
    3 12
    4 14
}} +price1

{{
    1 30
    2 25
    3 20
    4 20
}} +pax1

: section
  ctx{ bt }
  q{
    #{bt} <br>
  }q
;

: price_compare1 
  1 10 <= IF "bb" button section THEN
;

: price_compare
  10 <= 
;

: bb { num }
  "aa" button
;

\ : price_compare2 { price }
  \ price 10 >= IF
        \ price 20 < THEN
\ ;

{{
    "Below $10/pax" 10
    "$10 ~ $20/pax" 20
    "Above $20/pax" 1000
}} +price_upper

{{
    "Below $10/pax" 0
    "$10 ~ $20/pax" 10
    "Above $20/pax" 20
}} +price_lower

mem: pax_type


# constant result1-hash
\ 1 1 cat1 result1-hash #!


\ this one is not finished
: event_selection { event price people }
    event "Lunch or Dinner" SAME? IF
        \ price people meal_price_selection
    ELSE 
        event "Wedding" SAME? IF
            \ price people wedding_price_selection
        ELSE 
            event "Tea Party" SAME? IF
                \ price people party_price_selection
            THEN
        THEN
    THEN
    
;

: price_selection { event price people }

    ""
    5 1 DO
        i price1 price price_upper <= IF
            i price1 price price_lower > IF 
                i cat1 button section concat 
            THEN
        THEN
        
    LOOP
;

: selection ( "s" -- "s") { choice }

    
    5 1 DO
        i price1 choice price_upper < 
                IF i i cat1 result1-hash #!
                THEN
    LOOP
    result1-hash button
    
;

\ Q: $_
\ C: "dfgs" t!
\ A: ${ last-question price_selection }
\ A: ${ t }
\ --
