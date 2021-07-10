\
\ Copyright © 2021  all rights reserved.
\
\ @author: 
\ @date: 8 Jul 2021
\
\ A brief description of this program.
\

\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 7 Jul 2021
\
\ A brief description of this program.
\


: mk-client-image ( "s" "title" -- "s" ) { imgAddress name }
    imgAddress ctx{ imgAddress}
    name ctx{ name}
    q{
    
        <div style="text-align: center;align-self: end;" >
            <img style="width:auto;height:50px;" src=#{imgAddress}>
        </div>
    }q
;
: mk-client-image-span-2 ( "s" "title" -- "s" ) { imgAddress name }
    imgAddress ctx{ imgAddress}
    name ctx{ name}
    q{
    
        <div style="text-align: center;align-self: end;grid-column: span 2;" >
            <img style="width:auto;height:50px;" src=#{imgAddress}>
        </div>
    }q
;


: our-trusted-clients ( "s" -- "s" )

 "https://www.pa.gov.sg/html/assets/pa/images/main-logo.png" "PA" mk-client-image ctx{ img_div1 }
 "https://d33wubrfki0l68.cloudfront.net/1ab7368b2f3334292256a3d9545b537f54ac8a07/636e1/images/general/logo.png" "VITAL" mk-client-image-span-2 ctx{ img_div2 }
 "https://s3-ap-northeast-1.amazonaws.com/peatix.com.new/pod/30568/cover-16a2073.png" "SAFRA" mk-client-image-span-2 ctx{ img_div3 }
 "https://www.mediacorp.sg/blob/10882208/d424c814c75a52e96ec9a026927af4ea/logo-stack-data-svg-data.svg" "Mediacorp" mk-client-image ctx{ img_div4 }
 "https://media-exp1.licdn.com/dms/image/C4E12AQHTBRtDVg52qQ/article-cover_image-shrink_720_1280/0/1599742476842?e=1631145600&v=beta&t=JhN99qma6WIRwaZHTU1iMdIw8ojfbh55uw6mlK8GMcc" "Razer" mk-client-image ctx{ img_div5 }
 "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Louis_Vuitton_logo_and_wordmark.svg/369px-Louis_Vuitton_logo_and_wordmark.svg.png" "Louis Vuitton" mk-client-image ctx{ img_div6 }
 "Back" backButton ctx{ backBtn }
  q{
    <h4 style="text-align:center;font-size:25px">Our Trusted Clients</h4>
    
    <div style="display: grid;grid-template-columns: auto auto;">
      #{img_div1}
      #{img_div6}
      #{img_div2}
      #{img_div3}
      #{img_div4}
      #{img_div5}
    </div>  
    
    <br>
    #{backBtn}
  }q
;



