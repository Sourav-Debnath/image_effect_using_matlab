# image_effect_using_matlab
## Tools
* Matlab

## Methods
For every image effects I used different methods. I am giving a brief description of the way I did the work.

a.	Posterize:
For posterizing the image, I selected 8 different colors. Every color is ranged here:
 15(0	31)    47(32	63)	     79(64	95)    111(96	127)
  143(128	159)    	175(160	191)    207(192	223)    239(224	255)			

For input value ranged (0-31) the output image got a value of 15. Same goes for the others.

b.	Nightvision:
For making a night vision effect, I used the formula given on the question: 
Output R = Input G / 2
Output B = 2 x Output R
Output G = 2 x Output B

c.	Photocopy: 
To make a photocopy effect of the image initially, I made a grayscale image out of the input. Then I used an algorithm to create a photocopy effect:
If input_pixel>threshold  output_pixel = 255
Else  output_pixel = (input_pixel * (threshold - input_pixel)) / 1002 

d.	Vignetting:
To create vignetting effect on a picture, I first tried to find out the center pixel of the image. And then used the distance formula to find the max distance, M and distance of each pixel, D. After that, I multiplied the input pixel value and 1 - (D/M) for every input pixel and set them as output image.
 
e.	Mirror:
To make the mirror effect, I simply flipped the indexing values of the rows from the picture.
