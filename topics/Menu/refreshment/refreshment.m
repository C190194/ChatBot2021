\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: refreshment_intro
  rainbow_snack_pic_url menu_pic ctx{ rainbow_snack_p }
  high_tea_pic_url menu_pic ctx{ high_tea_p }
  "Rainbow Snack Box 🌈" button ctx{ rainbow_snack }
  "High Tea Express 👑" button ctx{ high_tea }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Refreshment</h2>
        <p style="margin-bottom: 10px">
        To view our refreshment sets, 
        click the buttons bellow to choose the category. 
        </p>
        
        #{rainbow_snack} <br>
        <div style="margin-left: 50px">#{rainbow_snack_p}</div> 
        #{high_tea} <br>
        <div style="margin-left: 50px">#{high_tea_p}</div>
        
        #{back}
  }q
;

room: refreshment_detail

include ./topics/Menu/refreshment/Rainbow_Snack_Box/rainbow_snack.m
include ./topics/Menu/refreshment/High_Tea_Express/high_tea.m

Q: back
A: ${ menu_home_2 }
K: $back
--

end-room


Q: refreshment
A: ${ refreshment_intro }
K: refreshment_detail
--


