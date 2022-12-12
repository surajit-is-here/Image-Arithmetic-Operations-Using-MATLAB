%Water Marking using EX-OR operation

img1 = imread('cameraman.tif');
img= imread('mark1.jpg');
img2= imresize(img, [size(img1,1) size(img1,2)]);
xor= bitxor(img1,img2);
img3= bitxor(xor,img2);
subplot(141);
imshow(img1);
title('First Image');
subplot(142);
imshow(img2);
title('Second Image');
subplot(143);
imshow(xor);
title('WaterMark Image');
subplot(144);
imshow(img3);
title('Retrieved Image');