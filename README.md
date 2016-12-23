#The Butt Facts Texting Service# 

##Introduction##

The Butt Facts Texting Service is a boiler plate terminal based program for sending bulk texts to lists of contacts with random content using the Twilio app.

In this case, the service sends medically untrue facts about the human butt to a list of my subscribers by text message.

##How to Use This Boiler Plate##

1 Clone this repo

2 Go to https://www.twilio.com/ and sign up to get your account_sid,    auth_token and from number

3 Set up 3 files in the same folder

                - buttfacts.txt (or whatever you want to send your friends and change the reference to this text file in the code)
                    The format is one string on every line like this:
                                The Butt was invented in 1948 by Timothy Butt

                - subscribers.txt (this is a list of your text contacts)
                    The format is on entry on every line like this:
                          4471234567890,Alan

                - secrets.txt (this is your Twilio information)
                    The format is like this:
                    from,4471234567890
                    account_sid,B4EJLEDR3E61OUP5OU4ROUBLATLUBLEP225
                    auth_token,920CLEDRL8NIACRIACH83JIENLUGOAPOEJI

4 Run bundle install

5 Open up IRB

6 require './buttfacts_text' (or whatever you have changed the name to)

7 x = Messenger.new

8 x.send_butt_fact
