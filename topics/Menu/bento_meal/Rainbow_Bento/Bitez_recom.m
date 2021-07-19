\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/bento_meal/Rainbow_Bento/Bitez_text.m

room: Bitez_recom

Q: save 
C: "Le Bitez Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Bitez Bento to your favourites
A: name #empty? % Okay! Added Le Bitez Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Bitez Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Bitez Bento" -set
A: Okay! Removed Le Bitez Bento from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: recom #empty? % ${ homepage }
A: ${ recom display return_recom_menu }
K: $back
--

end-room

Q: Bitez
A: ${ Bitez_intro }
K: Bitez_recom
--




