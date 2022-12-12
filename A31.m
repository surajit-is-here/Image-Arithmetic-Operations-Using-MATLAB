%Subtract one image from other image

img = imread('added_image.jpg');
img1= imread('jerry1.jpg');
img3= imresize(img1, [size(img,1) size(img,2)]);
sub= imsubtract(img,img3);
subplot(131);
imshow(img);
title('First Image');
subplot(132);
imshow(img1);
title('Second Image');
subplot(133);
imshow(sub);
title('Subtracted Image');