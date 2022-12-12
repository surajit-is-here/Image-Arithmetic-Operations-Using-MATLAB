%Adding objects to an external scenery using the above operator(s)

img1= imread('498461-bigthumbnail.jpg');
img2=imread('tom-and-jerry-phone-wallpaper-1-394x700.jpg');
img3=imread('HD-wallpaper-tom-jerry.jpg');
img3=flip(img3,2);
img=img1;
a=imresize(img2,[size(img1,1) size(img1,2)]);
b=imresize(img3,[size(img1,1) size(img1,2)]);
mask=a>10;
mask1=b>10;
img1(mask)=a(mask);
img1(mask1)=b(mask1);
subplot(141);
imshow(img2);
title('First Image');
subplot(142);
imshow(img3);
title('Second Image');
subplot(143);
imshow(img);
title('Background Image');
subplot(144);
imshow(img1);
title('Final Image');