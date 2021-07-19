\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-recom ( -- # )
    #sorted { h }
    "recom" h p#!
    h
;

: recom ( -- # )
    "recom" p#@ dup null? if
        drop new-recom
    then
;

\ + and - will automatically save the info
\ don't need this one actually
: save-recom ( -- )
    "recom" recom p#!
;

: +recom ( "recom" -- )
    dup recom #!
;

: -recom ( "recom" -- )
    recom #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

Q: recom clear
C: recom clear 
A: recom cleared
--

Q: recom
A: ${ recom display }
--





