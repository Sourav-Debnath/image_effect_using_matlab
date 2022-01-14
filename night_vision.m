clc
clear all
close all

night_im = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\night_vision_in.jpg');
 
redChannel = night_im(:,:,2)/2;
greenChannel = 2*night_im(:,:,3);
blueChannel = 2*night_im(:,:,1);
 
night_im_out = cat(3, redChannel, greenChannel, blueChannel);
 
subplot(1,2,1);
imshow(night_im)
subplot(1,2,2);
imshow(night_im_out)
