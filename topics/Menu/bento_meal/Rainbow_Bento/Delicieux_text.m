\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

: Delicieux_intro
  
  "Save Le Delicieux Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Delicieux_pic_url menu_pic ctx{ Delicieux_p }
  q{
        <h2 style="text-align:center">Le Delicieux Bento</h2>
        <center>#{Delicieux_p}</center>
        <p style="text-align:center; margin-top:10px">$6.00/Pax (Min 35 Pax)</p> 
        <p style="text-align:center">(W.GST $6.42)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-delicieux-bento-6-pax-min-25pax/">
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





