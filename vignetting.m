vignetting_im = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\vignetting_in.jpg');
 
vignetting_out = vignetting_im;
centerpixel = [size(vignetting_im,1)/2,size(vignetting_im,2)/2];
 
M = sqrt(double(centerpixel(1)).^2+double(centerpixel(2)).^2);
 
for i = 1 : size(vignetting_im,1)
    for j = 1 : size(vignetting_im,2)
        for k = 1 : size(vignetting_im,3)
            D = sqrt((double(centerpixel(1)-i).^2)+(double(centerpixel(2)-j).^2));
            vignetting_out(i,j,k) = double(vignetting_im(i,j,k)) * (1 - double(D/M));
        end
    end
end
 
subplot(1,2,1);
imshow(vignetting_im)
subplot(1,2,2);
imshow(uint8(vignetting_out))
