\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ : bento_pic ( "s" -- "s" )
\   q{ 
\     width: 200px;
\   }q  (image)
\ ;



@: category 
category: Rainbow_Bento Exquisite_Bento



: bento_intro
  rainbow_bento_pic_url menu_pic ctx{ rainbow_bento_p }
  exquisite_bento_pic_url menu_pic ctx{ exquisite_bento_p }
  "Rainbow Bento 🌈" button ctx{ rainbow_bento }
  "Exquisite Bento 👑" button ctx{ exquisite_bento }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Bento Meal</h2>
        <p style="margin-bottom: 10px">
        To view our bento meals, 
        click the buttons bellow to choose the category. 
        </p>
        
        #{rainbow_bento} <br>
        <div style="margin-left: 50px">#{rainbow_bento_p}</div> 
        #{exquisite_bento} <br>
        <div style="margin-left: 50px">#{exquisite_bento_p}</div>
        
        #{back}
  }q
;

room: bento_detail

include ./topics/Menu/bento_meal/Rainbow_Bento/rainbow_bento.m
include ./topics/Menu/bento_meal/Exquisite_Bento/exquisite_bento.m

Q: back
A: ${ menu_home_1 }
K: $back
--

end-room


Q: bento
A: ${ bento_intro }
K: bento_detail
--








