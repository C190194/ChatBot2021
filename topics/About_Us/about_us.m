\
\ Copyright © 2021 chiazhe all rights reserved.
\
\ @author: chiazhe
\ @date: 19 Jun 2021
\
\ A brief description of this program.
\

@: about
about: about about_you about_us

include ./topics/About_Us/about_us_db.m
include ./topics/About_Us/contact_n_op_hours.m
include ./topics/About_Us/social_media.m
include ./topics/About_Us/testimonials.m

include ./topics/About_Us/food_certification.m
include ./topics/About_Us/track_record.m
include ./topics/About_Us/corporate_clients.m



Q: $about
A: ${ about }
K: $clear aboutus-room
--

mem: testimonial_cnt
1 testimonial_cnt!

room: aboutus-room
\ Navigation
Q: Back to Main
A: ${ intro }
K: $clear
--

Q: Back to About
A: ${ about }
--

\ Main menu items
Q: Why Le Rainbow
Q: Back
A: ${ why-lerainbow }
--

Q: See our contact info and operating hours
A: ${ contact-info-operating }
--

Q: Find us on social media
A: ${ social-media-instagram }
--

Q: Were also on Facebook
A: ${ social-media-facebook }
--

\ Testimonials looper
Q: Hear from satisfied customers
Q: Show me another
A: ${ testimonial_cnt testimonials_list }
C: testimonial_cnt 6 <= % testimonial_cnt 1+ testimonial_cnt!
C: testimonial_cnt 6 > % 1 testimonial_cnt!
--

\ "Why Le Rainbow" Menu iitems
Q: Our food certification
A: ${ food-certification }
--

Q: See our track record    
Q: Track Record
A: ${ track-record }
--

Q: Our Trusted Clients
A: ${ our-trusted-clients }
--

end-room

\ Q: Operating Hours
\ A: We operate from 8:30AM to 5PM from Monday to Friday, 8:30AM to 12PM on Saturday and closed on Sunday.
\ --
\ 
\ Q: Contact Information
\ A: Feel free to contact us through our telephone ${ telephone }. Alternatively, you can email us for any enquiries or bookings at ${ email }.
\ --
\ 
\ Q: Social Media
\ A: You can find us on${ facebookLink }or${ instaLink }.
\ --

\ Q: Food Certification
\ A: Our brand is certified by Association of Catering Professionals Singapore and Majlis Ugama Islam Singapura.
\ --


