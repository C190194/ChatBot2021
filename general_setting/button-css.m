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
     font-size:15px;
  }q (button)
;

: yesButton ( "s" -- "s" )
  q{ 
     color:white;
     background-color:#4CAF50;
     font-size:15px;
     border: 2px solid #4efa89;
  }q (button)
;

: noButton ( "s" -- "s" )
  q{ 
     border: 2px solid orange;
     background-color:#ffd16a;
     color:red;
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

: faqButton ( "s" -- "s" )
  q{ 
	color:#FFFFFF;
	background:#53284e;
	font-size:15px;
  }q  (button)
;

: backButton ( "s" -- "s" )
  q{ 
	color:#FFF;
	background:#42ddf5;
	font-size:15px;
  }q  (button)
;

: lerainbowButton ( "s" -- "s" )
  q{ 
    	border: 2px solid purple;
	font-size:15px;
    	color:#FFF;
	background: url(https://images.unsplash.com/photo-1579546929662-711aa81148cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80);
	background-size: 150px 50px;
  }q  (button)
;
