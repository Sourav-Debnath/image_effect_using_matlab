# image_effect_using_matlab
## Tools
* Matlab

## Contributor
* Sourav Debnath

## Methods
For every image effects I used different methods. I am giving a brief description of the way I did the work.

*	Posterize:
For posterizing the image, I selected 8 different colors. Every color is ranged here:
15(0	31), 47(32	63), 79(64	95), 111(96	127)
143(128	159), 175(160	191), 207(192	223), 239(224	255)			

 For input value ranged (0-31) the output image got a value of 15. Same goes for the others.

*	Nightvision:
For making a night vision effect, I used the formula given on the question: 
Output R = Input G / 2
Output B = 2 x Output R
Output G = 2 x Output B

*	Photocopy: 
To make a photocopy effect of the image initially, I made a grayscale image out of the input. Then I used an algorithm to create a photocopy effect:
If input_pixel>threshold  output_pixel = 255
Else  output_pixel = (input_pixel * (threshold - input_pixel)) / 1002 

*	Vignetting:
To create vignetting effect on a picture, I first tried to find out the center pixel of the image. And then used the distance formula to find the max distance, M and distance of each pixel, D. After that, I multiplied the input pixel value and 1 - (D/M) for every input pixel and set them as output image.
 
*	Mirror:
To make the mirror effect, I simply flipped the indexing values of the rows from the picture.

* Histogram Equalization:
Histogram is an approximate representation of the distribution of numbers through bar graph. The intensity of image often viewed through a histogram. Sometimes, the histogram of an image is concentrated in one place which is not ideal. So we try to make the intensity more scattered. This is called histogram equalization.

To equalize the histogram or intensity of an image I extract the histogram value of the input and applied the probability density function. Then calculated the CDF of every intensity level and converted it into a range of 0-255. Then I just changed the previous image intensity with new mapped intensity for every pixel and that gave me a equalized histogram.

* Old Image:
We often use vintage or old filter into our image. It’s basically manipulating the colors of the image to create an old image effect. I just split the image into red, green and blue channels and used a pre-defined formula that is proposed by Microsoft and the image color is manipulated.

* Sketch:
Sketch or pencil sketch is a very common image effect. To achieve sketch effect I used Sobel operation on the image that sharpens the image. First of all I converted the image into a grayscale image. Then applied horizontal and vertical sobel operators on the image. But the sobel inverts the color values. So I make a negative of the image and that gave me a sketch effect of the input image.

* To get edge glow effect, I used the enhancing technique on the edge by using unsharp masking and highboost filtering on the image. First I smoothed the input image and subtract it from the input image to get the edges of the image. Then I multiplied the edge value and added it with the input image to get an edge glow effect.
