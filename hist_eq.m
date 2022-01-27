hist_in = imread('C:\Users\SRV\Desktop\SampleIN-OUT\SampleIN-OUT\vignetting_in.jpg');

% getting histogram values of the image
[hist,~] = imhist(hist_in);
hist = hist/(sum(hist));

% calculating cdf values of the histogram
hist_cdf = zeros(size(hist));
hist_cdf(1) = hist(1);
for i = 2 : 256
    hist_cdf(i) = hist(i)+hist_cdf(i-1);    
end

% converting the cdf value from [0,1] to [0,255]
tr = round(255 * hist_cdf);

% mapping the values into the output image
hist_out = hist_in;
for i = 1 : size(hist_in,1)
    for j = 1 : size(hist_in,2)
        hist_out(i,j) = tr(hist_in(i,j)+1) - 1 ;
    end
end

[old_hist,~] = imhist(hist_in);
[new_hist,~] = imhist(hist_out);

% subplot(1,2,1);
% bar(old_hist)
% subplot(1,2,2);
% bar(new_hist)
subplot(1,2,1);
imshow(hist_in)
subplot(1,2,2);
imshow(hist_out)
