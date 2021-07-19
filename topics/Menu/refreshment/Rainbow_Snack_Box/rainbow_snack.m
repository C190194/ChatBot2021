\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: rainbow_snack_intro
  "Le Bouchees Snack Box ($5.00/pax)" button ctx{ Bouchees }
  "Le Patisserie Snack Box ($6.00/pax)" button ctx{ Patisserie }
  "Le Fraiche Snack Box ($7.00/pax)" button ctx{ Fraiche }
  "Le Bouffee Snack Box ($8.00/pax)" button ctx{ Bouffee }
  "Le Emballee Snack Box ($10.00/pax)" button ctx{ Emballee }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Rainbow Snack Box</h2>
        <p style="margin-bottom: 15px">
        Our entry-tier Snack Box services (Halal Certified) 
        offers exciting combination of snacks, all packaged 
        at an affordable price!
        </p>
        
        #{Bouchees} #{Patisserie} #{Fraiche} #{Bouffee} #{Emballee}
        <br>
        #{back}
  }q
;

room: rainbow_snack_detail

include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouchees.m
include ./topics/Menu/refreshment/Rainbow_Snack_Box/Patisserie.m
include ./topics/Menu/refreshment/Rainbow_Snack_Box/Fraiche.m
include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouffee.m
include ./topics/Menu/refreshment/Rainbow_Snack_Box/Emballee.m

Q: back
A: ${ refreshment_intro }
K: $back
--

end-room

Q: rainbow_snack
A: ${ rainbow_snack_intro }
K: rainbow_snack_detail
--
