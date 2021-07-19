\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: high_tea_intro
  "Le Valeur High Tea Express ($11.00/pax)" button ctx{ Valeur }
  "Le Merveille High Tea Express ($12.00/pax)" button ctx{ Merveille }
  "Le Superieur High Tea Express ($15.00/pax)" button ctx{ Superieur }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">High Tea Express</h2>
        <p style="margin-bottom: 15px">
        Intricately designed menu for High Tea 
        Reception (Halal Certified). Suitable for small 
        gatherings, corporate or personal, at a fantastic 
        low price! *No collection required*
        </p>
        
        #{Valeur} #{Merveille} #{Superieur}
        <br>
        #{back}
  }q
;

room: high_tea_detail

include ./topics/Menu/refreshment/High_Tea_Express/Valeur.m
include ./topics/Menu/refreshment/High_Tea_Express/Merveille.m
include ./topics/Menu/refreshment/High_Tea_Express/Superieur.m

Q: back
A: ${ refreshment_intro }
K: $back
--

end-room

Q: high_tea
A: ${ high_tea_intro }
K: high_tea_detail
--


