\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: Exquisite_Bento_intro
  "Le Mieux Bento ($10.00/pax)" button ctx{ Mieux }
  "Le Grande Bento ($12.00/pax)" button ctx{ Grande }
  "Le Gusto Bento ($14.00/pax)" button ctx{ Gusto }
  "Le Boite Bento ($16.00/pax)" button ctx{ Boite }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Exquisite Bento</h2>
        <p style="margin-bottom: 15px">
        The Exquisite Bento Packed Meal 
        (Halal Certified) offers premium 
        combination of dishes, be pampered 
        by the luxurious spread!
        </p>
        
        #{Mieux} #{Grande} #{Gusto} #{Boite}
        <br>
        #{back}
  }q
;

room: Exquisite_bento_detail

include ./topics/Menu/bento_meal/Exquisite_Bento/Mieux.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Grande.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Gusto.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Boite.m

Q: back
A: ${ bento_intro }
K: $back
--

end-room

Q: exquisite_bento
A: ${ Exquisite_Bento_intro }
K: Exquisite_bento_detail
--






