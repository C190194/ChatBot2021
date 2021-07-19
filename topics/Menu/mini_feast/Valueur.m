\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/mini_feast/Valueur_text.m

room: Valueur

Q: save
C: "Le Valueur Mini Feast Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Valueur Mini Feast Express to your favourites
A: name #empty? % Okay! Added Le Valueur Mini Feast Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Valueur Mini Feast Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Valueur Mini Feast Express" -set
A: Okay! Removed Le Valueur Mini Feast Express from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ mini_feast_intro }
K: $back
--

end-room

Q: Valueur
A: ${ Valueur_intro }
K: Valueur
--



