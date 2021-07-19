\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\
\ @: Mieux_detail
\ Mieux_detail: mains meat ocean Vegetables Delights savoury sweet

\ include ./topics/Menu/bento_meal/Exquisite_Bento/Mieux_text.m

room: Mieux

Q: save 
C: "Le Mieux Bento" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Mieux Bento to your favourites
A: name #empty? % Okay! Added Le Mieux Bento to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Mieux Bento to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Mieux Bento" -set
A: Okay! Removed Le Mieux Bento from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ Exquisite_Bento_intro }
K: $back
--

end-room

Q: Mieux
A: ${ Mieux_intro }
K: Mieux
--






