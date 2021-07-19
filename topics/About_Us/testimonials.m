\
\ Copyright © 2021 ddanielfung all rights reserved.
\
\ @author: ddanielfung
\ @date: 8 Jul 2021
\
\ A brief description of this program.
\

: testimonial-template { name organisation imgAddress description }
    name ctx{ name }
    organisation ctx{ organisation }
    imgAddress ctx{ imgAddress }
    description ctx{ description }
    "Show me another" generalButton ctx{ nextBtn }
    "Back to About Us" backButton ctx{ backBtn }
    q{
    
        <div style="text-align:center; padding:5px;">
            <img style="width:auto;height:110px;" src=#{imgAddress}>
            <h4 style="font-size: 15px;color:#53284e">#{name}</h4>
            <h4 style="font-size: 12px;color:#53284e">#{organisation}</h4>
            <p style="text-align:left">#{description}</p>
            
            <br>
            #{nextBtn}
        </div>
        
        <br>
        #{backBtn}
    }q
;

: testimonial1
    "Mr Perry Yeo & family" "1st Birthday Celebration" "https://lerainbow.com.sg/wp-content/uploads/2020/10/Testimonial-1.jpg" "We engaged Le Rainbow Catering for our Baby Lucas' 1st Birthday Celebration. It was an important event and we were glad Le Rainbow Catering had done a fantastic job! From the Mickey Mouse themed setup to the excellent service, everything was up to our high standards. We will definitely engage Le Rainbow Catering again!" testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

: testimonial2
    "Mr Gary Leow" "Sree Narayana Misson (SG)" "https://lerainbow.com.sg/wp-content/uploads/2021/04/logo-2019-e1617763837279.png" "I am quite impressed with your service and food quality. Ad hoc requests to cancel or amend quantity is always supported by Le Rainbow. Our residents like the variety and quantity is okay. Over the year we have given feedback and we are glad that it is taken well. Staff are especially keen on the hotdogs set and burger sets for a refreshing change of menu. Keep up the good work!" testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

: testimonial3
    "Mr Wong & family" "Home Gathering Party" "https://lerainbow.com.sg/wp-content/uploads/2020/10/IMG_4143-1.jpg" "Le Rainbow did an outstanding job in catering for my home party. The layout is professionally done and the customer service is excellent. The feedback is very positive, highlighting the tasty dishes, wide varieties and generous portion. I would not hesitate to recommend Le Rainbow for important functions." testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

: testimonial4
    "Ms Ng & family" "Baby 1st Month Celebration" "https://lerainbow.com.sg/wp-content/uploads/2020/10/IMG_5866-1.jpg" "The team from Le Rainbow was very professional and service oriented from the start. That made our Baby's first month celebration a breeze! We appreciate the way they customised a Western and Oriental themed Buffet with intricately done Canapes and live carving station. Our guests were full of compliments! Well done Le Rainbow Catering!" testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

: testimonial5
    "Mr Alvin Lin" "Wedding" "https://lerainbow.com.sg/wp-content/uploads/2021/04/WhatsApp-Image-2021-04-07-at-10.43.27-e1617763574118.jpeg" "We engaged Le Rainbow Catering for our wedding and we were very impressed by their service and the food. Special thanks to Faridah, who was very responsive to our needs all along and she gave us good advice and suggestions, even when our wedding plans were affected by Covid-19. We appreciate the team for going above and beyond in making our wedding special and memorable and our guests loved the packaging and the food." testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

: testimonial6
    "Ms Sonia Zuzartee" "Aviva Asia" "https://lerainbow.com.sg/wp-content/uploads/2021/04/Aviva-e1617766753872.png" "Thank you for the catering for today’s event at Aviva. We received many compliments on the food. Thank you also to Swee Heng and his assistant for doing a great job setting up and clearing up too!" testimonial-template ctx{ testimonial }
    q{ 
        #{testimonial}
    }q
;

assoc: testimonials_list
{{
   1 testimonial1
   2 testimonial2
   3 testimonial3
   4 testimonial4
   5 testimonial5
   6 testimonial6
}} +testimonials_list
\ \\\\\\\


\ : testimonial-xxx
\     "Mr" "Sree Narayana" "" "" testimonial-template ctx{ testimonial }
\     q{ 
\         #{testimonial}
\     }q
\ ;

