old_in = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\vignetting_in.jpg');

% spliting the image into 3 channels
inputRed = old_in(:,:,1);
inputGreen = old_in(:,:,2);
inputBlue = old_in(:,:,3);

% applying pre-defined formula to change output value
outRed = (inputRed * .393) + (inputGreen *.769) + (inputBlue * .189);
outGreen = (inputRed * .349) + (inputGreen *.686) + (inputBlue * .168);
outBlue = (inputRed * .272) + (inputGreen *.534) + (inputBlue * .131);

% concatinate color channel into one output image
old_out = uint8(cat(3, outRed, outGreen, outBlue));

subplot(1,2,1);
imshow(old_in)
subplot(1,2,2);
imshow(old_out)
