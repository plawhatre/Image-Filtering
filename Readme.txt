					Assignment 1 									
MATLAB-2018a Academic version
*Test images are in folder Sample images
*The first question of the assignment is solved in Q1.m file 
*The second question of the assignment is solved in Q2.m file
*Result for all the images are stored in folder Results. Result for each question and each image 	in stored in folders in structured manner, which is very easy to understand.
       *For question 1, R1.jpg ->filtered image with filter(sigma=1)
			R2.jpg -> filtered image with filter(sigma=3)
			R3.jpg -> filtered image with filter(sigma=20)
       *For question 2, rb.jpg -> dog filtered image.
			rz.jpg -> image where zerocrossing is highlighted
			ro.jpg -> image after inbuit function edge.  	
*User defined functions:
	1) gauss_filter.m {it is defined to find out the gaussian filter mask for convolution}
	2) laplacinaG_filter.m {it is defined to acheive smoothing operation in my code}
	3) img_conv.m {it is defined to carry out 2 dimensional convolution operation of image 		   	with the filter}
	4) hor_ver.m {it is defined to find out change in sign of the intensity values of two 		   	neighbouring pixel in both horzontal and verticle direction. Also it signals the 			change if the varian in the intensity value is above certain threshold otherwise 			it does not signals}

How to use the code:
1) Open the Q1.m or Q2.m and then run the code. 
2) A diaglog box will appear. Select the image you want to process.
3) The result is displayed using different windows (one for original image and one for 
   	processed image)

Estimated time to get results from the code:
It may vary from few seconds to about few minutes, depending on the size of the image.
