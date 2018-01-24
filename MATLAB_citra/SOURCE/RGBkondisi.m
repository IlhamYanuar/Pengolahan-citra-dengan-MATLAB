clear all
clc
close all

A=double(imread('E:/baby.jpg'));
[row coloms page]=size(A);

if page==1
    disp('gambar sudah grayscale');
    break;
else
    fR=A(:,:,1);
    fG=A(:,:,2);
    fB=A(:,:,3);
    I=(fR+fG+fB)/3;
end
subplot(1,2,1), imshow(uint8(A)); %uint8 karena type double
subplot(1,2,2), imshow(uint8(I));