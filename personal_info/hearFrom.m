\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-hearFrom ( -- # )
    #sorted { h }
    "hearFrom" h p#!
    h
;

: hearFrom ( -- # )
    "hearFrom" p#@ dup null? if
        drop new-hearFrom
    then
;

: save-hearFrom ( -- )
    "hearFrom" hearFrom p#!
;

: +hearFrom ( "hearFrom" -- )
    dup hearFrom #!
;

: -hearFrom ( "hearFrom" -- )
    hearFrom #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

Q: hearFrom
A: ${ hearFrom display }
--
