%Histogram Equalization Without Built-in Function

orginal = imread('pout.tif');
[rows,columns,p] = size(orginal);
final = uint8(zeros(rows,columns));
pixelNumber = rows*columns;
frequncy = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
cu = zeros(256,1);
out = zeros(256,1);
for i = 1:1:rows
    for j = 1:1:columns
        val = orginal(i,j);
        frequncy(val+1) = frequncy(val+1)+1;
        pdf(val+1) = frequncy(val+1)/pixelNumber;
    end
end
sum =0 ;
intensity = 255;

for i = 1:1:size(pdf)
    sum =sum +frequncy(i);
    cu(i) = sum;
    cdf(i) = cu(i)/ pixelNumber;
    out(i) = round(cdf(i) * intensity);
end


for i = 1:1:rows
    for j = 1:1:columns
        final(i,j) = out(orginal(i,j) + 1);
    end
end
subplot(121);
imshow(orginal);
title('Original Image');
subplot(122);
imshow(final);
title('Histogram Equalization');