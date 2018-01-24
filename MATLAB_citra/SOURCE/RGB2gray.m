clear all
clc
close all

A=imread('E:/lena.jpg');
I=rgb2gray(A);

subplot(1,2,1), imshow(A); title('citra asli');
subplot(1,2,2), imshow(I); title('citra Grayscale');
