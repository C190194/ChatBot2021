\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 1 Jul 2021
\
\ A brief description of this program.
\ collect personal info

include ./personal_info/name.m
include ./personal_info/mobileNum.m
include ./personal_info/email.m
include ./personal_info/dateOfBirth.m
include ./personal_info/event.m
include ./personal_info/hearFrom.m

mem: this-question
    1 this-question!

assoc: questions


mem: userName userMobileNumber userEmail userDateOfBirth userEvent userHearFromWhere

mem: info-asked
0 info-asked!

: clear_personal_info
    
    name #empty? not IF
      name clear
      save-name
    THEN

    mobileNum #empty? not IF
      mobileNum clear
      save-mobileNum
    THEN

    EMAIL #empty? not IF
      email clear
      save-email
    THEN

    dateOfBirth #empty? not IF
      dateOfBirth clear
      save-dateOfBirth
    THEN

    event #empty? not IF
      event clear
      save-event
    THEN

    hearFrom #empty? not IF
      hearFrom clear
      save-hearFrom
    THEN
;

Q: info clear  
C: clear_personal_info
A: personal info cleared
--

: initialize_personal_info
    name #empty? not IF
      name #keys head userName! drop
    ELSE
      "" userName! drop
    THEN

    mobileNum #empty? not IF
      mobileNum #keys head userMobileNumber! drop
    ELSE
      "" userMobileNumber! drop
    THEN

    EMAIL #empty? not IF
      email #keys head userEmail! drop
    ELSE
      "" userEmail! drop
    THEN

    dateOfBirth #empty? not IF
      dateOfBirth #keys head userDateOfBirth! drop
    ELSE
      "" userDateOfBirth! drop
    THEN

    event #empty? not IF
      event #keys head userEvent! drop
    ELSE
      "" userEvent! drop
    THEN

    hearFrom #empty? not IF
      hearFrom #keys head userHearFromWhere! drop
    ELSE
      "" userHearFromWhere! drop
    THEN
    
;

: save-personal-info { hear }
  hear userHearFromWhere!

  userName +name
  userMobileNumber +mobileNum
  userEmail +email
  userDateOfBirth +dateOfBirth
  userEvent +event
  userHearFromWhere +hearFrom
  save-name
  save-mobileNum
  save-email
  save-dateOfBirth 
  save-event
  save-hearFrom
;


mem: edit-personal-info-number
    0 edit-personal-info-number!

: eventQuestion 
    "Wedding 👰" generalButton ctx{ wedding }
    "Daily Group Meals 🍱" generalButton ctx{ meal }
    "Tea Party 🧁" generalButton ctx{ party }

    q{
        <p>We are almost there!</p>
        <p>What<b>event</b>do you want to hold?</p>
        <p>If others, you can just type it out.</p>
        <center>
        #{wedding} <br>
        #{meal} <br>
        #{party} <br>
        </center>

    }q

;

: hearFromWhereQuestion 
    "Web Search" generalButton ctx{ websearch }
    "Friends" generalButton ctx{ friends }
    "Social Media" generalButton ctx{ socialmedia }

    q{
        <p>Final question!</p>
        <p>How did you<b>hear about</b>Le Rainbow?</p>
        <p>If others, you can just type it out.</p>
        <center>
        #{websearch}
        #{friends}
        #{socialmedia}
        </center>
    }q

;

: dobQuestion 
    "Skip this question ⏭️" button ctx{ skip }

    q{
        <p>What is your date of birth?<br> (<b>birthday month</b>)</p>
        #{skip}

    }q
;

: nameQuesiton
  q{
    <p>First of all, may I know your<b>name</b>?</p>
  }q
;

: emailQuestion
  q{
    <p>Thank you. <br>What is your<b>email address</b>? 📧</p>
  }q
;

: mmobileQuestion
  q{
    <p>Got it. <br>What is your<b>mobile number</b>? 📱</p>
  }q
;

