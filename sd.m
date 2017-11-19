function im=sd(x)
pic(x);
im=imread(x);
%imwrite(imresize(im,[650 650]),'work.jpg');
info=imfinfo(x);
disp(info);
fileID = fopen('exp.txt','w');
fprintf(fileID,'TimeStamp %s',info.FileModDate);
figure(2);
imshow(im);
%e = [682 384 80 35];
%regno = imcrop(im,e);
%imshow(regno);
%imwrite(regno,'weird.jpg');

regno=imread('croppedcar.jpg');
figure(3);
imshow(regno);
c=[610 583 350 100];
logo=imcrop(im,c);
figure(4);
imshow(logo);
c1=[300 300 14 14];
col=imcrop(im,c1);
fprintf(fileID,' Color : R %d G %d B %d',col(1,1,1),col(1,1,2),col(1,1,3));
imwrite(col,'col.jpg');
figure(6);
imshow(col);
results=ocr(regno);
disp(results.Text);

