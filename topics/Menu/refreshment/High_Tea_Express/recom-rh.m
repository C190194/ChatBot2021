\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

include ./topics/Menu/refreshment/High_Tea_Express/Merveille_text.m

room: Merveille_high_recom

Q: save
C: "Le Merveille Mini Feast Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Merveille Mini Feast Express to your favourites
A: name #empty? % Okay! Added Le Merveille Mini Feast Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Merveille Mini Feast Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Merveille Mini Feast Express" -set
A: Okay! Removed Le Merveille Mini Feast Express from your favourites
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

Q: Merveille
A: ${ Merveille_high_intro }
K: Merveille_high_recom
--

include ./topics/Menu/refreshment/High_Tea_Express/Superieur_text.m

room: Superieur_high_recom

Q: save
C: "Le Superieur High Tea Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Superieur High Tea Express to your favourites
A: name #empty? % Okay! Added Le Superieur High Tea Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Superieur High Tea Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Superieur High Tea Express" -set
A: Okay! Removed Le Superieur High Tea Express from your favourites
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

Q: Superieur
A: ${ Superieur_high_intro }
K: Superieur_high_recom
--

include ./topics/Menu/refreshment/High_Tea_Express/Valeur_text.m

room: Valeur_recom

Q: save
C: "Le Valeur Mini Feast Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Valeur Mini Feast Express to your favourites
A: name #empty? % Okay! Added Le Valeur Mini Feast Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Valeur Mini Feast Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Valeur Mini Feast Express" -set
A: Okay! Removed Le Valeur Mini Feast Express from your favourites
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

Q: Valeur
A: ${ Valeur_intro }
K: Valeur_recom
--
