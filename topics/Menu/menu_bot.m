\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 3 Jun 2021
\
\ A brief description of this program.
\
include ./topics/Menu/menu_pic.m
include ./topics/Menu/general_questions.m



: pic ( "s" -- "s" )
  q{ 
    width: 200px;
  }q  (image)
;

: menu_home
  bento_pic_url pic ctx{ bento_p }
  buffet_pic_url pic ctx{ buffet_p }
  "Bento Meal" button ctx{ bento }
  "Mini Buffet" button ctx{ buffet }
  "Back" backButton ctx{ back }
  "Display my favourite" button ctx{ fav }
  q{
        <h2 style="margin-bottom: 10px">Menu</h2>
        <p style="margin-bottom: 10px">
        To view our excellent cuisine, 
        click the buttons bellow to choose the category. 
        </p>
        #{bento} <br>
        #{bento_p} <br>
        #{buffet} <br>
        #{buffet_p} <br>
        <p>
        You may also ask me to show your saved meal set here. 
        </p>
        #{fav} <br>
        #{back}
  }q
;

room: menu_detail

include ./topics/Menu/fav_set.m
include ./topics/Menu/bento_meal/bento.m
include ./topics/Menu/mini_buffet/buffet.m

Q: back
\ Show the home page here
A: ${ home_menu }
K: $back
--

end-room



Q: menu
A: ${ menu_home }
K: menu_detail
--











