clc,clear,close all
warning off
%%Question2-A
k=11;
%Filter design
sigma=3;
h1=gauss_filter(k,sigma);
sigma=10;
h2=gauss_filter(k,sigma);
h=h2-h1
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
%Plotting
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','Original image')
imshow(I)
%%Question2-B
I=im2double(rgb2gray(I));
[ix,iy]=size(I);
%Filtering grayscale image
R=img_conv(I,h,ix,iy,k);
%binarizing the filtered image
RB=R;
for i=1:ix
    for j=1:iy
        if RB(i,j)>0
            RB(i,j)=255;
        else
            RB(i,j)=0;
        end
    end
end
%Plotting
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','Filtered image(binary)')
imshow(RB,[])
%%Question2-C
[rx,ry]=size(R);
 w=laplacianG_filter(11,10);
 RZ=img_conv(R,w,rx,ry,11);
 for i=1:rx
     for j=1:ry
         if RZ(i,j)>0
             RZ(i,j)=1;
         else
             RZ(i,j)=-1;
         end
     end
 end
RZ=hor_ver(R);
%Plotting
figure()
set(gcf,'NumberTitle','off')
set(gcf,'Name','Edge detected image')
imshow(RZ,[])