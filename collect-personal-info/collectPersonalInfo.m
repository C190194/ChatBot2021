\
\ Copyright © 2021 liew0183 all rights reserved.
\
\ @author: liew0183
\ @date: 1 Jul 2021
\
\ A brief description of this program.
\ collect personal info



mem: this-question
    1 this-question!

assoc: questions


mem: userName userMobileNumber userEmail userDateOfBirth userEvent userHearFromWhere

"" userName!
"" userMobileNumber!
"" userEmail!
"" userDateOfBirth!
"" userEvent!
"" userHearFromWhere!

mem: edit-personal-info-number
    0 edit-personal-info-number!

: eventQuestion 
    "Wedding" generalButton ctx{ wedding }
    "Father's Day" generalButton ctx{ fathersday }

    q{
        <p>We are almost there!</p>
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
        <p>Final question!</p>
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
    1 "First of all, may I know your name?"
    2 "Thank you. What is your email?"
    3 "Got it. What is your mobile number?"
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
Q: $x.@emailRegex
A: ${ this-question questions }
C: mobilenumber-question? % last-question userEmail!
C: +this-question
K: mobilenumber-question? % mobileNumberValidation -emailValidation
--

Q: $_
A: Email format invalid. Please enter email with correct format.
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
A: Mobile number format invalid. Please enter mobile number with correct format.<br>eg: 98765432
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
  "Okay" yesButton ctx{ yes }
  "Maybe next time" noButton ctx{ no }
  q{
    <p>To better cater for your needs, I 
    would like to ask your permission to 
    collect some info from you.</p><br>
    #{yes} #{no}
  }q
;

\ if user chose yes, ask first question
room: waiting-for-permission
Q: Yes|yes|Okay|okay
A: Great! Let me ask you a few questions. <br> ${this-question questions}
C: +this-question
K: -waiting-for-permission collect-personal-info
--

Q: No|no|Maybe next time
A: Understood.
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
A: last? not % ${ this-question questions }
A: last? % Thank you for your response! <br>${ "Display my personal info" generalButton }
L: savetolog? % userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: event-question? % last-question userDateOfBirth!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question userHearFromWhere!
C: +this-question
K: email-question? % emailValidation
K: mobilenumber-question? % mobileNumberValidation
K: last? % -collect-personal-info
--
end-room


Q: Collect personal info
A: ${ask-permission}
K: waiting-for-permission
--


: display-personal-info ( -- "s")
    q{
    <p>Your personal info is as follows:<br>Click on any of them to edit.</p>
  }q
    userName "Name:" mk-button concat
    userEmail "Email:" mk-button concat
    userMobileNumber "Mobile Number:" mk-button concat
    userDateOfBirth "Date of birth:" mk-button concat
    userEvent "Event wants to hold:" mk-button concat
    userHearFromWhere "Hear Le Rainbow from:" mk-button concat
;

Q: Display my personal info 
A: ${display-personal-info}
--


room: edit-personal-info
Q: $_
A: Changes saved! ${ "Display my personal info" generalButton }
C: email-question? % last-question userName!
C: mobilenumber-question? % last-question userEmail!
C: dob-question? % last-question userMobileNumber!
C: event-question? % last-question userDateOfBirth!
C: hearFromWhere-question? % last-question userEvent!
C: last? % last-question userHearFromWhere!
C: 1 this-question!
L: userName:${ userName },userEmail:${ userEmail },userMobileNumber:${ userMobileNumber },userDateOfBirth:${ userDateOfBirth },userEvent:${ userEvent },userHearFromWhere:${ userHearFromWhere }
K: -edit-personal-info
--
end-room


Q: Name:
A: Please enter your name:
C: 2 this-question!
K: edit-personal-info
--
Q: Email:
A: Please enter your email:
C: 3 this-question!
K: edit-personal-info
--
Q: Mobile Number:
A: Please enter your mobile number:
C: 4 this-question!
K: edit-personal-info
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


