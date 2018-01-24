clear all
clc
close all

A=imread('E:/lena.jpg');
B=imrotate(A, 45);
C=imrotate(A, 60);
D=imrotate(A, 90);
subplot(2,2,1)
imshow(A)
subplot(2,2,2)
imshow(B)
subplot(2,2,3)
imshow(C)
subplot(2,2,4)
imshow(D)