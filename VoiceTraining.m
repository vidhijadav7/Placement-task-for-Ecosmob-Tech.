clear all;
close all;
clc;
%% Create a recorder object
recorder = audiorecorder (16000,8,2);
%% Record user's voice for 5 sec
disp('Please record your voice');
drawnow();
pause(1);
recordblocking(recorder,5);
play(recorder);
data = getaudiodata(recorder);
plot(data)
figure;
%% Feature Extraction
f = VoiceFeatures(data);
%% Save user's Data
uno = input('Enter the user number :');
try
    load database
    F = [F;f];
    C = [C;uno];
    save database
catch
    F=f;
    C=uno;
    save database F C
end
msgbox('Your Voice is registered')