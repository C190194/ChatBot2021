\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 2 Jun 2021
\
\ A brief description of this program.
\
: new-set ( -- # )
    #sorted { h }
    "set" h p#!
    h
;

: set ( -- # )
    "set" p#@ dup null? if
        drop new-set
    then
;

\ + and - will automatically save the info
\ don't need this one actually
: save-set ( -- )
    "set" set p#!
;

: +set ( "set" -- )
    dup set #!
;

: -set ( "set" -- )
    set #drop
;

: clear ( # -- # )
	begin dup dup #keys head swap #drop dup #empty? until 
;

: display ( # -- "s" )
    #keys ['] button map
    "" swap ['] concat reduce
;

Q: favourite clear
C: set clear 
A: favourite cleared
--

Q: show my favourite|favorite
Q: display my favourite|favorite
Q: show me my favourite|favorite
Q: display me my favourite|favorite
A: Here are your saved meals: ${ set display } ${ "Back to Home" backButton }
--





