clc
clear all
close all

photocopy_im = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\photocopy_in.jpg');
 
photocopy_in = double(rgb2gray(photocopy_im));
photocopy_out = double(rgb2gray(photocopy_im));
 
threshold = 100;
for i = 1 : size(photocopy_in,1)
    for j = 1 : size(photocopy_in,2)
        
        if photocopy_in(i,j) > threshold
            photocopy_out(i,j) = 255;
        else
            photocopy_out(i,j) = photocopy_in(i,j) * (threshold - photocopy_in(i,j)) / threshold.^2;
        end
    end
end
 
subplot(1,2,1);
imshow(photocopy_im)
subplot(1,2,2);
imshow(photocopy_out)
