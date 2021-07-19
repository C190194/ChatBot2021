\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

: Bitez_intro
  
  "Save Le Bitez Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Bitez_pic_url menu_pic ctx{ Bitez_p }
  q{
        <h2 style="text-align:center">Le Bitez Bento</h2>
        <center>#{Bitez_p}</center>
        <p style="text-align:center; margin-top:10px">$4.00/Pax (Min 50 Pax)</p> 
        <p style="text-align:center">(W.GST $4.28)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-bitez-bento-4-pax-min-40pax/">
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






