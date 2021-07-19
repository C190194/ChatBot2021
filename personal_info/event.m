\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-event ( -- # )
    #sorted { h }
    "event" h p#!
    h
;

: event ( -- # )
    "event" p#@ dup null? if
        drop new-event
    then
;

: save-event ( -- )
    "event" event p#!
;

: +event ( "event" -- )
    dup event #!
;

: -event ( "event" -- )
    event #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

\ Q: event
\ A: ${ event display }
\ --

