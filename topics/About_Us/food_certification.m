\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 8 Jul 2021
\
\ A brief description of this program.
\



: food-certification
    "https://www.pngitem.com/pimgs/m/22-226089_halal-food-logo-singapore-hd-png-download.png" ctx{ halalLogo }
    "https://lerainbow.com.sg/wp-content/uploads/2020/10/WhatsApp-Image-2020-09-23-at-15.28.25_clipped_rev_1-e1617170116149-300x83.png" ctx{ acapsLogo }
    "Back" backButton ctx{ backBtn }
    q{
        <div style="text-align:center; padding:5px;">
            <h2>Certified by</h2> </br>
    
            <h4>Majlis Ugama Islam Singapura</h4>
            <img style="width:auto;height:100px;" src=#{halalLogo}>
            
            <br>
            <br>
    
            <h4>Association of Catering Professionals Singapore</h4>
            <img style="width:250px;height:auto;" src=#{acapsLogo}>
        </div>
        
        </br>
        #{backBtn}
    }q
;
