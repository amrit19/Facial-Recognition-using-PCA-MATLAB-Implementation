clear all
close all
clc
%Enter your orl_faces train and test dataset path
datapath=uigetdir('path to your orl faces train dataset','orl_faces');
testpath=uigetdir('path to your orl faces test dataset','orl_faces');

%Ask the user for input of test image
prompt={'Enter test image name (enter a number between 1 and 10)'};
dialogue_title='Input of face based facial recognition';
num_lines=1;
def={' '};
TestImage=inputdlg(prompt,dialogue_title,num_lines,def);
TestImage=strcat(testpath,'\',char(TestImage),'.pgm');

%Show the test image chosen
figure,imshow(TestImage);
title('Test Image');

%Calling the function for facial recognition

recog_img=facerecognewME(datapath,TestImage);
selected_img=strcat(datapath,'\',recog_img);
select_img=imread(selected_img);

%Show the recognized image
figure,imshow(select_img);
title('Recognized Image');
