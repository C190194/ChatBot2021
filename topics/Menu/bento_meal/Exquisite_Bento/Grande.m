\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/bento_meal/Exquisite_Bento/Grande_text.m

room: Grande

Q: save 
C: "Le Grande Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Grande Bento to your favourites
A: name #empty? % Okay! Added Le Grande Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Grande Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Grande Bento" -set
A: Okay! Removed Le Grande Bento from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ Exquisite_Bento_intro }
K: $back
--

end-room

Q: Grande
A: ${ Grande_intro }
K: Grande
--



