clc;
clear all;
close all;
%% Test Face
[fname path] = uigetfile('.jpg','Provide a face for Testing');
fname = strcat(path,fname);
im = imread(fname);
imshow(im);
title('Test Face');
%% Find out which Class it belongs
Ftest = FeatureStatistical(im);
%% Compare with Database
load db.mat
Ftrain = db(:,1:2);
Ctrain = db(:,3);
for(i=1:size(Ftrain,1))
    dist(i,:) = sum(abs(Ftrain(i,:)-Ftest));
end
Min = min(dist);
if(Min<3)
m = find(dist==Min,1);
det_class = Ctrain(m);
msgbox(strcat('detected class=',num2str(det_class)));
else
    msgbox('This Person is not Registered');
end