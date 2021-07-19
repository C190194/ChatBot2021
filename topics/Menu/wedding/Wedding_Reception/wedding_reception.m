\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 10 Jun 2021
\
\ A brief description of this program.
\


: wedding_reception_intro
  "Le Romance Wedding Buffet ($18.00/pax)" button ctx{ Romance }
  "Le Destino Wedding Buffet ($20.00/pax)" button ctx{ Destino }
  "Le Eternite Wedding Buffet ($23.00/pax)" button ctx{ Eternite }
  "Le Charme Wedding Buffet ($28.00/pax)" button ctx{ Charme }
  "Le Beaute Wedding Buffet ($38.00/pax)" button ctx{ Beaute }
  "Le Amore Wedding Buffet ($48.00/pax)" button ctx{ Amore }
  "Yes" yesButton ctx{ yes }
  "No" noButton ctx{ no }
  "Back" backButton ctx{ back }
  q{
        <h2 style="margin-bottom: 10px">Wedding Reception</h2>
        <p style="margin-bottom: 15px">
        Be indulged with the delightful spread of cuisine 
        with the mesmerizing wedding deco. Allow our buffet 
        catering services (Halal Certified) be a part of 
        your wonderful moments!
        </p>
        
        #{Romance} #{Destino} #{Eternite} #{Charme} #{Beaute} #{Amore} 
        <br>
        #{back}
  }q
;

room: wedding_reception_detail

include ./topics/Menu/wedding/Wedding_Reception/Romance.m
include ./topics/Menu/wedding/Wedding_Reception/Destino.m
include ./topics/Menu/wedding/Wedding_Reception/Eternite.m
include ./topics/Menu/wedding/Wedding_Reception/Charme.m
include ./topics/Menu/wedding/Wedding_Reception/Beaute.m
include ./topics/Menu/wedding/Wedding_Reception/Amore.m


Q: back
A: ${ wedding_intro }
K: $back
--

end-room

Q: wedding_reception
A: ${ wedding_reception_intro }
K: wedding_reception_detail
--

