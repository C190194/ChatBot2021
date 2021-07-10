\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 7 Jul 2021
\
\ A brief description of this program.
\

\ Main msg for about us
: about
    "Why Le Rainbow?" button ctx{ whyBtn }
    "See our contact info and operating hours" button ctx{ infoBtn }
    "Hear from satisfied customers" button ctx{ testimonialBtn }
    "Find us on social media" button ctx{ socialBtn }
    "Back to Main" backButton ctx{ backBtn }
    q{
        <h2>We are Le Rainbow Catering 🌈</h2>
        <p>
            At Le Rainbow, we strive to be the best Halal caterer in Singapore, serving a mix of locally-inspired Western & Fusion cuisine.
            We have helped run various major events big and small. Learn more below.
        </p>
        <p>
        #{whyBtn} <br>
        #{infoBtn} <br>
        #{testimonialBtn} <br>
        #{socialBtn} <br>
        </p>
        
        <p>
        #{backBtn}
        </p>

    }q
;

: why-lerainbow
    "Our food certification" button ctx{ foodCertBtn }
    "See our track record" button ctx{ trackBtn }
    "Our trusted clients" button ctx{ customerBtn }
    "Back to About" backButton ctx{ backBtn }
    q{
    <div style = "text-align:center;">
        <h2>Simple. Delectable. Always.</h2> </br>

        <h3>💯 We believe in 100% food safety</h3>
        #{foodCertBtn} </br></br>

        <h3>🤝🏼 We're trusted</h3>
        #{customerBtn} </br></br>

        <h3>✔️ We're dedicated</h3>
        #{trackBtn} </br></br>
    </div>
    
        #{backBtn}
    }q
;



