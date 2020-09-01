clc,clear,close all
warning off
%%Question1-A
k=9;
%sigma=1
h1=gauss_filter(k,1)
%sigma=3
h2=gauss_filter(k,3)
%sigma=20
h3=gauss_filter(k,20)
%Input image
addpath('Sample images')
list = {'3_1.jpg','7_1.jpg','butterfly.jpg'};
[index] = listdlg('ListString',list,'SelectionMode','single');
if index==1
    I=im2double(imread('3_1.jpg'));
end
if index==2
    I=im2double(imread('7_1.jpg'));
end
if index==3
    I=im2double(imread('butterfly.jpg'));
end
%%Question1-B
I=im2double(I);
R1=I;
R2=I;
R3=I;
[ix,iy,iz]=size(I);
%sigma=1
%Filtering red channel
R1(:,:,1)=img_conv(I(:,:,1),h1,ix,iy,k);
%Filtering green channel
R1(:,:,2)=img_conv(I(:,:,2),h1,ix,iy,k);
%Filtering blue channel
R1(:,:,3)=img_conv(I(:,:,3),h1,ix,iy,k);
%sigma=3
%Filtering red channel
R2(:,:,1)=img_conv(I(:,:,1),h2,ix,iy,k);
%Filtering green channel
R2(:,:,2)=img_conv(I(:,:,2),h2,ix,iy,k);
%Filtering blue channel
R2(:,:,3)=img_conv(I(:,:,3),h2,ix,iy,k);
%sigma=20
%Filtering red channel
R3(:,:,1)=img_conv(I(:,:,1),h3,ix,iy,k);
%Filtering green channel
R3(:,:,2)=img_conv(I(:,:,2),h3,ix,iy,k);
%Filtering blue channel
R3(:,:,3)=img_conv(I(:,:,3),h3,ix,iy,k);
%Plotting
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','sigma=1')
imshow(R1)
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','sigma=3')
imshow(R2)
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','sigma=20')
imshow(R3)