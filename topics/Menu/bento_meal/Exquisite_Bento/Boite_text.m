\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 11 Jun 2021
\
\ A brief description of this program.
\


: Boite_intro
  "Starter 🥗" silent button ctx{ starter }
  "Mains 🍜" silent button ctx{ mains }
  "Poultry & Meat 🍗" silent button ctx{ meat }
  "Ocean Catch 🦞" silent button ctx{ ocean }
  "Vegetables 🍅" silent button ctx{ vege }
  "Seafood 🦑" silent button ctx{ seafood }
  "Hot Savoury 🥟" silent button ctx{ savoury }
  "Sweet Endings 🍮" silent button ctx{ dessert }
  "Beverage 🍹" silent button ctx{ beverage }
  
  "Save Le Boite Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Boite_pic_url menu_pic ctx{ Boite_p }
  q{
        <h2 style="text-align:center">Le Boite Bento</h2>
        <center>#{Boite_p}</center>
        <p style="text-align:center; margin-top:10px">$16.00/Pax (Min 20 Pax)</p> 
        <p style="text-align:center">(W.GST $17.15)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-boite-bento-16-pax-min-15pax/">
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







