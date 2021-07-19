\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/bento_meal/Exquisite_Bento/Boite_text.m

room: Boite

Q: save 
C: "Le Boite Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Boite Bento to your favourites
A: name #empty? % Okay! Added Le Boite Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Boite Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Boite Bento" -set
A: Okay! Removed Le Boite Bento from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ Exquisite_Bento_intro }
K: $back
--

end-room

Q: Boite
A: ${ Boite_intro }
K: Boite
--



