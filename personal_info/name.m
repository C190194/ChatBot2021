\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-name ( -- # )
    #sorted { h }
    "name" h p#!
    h
;

: name ( -- # )
    "name" p#@ dup null? if
        drop new-name
    then
;

: save-name ( -- )
    "name" name p#!
;

: +name ( "name" -- )
    dup name #!
;

: -name ( "name" -- )
    name #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

\ Q: name
\ A: ${ name display }
\ --

