\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 11 Jun 2021
\
\ A brief description of this program.
\


: Valueur_intro
  "Mains 🍜" silent button ctx{ mains }
  "Poultry & Meat 🍗" silent button ctx{ meat }
  "Ocean Catch 🦞" silent button ctx{ ocean }
  "Vegetables 🍅" silent button ctx{ vege }
  "Sweet Endings 🍮" silent button ctx{ dessert }
  "Packet Drink (unchilled) 🍹" silent button ctx{ drink }
  
  "Save Le Valueur Mini Feast Express" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Valueur_pic_url menu_pic ctx{ Valueur_p }
  
  q{
        <h2 style="text-align:center">Le Valueur Mini Feast Express</h2>
        <center>#{Valueur_p}</center>
        <p style="text-align:center; margin-top:10px">$11.00/Pax (Min 20 Pax)</p> 
        <p style="text-align:center">(W.GST $11.77)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-Valueur-mini-buffet-express-8-pax-min-20pax/">
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


