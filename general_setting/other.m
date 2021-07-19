\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 9 Jul 2021
\
\ A brief description of this program.
\


: link ( “txt” “url” — “s” ) 
   ctx{ txt url } 
   q{ 
       <a href=“#{url}” target=“_blank”>
           #{txt}
        </a>
     }q
;
