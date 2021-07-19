\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: mini_wedding_intro
  "Le Matrimony Mini Wedding Bite ($38.00/pax)" button ctx{ Matrimony }
  "Le Nuptial Mini Wedding Bite ($48.00/pax)" button ctx{ Nuptial }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Le Amour Mini Wedding</h2>
        <p style="margin-bottom: 15px">
        Specially curated dishes delivering the sweetness of 
        your marriage. A perfect blend for your perfect wedding.
        </p>
        
        #{Matrimony} #{Nuptial} 
        <br>
        #{back}
  }q
;

room: mini_wedding_detail

include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Matrimony.m
include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Nuptial.m

Q: back
A: ${ wedding_intro }
K: $back
--

end-room

Q: mini_wedding
A: ${ mini_wedding_intro }
K: mini_wedding_detail
--
