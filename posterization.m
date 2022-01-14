clc
clear all
close all

posterized_im = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\flower_in.jpg');
 
posterized_im_out = posterized_im;
for i = 1 : size(posterized_im,1)
    for j = 1 : size(posterized_im,2)
        
        if posterized_im(i,j) < 31
            posterized_im_out(i,j) = 15;
        elseif posterized_im(i,j) < 63
            posterized_im_out(i,j) = 47;
        elseif posterized_im(i,j) < 95
            posterized_im_out(i,j) = 79;
        elseif posterized_im(i,j) < 127
            posterized_im_out(i,j) = 111;
        elseif posterized_im(i,j) < 159
            posterized_im_out(i,j) = 143;
        elseif posterized_im(i,j) < 191
            posterized_im_out(i,j) = 175;
        elseif posterized_im(i,j) < 223
            posterized_im_out(i,j) = 207;
        else
            posterized_im_out(i,j) = 239;
        end        
    end
end

subplot(1,2,1);
imshow(posterized_im)
subplot(1,2,2);
imshow(posterized_im_out)
