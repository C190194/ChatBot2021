\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 14 Jun 2021
\
\ A brief description of this program.
\ homepage for kitchen haus chatbot



mem: this-question
    1 this-question!

assoc: questions

mem: name
    "None" name!

mem: userName
    "None" userName!
    
mem: userMobileNumber
    "None" userMobileNumber!
    
mem: userEmail
    "None" userEmail!
    
mem: userDateOfBirth
    "RatherNotSay" userDateOfBirth!
    
mem: userEvent
    "None" userEvent!
    
mem: userHearFromWhere
    "None" userHearFromWhere!

: intro 
    "Start the chatbot" generalButton ctx{ startChatbot }

    q{
        <img data-action="zoom" src="https://lerainbow.com.sg/wp-content/uploads/2020/10/lerainbowlogo-02.png" style="width: 100%;">
        <p color="red">Welcome to <br>🌈<b >LE RAINBOW CATERING!</b>🌈</p>
        #{startChatbot}

    }q

;

: eventQuestion 
    "Wedding" generalButton ctx{ wedding }
    "Father's Day" generalButton ctx{ fathersday }

    q{
        <p>What event do you want to hold?</p>
        <p>If others, you can just type it out.</p>
        #{wedding}
        #{fathersday}

    }q

;

: hearFromWhereQuestion 
    "Web Search" generalButton ctx{ websearch }
    "Friends" generalButton ctx{ friends }
    "Social Media" generalButton ctx{ socialmedia }

    q{
        <p>How did you hear about Le Rainbow?</p>
        <p>If others, you can just type it out.</p>
        #{websearch}
        #{friends}
        #{socialmedia}

    }q

;

: dobQuestion 
    "Skip this question ⏭️" button ctx{ skip }

    q{
        <p>What is your date of birth (birthday month)?</p>
        #{skip}

    }q

;

{{
    1 "What is your name"
    2 "What is your email?"
    3 "What is your mobile number?"
    4 dobQuestion
    5 eventQuestion
    6 hearFromWhereQuestion
    
}} +questions



: last? ( -- f)
    this-question 6 >
;


: email-question? ( -- f)
    this-question 2 =
;

: mobilenumber-question? ( -- f)
    this-question 3 =
;

: dob-question? ( -- f)
    this-question 4 =
;

: event-question? ( -- f)
    this-question 5 =
;

: hearFromWhere-question? ( -- f)
    this-question 6 =
;

: savetolog? ( -- f)
    this-question 8 =
;

room: emailValidation
Q: $x.@email
A: ${ this-question questions }
C: mobilenumber-question? % last-question userEmail!
C: +this-question
K: -emailValidation
--

Q: $_
A: Email format invalid. Please enter email with correct format.
--
end-room


room: personalInfo
Q: Skip this question ⏭️
A: last? not % ${ this-question questions }
A: last? % Thank you for your response! <br> You can select any option below: <br> ${ "View Menu" generalButton } <br> ${ "Our Services" generalButton} <br> ${ "About Us" generalButton}
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question userHearFromWhere!
C: +this-question
K: email-question? % emailValidation
K: last? % -personalInfo
--

Q: $_
A: last? not % ${ this-question questions }
A: last? % Thank you for your response! <br> You can select any option below: <br> ${ "View Menu" generalButton } <br> ${ "Our Services" generalButton} <br> ${ "About Us" generalButton}
L: savetolog? % userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere } 
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: event-question? % last-question userDateOfBirth!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question userHearFromWhere!
C: +this-question
K: email-question? % emailValidation
K: last? % -personalInfo
--
end-room


room: chatbotHomepage

Q: Yes|yes
A: Great! <br> ${ this-question questions }
C: +this-question
K: -chatbotHomepage personalInfo
--

Q: No|no
A: You can select any option below: <br> ${ "View Menu" generalButton } <br> ${ "Our Services" generalButton} <br> ${ "About Us" generalButton}
K: -chatbotHomepage
--
end-room



Q: Start the chatbot
A: Before we start the conversation, I would like to ask your permission to collect your personal info. <br>${ "Yes" yesButton } ${ "No" noButton }
K: chatbotHomepage
--


