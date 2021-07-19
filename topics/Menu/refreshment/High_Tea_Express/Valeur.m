\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/refreshment/High_Tea_Express/Valeur_text.m

room: Valeur

Q: save
C: "Le Valeur High Tea Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Valeur High Tea Express to your favourites
A: name #empty? % Okay! Added Le Valeur High Tea Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Valeur High Tea Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Valeur High Tea Express" -set
A: Okay! Removed Le Valeur High Tea Express from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ high_tea_intro }
K: $back
--

end-room

Q: Valeur
A: ${ Valeur_intro }
K: Valeur
--


