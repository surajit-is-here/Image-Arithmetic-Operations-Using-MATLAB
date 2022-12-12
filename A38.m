%Calculate intersection of two images and display the intersection image

img= imread('smiely1.png');
img1= imread('smiely2.jpg');
img2= imresize(img1, [size(img,1) size(img,2)]);
[rows,columns,~] = size(img);
result=zeros(rows,columns);
for i=1:1:rows
    for j=1:1:columns
        if (img(i,j)==img2(i,j))
            result(i,j)=img(i,j);
        end
    end
end
subplot(131);
imshow(img);
title('First Image');
subplot(132);
imshow(img2);
title('Second Image');
subplot(133);
imshow(result);
title('Common Region');