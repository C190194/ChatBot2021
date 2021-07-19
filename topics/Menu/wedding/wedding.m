\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: wedding_intro
  mini_wedding_pic_url menu_pic ctx{ mini_p }
  big_wedding_pic_url menu_pic ctx{ big_p }
  "Le Amour Mini Wedding" button ctx{ mini }
  "Wedding Reception" button ctx{ big }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Wedding</h2>
        <p style="margin-bottom: 10px">
        To view our wedding buffet sets, 
        click the buttons bellow to choose the category. 
        </p>
        
        #{mini} <br>
        <div style="margin-left: 50px">#{mini_p}</div> 
        #{big} <br>
        <div style="margin-left: 50px">#{big_p}</div>
        
        #{back}
  }q
;

room: wedding_detail

include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/mini_wedding.m
include ./topics/Menu/wedding/Wedding_Reception/wedding_reception.m

Q: back
A: ${ menu_home_2 }
K: $back
--

end-room


Q: wedding_buffet
\ A: Wedding receptions will be updated soon
A: ${ wedding_intro }
K: wedding_detail
--


