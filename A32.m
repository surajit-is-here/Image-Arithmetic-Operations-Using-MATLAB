%Perform division of images

img1= imread('office_1.jpg');
img= imread('office_3.jpg');
img2= imresize(img, [size(img1,1) size(img1,2)]);
img3= imdivide(img1,img2);
subplot(131);
imshow(img1);
title('First Image');
subplot(132);
imshow(img2);
title('Second Image');
subplot(133);
imshow(img3);
title('Divided Image');