\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 3 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/menu_pic.m
\ include ./topics/Menu/general_questions.m





: menu_home_1
  bento_pic_url menu_pic ctx{ bento_p }
  buffet_pic_url menu_pic ctx{ buffet_p }
  "Bento Meal" button ctx{ bento }
  "Mini Feast Express" button ctx{ buffet }
  
  "Next Page" backButton ctx{ next }
  
  "Back to Home" backButton ctx{ back }
  "Display my favourite" button ctx{ fav }
  q{
        <h2 style="margin-bottom: 10px">Menu 📖 (Part A)</h2>
        <p style="margin-bottom: 10px">
        To view our excellent cuisine,
        click the buttons bellow to choose the category.
        </p>
        #{bento} <br>
        #{bento_p} <br>
        #{buffet} <br>
        #{buffet_p} <br>
        <center>#{next}</center> 
        <p>
        You may also ask me to show your bookmarked meal sets here.
        </p>
        <center>#{fav}</center>
        #{back}
  }q
;

: menu_home_2
  refreshment_pic_url menu_pic ctx{ refreshment_p }
  wedding_pic_url menu_pic ctx{ wedding_p }
  "Refreshment" button ctx{ refreshment }
  "Wedding Buffet" button ctx{ wedding }
  
  "Previous Page" backButton ctx{ pre }
  
  "Back to Home" backButton ctx{ back }
  "Display my favourite" button ctx{ fav }
  q{
        <h2 style="margin-bottom: 10px">Menu 📖 (Part B)</h2>
        <p style="margin-bottom: 10px">
        To view our excellent cuisine,
        click the buttons bellow to choose the category.
        </p>
        #{refreshment} <br>
        #{refreshment_p} <br>
        #{wedding} <br>
        #{wedding_p} <br>
        <center>#{pre}</center> 
        <p>
        You may also ask me to show your bookmarked meal sets here.
        </p>
        <center>#{fav}</center>
        #{back}
  }q
;

room: menu_detail

\ include ./topics/Menu/fav_set.m
include ./topics/Menu/bento_meal/bento.m
include ./topics/Menu/mini_feast/mini_feast.m
include ./topics/Menu/refreshment/refreshment.m
include ./topics/Menu/wedding/wedding.m

Q: back
\ Show the home page here
A: ${ homepage }
K: $back
--

Q: Next page
A: ${ menu_home_2 }
--

Q: Previous page
A: ${ menu_home_1 }
--

end-room



Q: menu
A: ${ menu_home_1 }
K: menu_detail
--

















