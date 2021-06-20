\
\ Copyright © 2021 chiazhe all rights reserved.
\
\ @author: chiazhe
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

@: about
about: about about_you

: newLine
  q{
    <br/>
  }q
;

: facebookLink ( "s" -- "s" )
  q{
    <a href="https://www.facebook.com/lerainbowcatering/" target="_blank">Facebook</a>
  }q
;

: instaLink ( "s" -- "s" )
  q{
    <a href="https://www.instagram.com/lerainbowcatering/?hl=en" target="_blank">Instagram</a>
  }q
;

: telephone ( "s" -- "s" )
  q{
    <a href="tel:6589 8855">6589 8855</a>
  }q
;

: email ( "s" -- "s" )
  q{
    <a href = "mailto: sales@lerainbow.com.sg">sales@lerainbow.com.sg</a>
  }q
;

: generalButton ( "s" -- "s" )
  q{ 
	margin-left:10px;
	margin-top:10px;
	padding:10px;
	text-align: center;
	width: 160px;
	font-size:15px;
	color:#FFFFFF;
	background:#53284e;
  }q  (button)
;

Q: $about
A: Le Rainbow Catering strives to be the best Halal caterer in Singapore, serving a mix of locally-inspired Western & Fusion cuisine. We have supported many different functions and events with our food. To learn more about us, click on any topic below: ${ newLine } ${ "Contact Information" generalButton } ${ "Operating Hours" generalButton } ${ "Social Media" generalButton } ${ "Food Certification" generalButton }
--

Q: Operating Hours
A: We operate from 8:30AM to 5PM from Monday to Friday, 8:30AM to 12PM on Saturday and closed on Sunday.
--

Q: Contact Information
A: Feel free to contact us through our telephone ${ telephone }. Alternatively, you can email us for any enquiries or bookings at ${ email }.
--

Q: Social Media
A: You can us on${ facebookLink }or${ instaLink }.
--

Q: Food Certification
A: Our brand is certified by Association of Catering Professionals Singapore and Majlis Ugama Islam Singapura.
--

