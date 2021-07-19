\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/bento_meal/Rainbow_Bento/Saveur_text.m

room: Saveur_recom

Q: save 
C: "Le Saveur Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Saveur Bento to your favourites
A: name #empty? % Okay! Added Le Saveur Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Saveur Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Saveur Bento" -set
A: Okay! Removed Le Saveur Bento from your favourites
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

Q: Saveur
A: ${ Saveur_intro }
K: Saveur_recom
--




