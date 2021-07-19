\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ \
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ include ./topics/Menu/mini_feast/Joyeux_text.m

room: Joyeux

Q: save
C: "Le Joyeux Mini Feast Express" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Joyeux Mini Feast Express to your favourites
A: name #empty? % Okay! Added Le Joyeux Mini Feast Express to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Joyeux Mini Feast Express to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Joyeux Mini Feast Express" -set
A: Okay! Removed Le Joyeux Mini Feast Express from your favourites
--

Q: not_now
A: Okay
--

Q: back
A: ${ mini_feast_intro }
K: $back
--

end-room

Q: Joyeux
A: ${ Joyeux_intro }
K: Joyeux
--
\
\ A brief description of this program.
\




