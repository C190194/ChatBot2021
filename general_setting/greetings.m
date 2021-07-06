\
\ @author: Arnold Doray
\ @date: 22 Jan 2020
\
\ Simple greetings
\

"Le Rainbow Chatbot" => botname

@: greeting thank bye
greeting: Hello Hi Hey 
thank: thank|thanks
bye: bye|goodbye|good_bye|so_long



Q: $greeting
A: Hello! ; Hi! ; It’s nice to meet you! ; It’s a pleasure to meet you!
--



Q: :first How are you
Q: :first How are you doin
Q: :first How have you been
Q: :first How is it going
A: I'm fine thanks! ; Doing great! ; Not too bad!
--

Q: :first My name is $x
Q: :first My name's $x
A: Hi $x . I am ${ botname }  
--

Q: :first What is your name
Q: :first What's your name
Q: :first Who are you
A: I am ${ botname } ; My name is ${ botname }
--

Q: :first @thank
A: You're welcome
--

Q: @bye
A: Bye ; Hear from you again ; Good bye! 
--



