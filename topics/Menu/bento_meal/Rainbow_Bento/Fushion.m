\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/bento_meal/Rainbow_Bento/Fushion_text.m

room: Fushion

Q: save 
C: "Le Fushion Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Fushion Bento to your favourites
A: name #empty? % Okay! Added Le Fushion Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Fushion Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Fushion Bento" -set
A: Okay! Removed Le Fushion Bento from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ Rainbow_Bento_intro }
K: $back
--

end-room

Q: Fushion
A: ${ Fushion_intro }
K: Fushion
--





