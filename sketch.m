sketch_in = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\sketch_in.jpg');

% converting into a gray scale image
sketch_gray = rgb2gray(sketch_in);

% using sobel operator
sobel1 = [-1 -2 -1;0 0 0;1 2 1]; 
first_sketch = imfilter( sketch_gray, sobel1, 'conv');

% using sobel operator second time
sobel2 = [-1 0 -1;-2 0 2;-1 0 1]; 
sketch_out = imfilter( first_sketch, sobel2, 'conv');

% making the negative of the image as sobel reverses the color code
sketch_out = 255-sketch_out;

subplot(1,2,1);
imshow(sketch_in)
subplot(1,2,2);
imshow(sketch_out)
