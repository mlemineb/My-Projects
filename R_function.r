Sending_msg_to_mom<- function() {
  
  Five_ways_to_say_hello<-data.frame(id=1:5,msg=c("Bonjour Maman ♥, kivek ?",
                                                  "Hello Mamti, sba7 L5ayr ",
                                                  "Hola Reina, como estas ?",
                                                  "Sbah lward w sourour L A7la Oum f denya",
                                                  "Salam Mama, iyak sba7ek zeyn ?"
  ))
  
  # Generate a random number between 60 to 300 sec for sleeping the pgrm and 1 to 5 for chosing body message
  sleep_n <- sample(seq(60,300,60), 1)
  body_n <- sample(1:5, 1)
  

  # First you need to set up your accound SID and token as environmental variables
  Sys.setenv(TWILIO_SID = "ACd013XXXXXXXXXXXXXXXXXXXXXXXXXXXX")
  Sys.setenv(TWILIO_TOKEN = "2b0XXXXXXXXXXXXXXXXXXXXXXXXXXXX")
  
  # Then we're just going to store the numbers in some variables
  my_phone_number <- "whatsapp:+XXXXXXXX"
  twilios_phone_number <- "whatsapp:+14155238886"
  
  # Now we can send away!
  Sys.sleep(sleep_n)
  twilio::tw_send_message(from = twilios_phone_number, to = my_phone_number,
                  body =as.character(Five_ways_to_say_hello$msg[body_n]) )
}

Sending_msg_to_mom()
