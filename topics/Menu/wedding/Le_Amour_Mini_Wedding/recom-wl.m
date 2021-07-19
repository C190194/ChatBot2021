\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 9 Jul 2021
\
\ A brief description of this program.
\
include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Matrimony_text.m

room: Matrimony_re

Q: save
C: "Le Matrimony Mini Wedding Bite" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Matrimony Mini Wedding Bite to your favourites
A: name #empty? % Okay! Added Le Matrimony Mini Wedding Bite to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Matrimony Mini Wedding Bite to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Matrimony Mini Wedding Bite" -set
A: Okay! Removed Le Matrimony Mini Wedding Bite from your favourites
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

Q: Matrimony
A: ${ Matrimony_intro }
K: Matrimony_re
--

include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Nuptial_text.m

room: Nuptial_re

Q: save
C: "Le Nuptial Mini Wedding Bite" +set
C: initialize_personal_info
A: info-asked 1 = % Okay! Added Le Nuptial Mini Wedding Bite to your favourites
A: name #empty? % Okay! Added Le Nuptial Mini Wedding Bite to your favourites ${ bb } ${ask-permission}
A: Okay! Added Le Nuptial Mini Wedding Bite to your favourites ${ bb } ${ask-update}
K: name #empty? % waiting-for-permission
\ K: name #empty? not % waiting-for-update
--

Q: remove 
C: "Le Nuptial Mini Wedding Bite" -set
A: Okay! Removed Le Nuptial Mini Wedding Bite from your favourites
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

Q: Nuptial
A: ${ Nuptial_intro }
K: Nuptial_re
--

