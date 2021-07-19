\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 11 Jun 2021
\
\ A brief description of this program.
\


: Grande_intro
  "Mains 🍜" silent button ctx{ mains }
  "Poultry & Meat 🍗" silent button ctx{ meat }
  "Ocean Catch 🦞" silent button ctx{ ocean }
  "Vegetables 🍅" silent button ctx{ vege }
  "Special Delights 🦄" silent button ctx{ delights }
  "Hot Savoury 🥟" silent button ctx{ savoury }
  "Sweet Endings 🍮" silent button ctx{ dessert }
  "Beverage 🍹" silent button ctx{ beverage }
  
  "Save Le Grande Bento" yesButton ctx{ save }
  "Remove item" noButton ctx{ remove }
  "Back" backButton ctx{ back }
  
  Grande_pic_url menu_pic ctx{ Grande_p }
  q{
        <h2 style="text-align:center">Le Grande Bento</h2>
        <center>#{Grande_p}</center>
        <p style="text-align:center; margin-top:10px">$12.00/Pax (Min 20 Pax)</p> 
        <p style="text-align:center">(W.GST $12.84)</p>
        <p style="text-align:center; margin-top:10px">
          View course details & Order <br>
          <a href="https://lerainbow.com.sg/product/le-grande-bento-12-pax-min-15pax/">
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









