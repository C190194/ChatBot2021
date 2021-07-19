\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

: Fushion_intro
  
  "Save Le Fushion Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Fushion_pic_url menu_pic ctx{ Fushion_p }
  q{
        <h2 style="text-align:center">Le Fushion Bento</h2>
        <center>#{Fushion_p}</center>
        <p style="text-align:center; margin-top:10px">$5.00/Pax (Min 40 Pax)</p> 
        <p style="text-align:center">(W.GST $5.35)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-fushion-bento-5-pax-min-30pax/">
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





