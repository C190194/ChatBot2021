\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-email ( -- # )
    #sorted { h }
    "email" h p#!
    h
;

: email ( -- # )
    "email" p#@ dup null? if
        drop new-email
    then
;

: save-email ( -- )
    "email" email p#!
;

: +email ( "email" -- )
    dup email #!
;

: -email ( "email" -- )
    email #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

\ Q: email
\ A: ${ email display }
\ --

