%Calculate mean value of image

img1= imread('RGB.jpg');
img2= imread('RGB2.jpg');
subplot(121);
imshow(img1);
title('First Image');
subplot(122);
imshow(img2);
title('Second Image');
m1 = mean2(img1);
m2= mean2(img2);
X= ['First mean= ' ,num2str(m1),' Second mean= ', num2str(m2)];
disp(X);
