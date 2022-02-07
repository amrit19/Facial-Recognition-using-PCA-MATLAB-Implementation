clear all
close all
clc
datapath=uigetdir('C:\Program Files\MATLAB\R2016a\bin','orl_faces');
testpath=uigetdir('C:\Program Files\MATLAB\R2016a\bin','orl_faces');
prompt={'Enter test image name (enter a number between 1 and 10)'};
dialogue_title='Input of image for facial recognition';
num_lines=1;
def={' '};
TestImage=inputdlg(prompt,dialogue_title,num_lines,def);
TestImage=strcat(testpath,'\',char(TestImage),'.pgm');
figure,imshow(TestImage);
title('Test Image');
recog_img=facerecognewME(datapath,TestImage);
selected_img=strcat(datapath,'\',recog_img);
select_img=imread(selected_img);
figure,imshow(select_img);
title('Recognized Image');
