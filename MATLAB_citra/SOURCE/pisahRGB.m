clear all
clc
close all

a=imread('E:/baby.jpg');
red = a(:,:,1);
green = a(:,:,2);
blue = a(:,:,3);
subplot(2,2,1), imshow(a);
subplot(2,2,2), imshow(red);
subplot(2,2,3), imshow(green);
subplot(2,2,4), imshow(blue);