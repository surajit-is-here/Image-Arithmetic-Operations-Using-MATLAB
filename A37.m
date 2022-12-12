%OR operation between two images

img= imread('cameraman.tif');
mask= roipoly(img);
mask=im2uint8(mask);
AND = bitor(img,mask);
subplot(131);
imshow(img);
title('Original Image');
subplot(132);
imshow(mask);
title('Mask Image');
subplot(133);
imshow(AND);
title('OR Image');