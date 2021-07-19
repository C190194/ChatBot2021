\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-dateOfBirth ( -- # )
    #sorted { h }
    "dateOfBirth" h p#!
    h
;

: dateOfBirth ( -- # )
    "dateOfBirth" p#@ dup null? if
        drop new-dateOfBirth
    then
;

: save-dateOfBirth ( -- )
    "dateOfBirth" dateOfBirth p#!
;

: +dateOfBirth ( "dateOfBirth" -- )
    dup dateOfBirth #!
;

: -dateOfBirth ( "dateOfBirth" -- )
    dateOfBirth #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

Q: dateOfBirth
A: ${ dateOfBirth display }
--
