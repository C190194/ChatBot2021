\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 4 Jul 2021
\
\ A brief description of this program.
\

: button ( "s" -- "s" )
  q{ 
     border: 2px solid purple;
     font-size:15px;
  }q (button)
;

: generalButton ( "s" -- "s" )
  q{ 
	margin-left:10px;
	margin-top:10px;
	padding:10px;
	text-align: center;
	width: 160px;
	font-size:15px;
	color:#FFFFFF;
	background:#53284e;
  }q  (button)
;

: backButton ( "s" -- "s" )
  q{ 
	color:#FFF;
	background:#42ddf5;
	font-size:15px;
  }q  (button)
;

: faqMenuButton ( "s" -- "s" )
  q{ 
    position: relative;
    margin-top:10px;
    left: 15%;
    
    border: none;
	background:#53284e;
	padding:8px;
	width: 160px;
	
	text-align: center;
	color:#FFFFFF;
	font-size:15px;
	
  }q  (button)
;

: faqQnButton ( "s" -- "s" )
  q{ 
    border: none;
	background:#ecb3ff;
	
	color:#333333;
	font-size:14px;
  }q  (button)
;
