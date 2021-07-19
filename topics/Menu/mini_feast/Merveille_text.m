\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 11 Jun 2021
\
\ A brief description of this program.
\


: Merveille_intro
  "Mains 🍜" silent button ctx{ mains }
  "Poultry & Meat 🍗" silent button ctx{ meat }
  "Ocean Catch 🦞" silent button ctx{ ocean }
  "Vegetables 🍅" silent button ctx{ vege }
  "Sweet Endings 🍮" silent button ctx{ dessert }
  "Packet Drink (unchilled) 🍹" silent button ctx{ drink }
  
  "Save Le Merveille Mini Feast Express" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Merveille_pic_url menu_pic ctx{ Merveille_p }
  
  q{
        <h2 style="text-align:center">Le Merveille Mini Feast Express</h2>
        <center>#{Merveille_p}</center>
        <p style="text-align:center; margin-top:10px">$12.00/Pax (Min 20 Pax)</p> 
        <p style="text-align:center">(W.GST $12.48)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-merveille-mini-buffet-express-12-pax-min-20pax/">
            Here
          </a>
        </p>
        <p style="margin-top:10px">
        Would you like to add this meal to your favourite?
        </p>
        #{save} #{remove} <br>
        #{back} 
  }q
\   <p>Click the buttons below to view the available options for each course</p>
\         #{mains} #{meat} #{ocean} #{vege} 
\         #{dessert} #{drink}
;


