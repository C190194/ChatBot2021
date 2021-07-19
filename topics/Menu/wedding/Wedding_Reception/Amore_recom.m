\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/wedding/Wedding_Reception/Amore_text.m

room: Amore_recom

Q: save
C: "Le Amore Wedding Buffet" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Amore Wedding Buffet to your favourites
A: name #empty? % Okay! Added Le Amore Wedding Buffet to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Amore Wedding Buffet to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Amore Wedding Buffet" -set
A: Okay! Removed Le Amore Wedding Buffet from your favourites
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

Q: Amore
A: ${ Amore_intro }
K: Amore_recom
--


