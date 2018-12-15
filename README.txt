Project definition:
Implement voice biometric and face recognition system for authentication for security.

For Voice Biometric : 
First in VoiceTraining we will record the user's voice for 5 seconds and save it's Feature(here Pitch is used) in the database. In VoiceTesting user will speak again 
we will determine if the feature is matched or not.


For Face Recognition
First we create the database of jpg images of same dimensions. (here it is 1172x1570)
In Module1_training file we will take image as input and extract it's features i.e mean and standard deviation and we give it a lable(class). We store these in database.
Then for face recognition we will run Face classifier. In this we will input an unknown face which has not been taken in training yet! We extract it's features and 
compare it with Database and we will obtain the lable(class) as output. If the match is not found then message will appear that 'This Person is not Registered'.

