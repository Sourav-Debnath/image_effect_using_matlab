clc
clear all
close all

mirror_im = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\mirror_in.jpg');
 
mirror_out=mirror_im;
for i = 1 : size(mirror_im,1)
    for j = 1 : size(mirror_im,2)
        for k = 1 : size(mirror_im,3)
            mirror_out(i,j,k) = mirror_im(i,size(mirror_im,2)-j+1,k);
        end
    end    
end
 
subplot(1,2,1);
imshow(mirror_im)
subplot(1,2,2);
imshow(mirror_out)
