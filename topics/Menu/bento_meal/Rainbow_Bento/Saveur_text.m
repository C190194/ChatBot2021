\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

: Saveur_intro
  
  "Save Le Saveur Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Saveur_pic_url menu_pic ctx{ Saveur_p }
  q{
        <h2 style="text-align:center">Le Saveur Bento</h2>
        <center>#{Saveur_p}</center>
        <p style="text-align:center; margin-top:10px">$8.00/Pax (Min 25 Pax)</p> 
        <p style="text-align:center">(W.GST $8.56)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-saveur-bento-8-pax-min-20pax/">
            Here
          </a>
        </p>
        <p style="margin-top:10px">
        Would you like to add this meal to your favourite?
        </p>
        #{save} #{remove} <br>
        #{back}
  }q
;






