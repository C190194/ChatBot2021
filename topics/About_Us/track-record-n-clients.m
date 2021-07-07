\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 7 Jul 2021
\
\ A brief description of this program.
\

: mk-track-record ( "s" "title" -- "s" ) { title imgAddress description pax }
    title ctx{ title}
    imgAddress ctx{ imgAddress}
    description ctx{ description}
    pax ctx{ pax}
    q{
    
        <div style="text-align:center;background-color:#e6dff0;padding:5px;">
            <h4 style="font-size: 18px;color:#53284e">#{title}</h4>
            <img style="width:200px;height:auto;" src=#{imgAddress}>
            <p >#{description}</p>
            <p ><b>#{pax}</b></p>
        </div>
    }q
;

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


: track-record ( "s" -- "s" )
"Largest Buffet Catering" "https://sethlui.com/wp-content/uploads/2017/04/Savory-Kitchen-ONLINE-1.jpg?ezimgfmt=ng:webp/ngcb5" "SISPEC GRADUATION AUG 2019" "3,500 Pax" mk-track-record ctx{ track1 }
"Largest BBQ Live-Cooking" "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F1177886278%2Fx.jpg" "People’s Association HQ" "800 Pax" mk-track-record ctx{ track2 }
"Largest Last Minute Order" "https://l.hdnux.com/350x235p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/d3cee4585b3446de94b72244afa12a8d.jpg" "Sungei Gedong Camp" "800 Pax (3hour)" mk-track-record ctx{ track3 }
"Largest Packed Meal" "https://lerainbow.com.sg/wp-content/uploads/2020/10/image_mod-2020-10-23T153057.898.jpeg" "Changi Prison Cluster A" "6,300 Pax" mk-track-record ctx{ track4 }
"Largest Continuous Order" "https://scontent.fsin9-2.fna.fbcdn.net/v/t1.6435-9/123446589_4961250193915447_5288204296137057160_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=a26aad&_nc_ohc=qAbzACVQNMcAX_TTV4m&_nc_ht=scontent.fsin9-2.fna&oh=b80fd827a67de51da8505015a8cf5489&oe=60EA3368" "Sports Singapore (Get Active SG 2019)" "15,000 Pax (1 mth)" mk-track-record ctx{ track5 }
"Largest Order/Day" "https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3365-2-300x200.jpg" "Aug, Year 2019" "78 Orders" mk-track-record ctx{ track6 }
  q{
    <h4 style="text-align:center;font-size:25px">Track record</h4>
    <br>
    #{track1}
    <br>
    #{track2}
    <br>
    #{track3}
    <br>
    #{track4}
    <br>
    #{track5}
    <br>
    #{track6}

  }q
  
;

: our-trusted-clients ( "s" -- "s" )

 "https://www.pa.gov.sg/html/assets/pa/images/main-logo.png" "PA" mk-client-image ctx{ img_div1 }
 "https://d33wubrfki0l68.cloudfront.net/1ab7368b2f3334292256a3d9545b537f54ac8a07/636e1/images/general/logo.png" "VITAL" mk-client-image-span-2 ctx{ img_div2 }
 "https://s3-ap-northeast-1.amazonaws.com/peatix.com.new/pod/30568/cover-16a2073.png" "SAFRA" mk-client-image-span-2 ctx{ img_div3 }
 "https://www.mediacorp.sg/blob/10882208/d424c814c75a52e96ec9a026927af4ea/logo-stack-data-svg-data.svg" "Mediacorp" mk-client-image ctx{ img_div4 }
 "https://media-exp1.licdn.com/dms/image/C4E12AQHTBRtDVg52qQ/article-cover_image-shrink_720_1280/0/1599742476842?e=1631145600&v=beta&t=JhN99qma6WIRwaZHTU1iMdIw8ojfbh55uw6mlK8GMcc" "Razer" mk-client-image ctx{ img_div5 }
 "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Louis_Vuitton_logo_and_wordmark.svg/369px-Louis_Vuitton_logo_and_wordmark.svg.png" "Louis Vuitton" mk-client-image ctx{ img_div6 }
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
  
  }q
;



Q: Track Record
A: ${track-record}
--

Q: Our Trusted Clients
A: ${our-trusted-clients}
--
