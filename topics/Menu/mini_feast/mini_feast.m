\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ @: mini_feast
\ mini_feast: Bitez Fushion Delicieux Saveur

: mini_feast_intro
  "Le Appetit Mini Feast ($8/pax)" button ctx{ Appetit }
  "Le Valueur Mini Feast ($11/pax)" button ctx{ Valueur }
  "Le Merveille Mini Feast ($12/pax)" button ctx{ Merveille }
  "Le Superieur Mini Feast ($15/pax)" button ctx{ Superieur }
  "Le Joyeux Mini Feast ($18/pax)" button ctx{ Joyeux }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Mini Feast Express</h2>
        <p style="margin-bottom: 15px">
        A fuss-free buffet catering package specially 
        designed for small groups of guests, corporate 
        or personal, with no collection service. Hence, 
        we keep prices affordable!
        </p>
        
        #{Appetit} #{Valueur} #{Merveille} #{Superieur} #{Joyeux}
        <br>
        #{back}
  }q
;

room: mini_feast_detail

include ./topics/Menu/mini_feast/Appetit.m
include ./topics/Menu/mini_feast/Valueur.m
include ./topics/Menu/mini_feast/Merveille.m
include ./topics/Menu/mini_feast/Superieur.m
include ./topics/Menu/mini_feast/Joyeux.m

Q: back
A: ${ menu_home_1 }
K: $back
--

end-room


Q: mini_feast
A: ${ mini_feast_intro }
K: mini_feast_detail
--







