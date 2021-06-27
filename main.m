\
\ @author: Arnold Doray
\ @date: 26 Nov 2020
\

terra/chat
terra/chat/app
terra/chat/log


\ include ./topics/bad-language.m
\ include ./topics/greetings.m
\ include ./topics/fav.m
\ include ./topics/query.m
\ include ./mcq.m
\ include ./buttons.m
\ include ./topics/Service/Catering/catering.m



include ./general_setting/setting_API.m
include ./save.m
include ./recommendation/questions.m
\ include ./homepagePart/homepage-old.m
\ include ./topics/Menu/menu_bot.m
\ include ./topics/faq/faq-main.m
\ include ./topics/About_Us/about-us.m



idk: Sorry, could you rephrase your question?

: test 
  \ NOTE: Add your questions to test here.
  \ Letter case does not matter
  
  "Recommend some meals for me" answer . cr
  \ "what does DF mean" answer . cr
  \ "bento" answer . cr
  \ "Exquisite Bento" answer . cr 
  \ "Le Bitez $4.00/pax" answer . cr
  
;

: update-log 
  \ this name needs to match the name in publish:
  log: HRT_ChatBot
;

: first_message
  "Recommend some meals for me" button ctx{ menu }
  q{
    <p>
      Hello, this is Huang Runtao's ChatBot. Feel free to ask me a question.
    </p>
    <center>#{menu}</center>
    
  }q
;

: publish 
  
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: HRT_ChatBot
  
  \ What your bot says at first. 
  \ init: ${ intro }
  init: ${ first_message }
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
   
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  \ background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  background: https://products.ls.graphics/mesh-gradients/images/01.-Royal-Heath.jpg
  \ Image of the avatar to use. 
  avatar: https://lerainbow.com.sg/wp-content/uploads/2020/10/lerainbowlogo-02.png
  \ Optional border on avatar
  \ avatar-border: solid #AAA 1px
  avatar-border: none
  
  \ Google font to import.
  import-font: Open+Sans:wght@300
  \ Font to use in bubbles
  bubble-font: 'Open Sans', sans-serif
  \ Font Color & Background of bot bubble
  bubble-bot-color: #333
  bubble-bot-background: #f1f1f1 \ #FFF is pure white
  \ bubble-bot-background: #d9c1ff
  \ Font Color & Background for user bubble
  bubble-user-color: white
  bubble-user-background: #5c8cff
  \ Other bubble properties
  \ bubble-border: solid blue 1px
  bubble-border: solid #d9c1ff 2px
  bubble-radius: 16
  bubble-font-size: 15
  \ Max Width of bot bubble, in pixels
  bot-bubble-width: 270
  \ You can limit the number of responses displayed
  \ limit: 3
  
  \ Optional properties of the "send" button.
  \ Here's a sample from flaticon.com
  \ <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
  \ send-button-image-url: https://www.flaticon.com/svg/static/icons/svg/3652/3652532.svg
  \ send-button-image-style: padding-left:10px;
  send-button-image-url: https://autocaffe.io/chat/play.png
  send-button-image-style: none
  

  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: HRT ChatBot
  description: My first chatbot.
  thumbnail: https://images.pexels.com/photos/3394658/pexels-photo-3394658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=100
  
;



















