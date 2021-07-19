\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouffee_text.m

room: Bouffee

Q: save
C: "Le Bouffee Rainbow Snack Box" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Bouffee Rainbow Snack Box to your favourites
A: name #empty? % Okay! Added Le Bouffee Rainbow Snack Box to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Bouffee Rainbow Snack Box to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Bouffee Rainbow Snack Box" -set
A: Okay! Removed Le Bouffee Rainbow Snack Box from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ rainbow_snack_intro }
K: $back
--

end-room

Q: Bouffee
A: ${ Bouffee_intro }
K: Bouffee
--



