\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 4 Jul 2021
\
\ A brief description of this program.
\


\ TODO
\ : roundedDivider
\   q{
\     <style>
\       border-top: 8px solid #bbb;
\       border-radius: 5px;
\     </style>
\     
\     <hr>
\   }q
\ ;

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

