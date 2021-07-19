\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\

\ @: Rainbow_Bento
\ Rainbow_Bento: Bitez Fushion Delicieux Saveur

: Rainbow_Bento_intro
  "Le Bitez Bento ($4.00/pax)" button ctx{ Bitez }
  "Le Fushion Bento ($5.00/pax)" button ctx{ Fushion }
  "Le Delicieux Bento ($6.00/pax)" button ctx{ Delicieux }
  "Le Saveur Bento ($8.00/pax)" button ctx{ Saveur }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Rainbow Bento</h2>
        <p style="margin-bottom: 15px">
        Our entry-tier Bento Packed Meal 
        services (Halal Certified) offers 
        exciting combination of dishes, all 
        packaged at an affordable price!
        </p>
        
        #{Bitez} #{Fushion} #{Delicieux} #{Saveur}
        <br>
        #{back}
  }q
;

room: rainbow_bento_detail

include ./topics/Menu/bento_meal/Rainbow_Bento/Bitez.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Fushion.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Delicieux.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Saveur.m

Q: back
A: ${ bento_intro }
K: $back
--

end-room


Q: rainbow_bento
A: ${ Rainbow_Bento_intro }
K: rainbow_bento_detail
--




