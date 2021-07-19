\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/wedding/Wedding_Reception/Eternite_text.m

room: Eternite

Q: save
C: "Le Eternite Wedding Buffet" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Eternite Wedding Buffet to your favourites
A: name #empty? % Okay! Added Le Eternite Wedding Buffet to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Eternite Wedding Buffet to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Eternite Wedding Buffet" -set
A: Okay! Removed Le Eternite Wedding Buffet from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ wedding_reception_intro }
K: $back
--

end-room

Q: Eternite
A: ${ Eternite_intro }
K: Eternite
--


