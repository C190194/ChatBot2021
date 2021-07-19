\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-mobileNum ( -- # )
    #sorted { h }
    "mobileNum" h p#!
    h
;

: mobileNum ( -- # )
    "mobileNum" p#@ dup null? if
        drop new-mobileNum
    then
;

: save-mobileNum ( -- )
    "mobileNum" mobileNum p#!
;

: +mobileNum ( "mobileNum" -- )
    dup mobileNum #!
;

: -mobileNum ( "mobileNum" -- )
    mobileNum #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

Q: mobileNum
A: ${ mobileNum display }
--
