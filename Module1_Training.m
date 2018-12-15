clc;
clear all;
close all;
%% Taking an Image
[fname path] = uigetfile('.jpg','Open a face image as an input for Training');
fname = strcat(path,fname);
im = imread(fname);
imshow(im);
title('Input Face');
c=input('Enter the class (Number from (1 - 10))');
%% Feature Extraction
F = FeatureStatistical(im);
try
    load db;
    F = [F c];
    db = [db;F];
    save db.mat db
catch
    db = [F c]; %10 12 1
    save db.mat db
end