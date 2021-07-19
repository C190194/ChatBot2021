\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ \
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/mini_feast/Superieur_text.m

room: Superieur_recom

Q: save
C: "Le Superieur Mini Feast Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Superieur Mini Feast Express to your favourites
A: name #empty? % Okay! Added Le Superieur Mini Feast Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Superieur Mini Feast Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Superieur Mini Feast Express" -set
A: Okay! Removed Le Superieur Mini Feast Express from your favourites
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

Q: Superieur Mini
A: ${ Superieur_intro }
K: Superieur_recom
--
\
\ A brief description of this program.
\




