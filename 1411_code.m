clc
clear all
close all
T = imread('C:\all class video and slide from classroom\study documents\8th semester\prl\34\PR lab\Alphabets\D.png');
figure(),imshow(T);
I = imread('C:\all class video and slide from classroom\study documents\8th semester\prl\34\PR lab\DATABASE\Template.png');
figure(),imshow(I);
Tg = rgb2gray(T);
figure(),imshow(Tg);
Ig = rgb2gray(I);
figure(),imshow(Ig);

Level_T=graythresh(Tg);
Level_I=graythresh(Ig);
bw_T=im2bw(Tg,Level_T);
figure(),imshow(bw_T);
bw_I=im2bw(Ig,Level_I);
figure(),imshow(bw_I);

[Tr Tc ]=size(bw_T);
[Ir Ic ]=size(bw_I);
R = normxcorr2(bw_T,bw_I)
R=imcrop(R,[Tc Tr Ic Ir]);
[r c v]= find(R==(max(max(R))))
RGB=insertShape(I,'rectangle',[c r Tc Tr], 'LineWidth', 2);
imshow(RGB);