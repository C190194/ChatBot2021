\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouchees_text.m

room: Bouchees_recom

Q: save
C: "Le Bouchees Rainbow Snack Box" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Bouchees Rainbow Snack Box to your favourites
A: name #empty? % Okay! Added Le Bouchees Rainbow Snack Box to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Bouchees Rainbow Snack Box to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Bouchees Rainbow Snack Box" -set
A: Okay! Removed Le Bouchees Rainbow Snack Box from your favourites
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

Q: Bouchees
A: ${ Bouchees_intro }
K: Bouchees_recom
--

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Fraiche_text.m

room: Fraiche_recom

Q: save
C: "Le Fraiche Rainbow Snack Box" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Fraiche Rainbow Snack Box to your favourites
A: name #empty? % Okay! Added Le Fraiche Rainbow Snack Box to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Fraiche Rainbow Snack Box to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Fraiche Rainbow Snack Box" -set
A: Okay! Removed Le Fraiche Rainbow Snack Box from your favourites
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

Q: Fraiche
A: ${ Fraiche_intro }
K: Fraiche_recom
--

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Patisserie_text.m

room: Patisserie_recom

Q: save
C: "Le Patisserie Rainbow Snack Box" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Patisserie Rainbow Snack Box to your favourites
A: name #empty? % Okay! Added Le Patisserie Rainbow Snack Box to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Patisserie Rainbow Snack Box to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Patisserie Rainbow Snack Box" -set
A: Okay! Removed Le Patisserie Rainbow Snack Box from your favourites
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

Q: Patisserie
A: ${ Patisserie_intro }
K: Patisserie_recom
--

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Emballee_text.m

room: Emballee_recom

Q: save
C: "Le Emballee Rainbow Snack Box" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Emballee Rainbow Snack Box to your favourites
A: name #empty? % Okay! Added Le Emballee Rainbow Snack Box to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Emballee Rainbow Snack Box to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Emballee Rainbow Snack Box" -set
A: Okay! Removed Le Emballee Rainbow Snack Box from your favourites
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

Q: Emballee
A: ${ Emballee_intro }
K: Emballee_recom
--

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouffee_text.m

room: Bouffee_recom

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
A: recom #empty? % ${ homepage }
A: ${ recom display return_recom_menu }
K: $back
--

end-room

Q: Bouffee
A: ${ Bouffee_intro }
K: Bouffee_recom
--
