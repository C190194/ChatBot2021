\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 18 Jun 2021
\
\ A brief description of this program.
\

: button ( "s" -- "s" )
  q{ 
     border: 2px solid purple;
     font-size:10px;
  }q (button)
;

: yesButton ( "s" -- "s" )
  q{ 
     color:white;
     background-color:#4CAF50;
     font-size:10px;
     border: 2px solid #4efa89;
  }q (button)
;

: noButton ( "s" -- "s" )
  q{ 
     border: 2px solid orange;
     background-color:#ffd16a;
     color:red;
     font-size:10px;
  }q (button)
;
