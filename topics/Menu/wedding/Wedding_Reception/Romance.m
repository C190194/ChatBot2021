\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/wedding/Wedding_Reception/Romance_text.m

room: Romance

Q: save
C: "Le Romance Wedding Buffet" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Romance Wedding Buffet to your favourites
A: name #empty? % Okay! Added Le Romance Wedding Buffet to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Romance Wedding Buffet to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Romance Wedding Buffet" -set
A: Okay! Removed Le Romance Wedding Buffet from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ wedding_reception_intro }
K: $back
--

end-room

Q: Romance
A: ${ Romance_intro }
K: Romance
--



