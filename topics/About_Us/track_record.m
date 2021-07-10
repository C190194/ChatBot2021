\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 8 Jul 2021
\
\ A brief description of this program.
\

: mk-track-record ( "s" "title" -- "s" ) { title imgAddress description pax }
    title ctx{ title}
    imgAddress ctx{ imgAddress}
    description ctx{ description}
    pax ctx{ pax}
    q{
    
        <div style="text-align:center;background-color:#e6dff0;padding:5px;border-radius:7px;">
            <h4 style="font-size: 18px;color:#53284e">#{title}</h4>
            <img style="width:200px;height:auto;" src=#{imgAddress}>
            <p >#{description}</p>
            <p ><b>#{pax}</b></p>
        </div>
    }q
;

: track-record ( "s" -- "s" )
"Largest Buffet Catering" "https://sethlui.com/wp-content/uploads/2017/04/Savory-Kitchen-ONLINE-1.jpg?ezimgfmt=ng:webp/ngcb5" "SISPEC GRADUATION AUG 2019" "3,500 Pax" mk-track-record ctx{ track1 }
"Largest BBQ Live-Cooking" "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F1177886278%2Fx.jpg" "People’s Association HQ" "800 Pax" mk-track-record ctx{ track2 }
"Largest Last Minute Order" "https://l.hdnux.com/350x235p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/d3cee4585b3446de94b72244afa12a8d.jpg" "Sungei Gedong Camp" "800 Pax (3hour)" mk-track-record ctx{ track3 }
"Largest Packed Meal" "https://lerainbow.com.sg/wp-content/uploads/2020/10/image_mod-2020-10-23T153057.898.jpeg" "Changi Prison Cluster A" "6,300 Pax" mk-track-record ctx{ track4 }
"Largest Continuous Order" "https://scontent.fsin9-2.fna.fbcdn.net/v/t1.6435-9/123446589_4961250193915447_5288204296137057160_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=a26aad&_nc_ohc=qAbzACVQNMcAX_TTV4m&_nc_ht=scontent.fsin9-2.fna&oh=b80fd827a67de51da8505015a8cf5489&oe=60EA3368" "Sports SG (Get Active SG 2019)" "15,000 Pax (1 mth)" mk-track-record ctx{ track5 }
"Largest Order/Day" "https://lerainbow.com.sg/wp-content/uploads/2020/10/DSC_3365-2-300x200.jpg" "Aug, Year 2019" "78 Orders" mk-track-record ctx{ track6 }
"Back" backButton ctx{ backBtn }
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
    <br>
    #{backBtn}
  }q
  
;

