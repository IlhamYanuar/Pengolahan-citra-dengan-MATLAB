clear all
clc
close all

A=imread('E:/fr-03.jpg');
R1=imresize(A,2);
R2=imresize(A,0.5); %(variable, scale)
R3=imresize(A, [100 70]); %resize 100x 70 px
subplot(2,2,1), imshow(A);
subplot(2,2,2), imshow(R1);
subplot(2,2,3), imshow(R2);
subplot(2,2,4), imshow(R3);
