%Addition of two images

img1= imread('jerry1.jpg');
img= imread('tom1.jpg');
img2= imresize(img, [size(img1,1) size(img1,2)]);
add= imadd(img1,img2);
subplot(131);
imshow(img1);
title('First Image');
subplot(132);
imshow(img2);
title('Second Image');
subplot(133);
imshow(add);
title('Added Image');