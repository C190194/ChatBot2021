\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 18 Jun 2021
\
\ A brief description of this program.
\ general css

: yesButton ( "s" -- "s" )
  q{ 
	margin-left:10px;
	margin-top:10px;
	padding:10px;
	font-size:15px;
	color:#FFFFFF;
	background:#4CAF50;
  }q  (button)
;


: noButton ( "s" -- "s" )
  q{ 
	margin-left:10px;
	margin-top:10px;
	padding:10px;
	font-size:15px;
	color:#FFFFFF;
	background:#f44336;
  }q  (button)
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


: button ( "s" -- "s" )
  q{ 
     border: 2px solid purple;
     font-size:10px;
  }q (button)
;

: backButton ( "s" -- "s" )
  q{ 
     border: 2px solid purple
  }q (button)
;

: faqButton ( "s" -- "s" )
  q{ 
	color:#FFFFFF;
	background:#53284e;
  }q  (button)
;