{{
    1 nameQuesiton
    2 emailQuestion
    3 mmobileQuestion
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

: log_inquiry?
  this-question 2 = IF
        unlogged_inquiry 1 =
  ELSE
        0 1 =
  THEN
        
;

room: emailValidation
Q: $x.@emailRegex
A: ${ this-question questions }
C: mobilenumber-question? % last-question userEmail!
C: +this-question
K: mobilenumber-question? % mobileNumberValidation -emailValidation
--

Q: $_
A: The email format is invalid. Please enter an email with correct format.
--
end-room


room: mobileNumberValidation
Q: $x.@mobileNumberRegex
A: ${ this-question questions }
C: dob-question? % last-question userMobileNumber!
C: +this-question
K: -mobileNumberValidation
--

Q: $_
A: The mobile number format is invalid. Please enter a mobile number with correct format.<br>eg: 98765432
--
end-room


: blank? ( "s" -- "f")
    length 0 <=
;

: mk-button ( "s" "title" -- "s" ) { x t }
    x blank? -> "" exit |.
    t " " concat x concat button
;




: ask-permission
  1 info-asked! drop

  "Okay" yesButton ctx{ yes }
  "Maybe next time" noButton ctx{ no }
  q{
    <p>Could you allow us to ask you a few questions 
        so that we could better cater for your needs?</p>
    #{yes} #{no}
  }q
;

\ if user chose yes, ask first question
room: waiting-for-permission
Q: Yes|yes|Okay|okay
A: Great! Let me ask you a few questions. <br><br> ${this-question questions}
C: +this-question
K: -waiting-for-permission collect-personal-info
--

: get_rejected
  "Back to Home" backButton ctx{ backBtn }
  q{
    <p>It's okay. Feel free to continue to explore our menu and sevices.</p>
    <br>
    #{backBtn}
  }q
;

Q: no
Q: Maybe next time
A: ${ get_rejected }
K: -waiting-for-permission
--
end-room


room: collect-personal-info
Q: Skip this question ⏭️
A: last? not % ${ this-question questions }
A: last? % Thank you for your response! <br> You can select any option below: <br> ${ "View Menu" generalButton } <br> ${ "Our Services" generalButton} <br> ${ "About Us" generalButton}
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: event-question? % "Rather Not Say" userDateOfBirth!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question userHearFromWhere!
C: +this-question
K: email-question? % emailValidation
K: last? % -collect-personal-info
--

Q: $_
\ A: log_inquiry? % heres
A: last? not % ${ this-question questions }
A: last? % Thank you for your response! <br>${ "Display my personal info" generalButton } 

L: log_inquiry? % [Customer inquiry] userName: ${ userName } | ${ inquiry_log }
L: savetolog? % userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: event-question? % last-question userDateOfBirth!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question save-personal-info
C: +this-question
K: email-question? % emailValidation
K: mobilenumber-question? % mobileNumberValidation
K: last? % -collect-personal-info
--
end-room

\ include A: and K: below to start asking user's permission to collect their personal info
\ Q: Collect personal info
\ Q: s
\ C: initialize_personal_info
\ A: ${ask-permission}
\ A: name #empty? % ${ask-permission}
\ K: waiting-for-permission
\ --
\ 


: display-personal-info ( -- "s")
  initialize_personal_info
  
  "Back to Home" backButton ctx{ home }
  q{
    <p>Your personal info is as follows:<br>Click on any of them to edit.</p>
  }q
  userName "Name:" mk-button concat
  userEmail "Email:" mk-button concat
  userMobileNumber "Mobile Number:" mk-button concat
  userDateOfBirth "Date of birth:" mk-button concat
  userEvent "Event wants to hold:" mk-button concat
  userHearFromWhere "Hear Le Rainbow from:" mk-button concat
  q{
    <center>#{home}</center>
  }q concat
;

Q: Display my personal info 
A: name #empty? % You haven't left any information. ${ask-permission}
A: ${ display-personal-info }
K: name #empty? % waiting-for-permission
--

room: email
Q: $x.@emailRegex
A: Changes saved! ${ "Display my personal info" generalButton }
C: last-question userEmail! email clear userEmail +email save-email
C: 1 this-question!
L: userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
K: -email
--

Q: $_
A: Email format invalid. Please enter email with correct format.
--
end-room

room: mobileNumber
Q: $x.@mobileNumberRegex
A: Changes saved! ${ "Display my personal info" generalButton }
C: last-question userMobileNumber! mobileNum clear userMobileNumber +mobileNum save-mobileNum
C: 1 this-question!
L: userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
K: -mobileNumber
--

Q: $_
A: Mobile number format invalid. Please enter mobile number with correct format.<br>eg: 98765432
--
end-room

room: edit-personal-info

Q: $_
A: Changes saved! ${ "Display my personal info" generalButton }
C: email-question? % last-question userName! name clear userName +name save-name
\ C: mobilenumber-question? % last-question userEmail! email clear userEmail +email save-email
\ C: dob-question? % last-question userMobileNumber! mobileNum clear userMobileNumber +mobileNum save-mobileNum
C: event-question? % last-question userDateOfBirth! dateOfBirth clear userDateOfBirth +dateOfBirth save-dateOfBirth
C: hearFromWhere-question? % last-question userEvent! event clear userEvent +event save-event
C: last? % last-question userHearFromWhere!
C: 1 this-question!
L: userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
K: -edit-personal-info
--
end-room

: ask-update
  1 info-asked! drop

  q{
    <p>By the way, is there anything you 
    want to update in your profile?</p>
    <br>
  }q
  display-personal-info concat
;

\ room: waiting-for-update
\ 
\ Q: Yes|yes|Okay|okay
\ A: You may click the buttons above to update.
\ K: -waiting-for-update 
\ --
\ 
\ Q: No|no|Maybe next time
\ A: It's okay. Feel free to continue to explore our menu and sevices.
\ K: -waiting-for-update
\ --
\ 
\ end-room

Q: back to home
A: ${ homepage }
K: $clear
--

Q: Name:
A: Please enter your name:
C: 2 this-question!
K: edit-personal-info
--
Q: Email:
A: Please enter your email:
C: 3 this-question!
K: email
--
Q: Mobile Number:
A: Please enter your mobile number:
C: 4 this-question!
K: mobileNumber
--
Q: Date of birth:
A: Please enter your date of birth:
C: 5 this-question!
K: edit-personal-info
--
Q: Event wants to hold:
A: Please enter your event:
C: 6 this-question!
K: edit-personal-info
--
Q: Hear Le Rainbow from:
A: Where do you hear from us:
C: 7 this-question!
K: edit-personal-info
--




