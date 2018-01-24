clear all
clc
close all

A=imread('E:/lena.jpg');
I=im2bw(A);

subplot(1,2,1), imshow(A);
subplot(1,2,2), imshow(I);
