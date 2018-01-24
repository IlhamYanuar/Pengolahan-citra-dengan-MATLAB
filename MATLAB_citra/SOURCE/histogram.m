clear all
clc
close all

%read in std MATLAB color demo image.
rgbImage = imread('E:/baby.jpg');
[row columns numberOfColorBands] = size(rgbImage);
subplot (2,2,1), imshow (rgbImage, []);
set(gcf, 'position', get (0, 'screensize')); 
%set(gcf... ) merupakan fungsi bawaan matlab

%extract individu color planes
redPlane = rgbImage(:,:,1);     %memanggil matriks gambar yg hanya berisi RED
greenPlane = rgbImage(:,:,2);   %memanggil matriks gambar yg hanya berisi GREEN
bluePlane = rgbImage(:,:,3);    %memanggil matriks gambar yg hanya berisi BLUE

%Lets get its histogram
[pixelCountR grayLevelsR] = imhist(redPlane);
subplot (2,2,2);
bar (pixelCountR, 'r');
xlim([0 grayLevelsR(end)]); %scale x axis manually

[pixelCountR grayLevelsG] = imhist(greenPlane);
subplot(2,2,3);
bar (pixelCountR, 'g');
xlim([0 grayLevelsR(end)]);

[pixelCountR grayLevelsB] = imhist(bluePlane);
subplot(2,2,4);
bar (pixelCountR, 'B');
xlim([0 grayLevelsR(end)]);

