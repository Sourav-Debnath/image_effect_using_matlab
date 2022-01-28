edge_in = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\vignetting_in.jpg');

% to enhance the edge I will use unsharp masking and highboost filtering
% smoothing the image
edge_blur = imgaussfilt(edge_in,2);

% subtracting the blurred image from the original to get the edges
edge_sharp = edge_in - edge_blur;

% adding the sharp mask to the original to get edge glow efffect
edge_out = edge_in + (2 * edge_sharp);

subplot(1,2,1);
imshow(edge_in)
subplot(1,2,2);
imshow(edge_out)
