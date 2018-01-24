%{
    DWI ILHAM YANUAR
    A11.2014.08196
    MATERI BRIGHTNESS
%}


%% code 
clear all
clc
close all

%% code brightness
A= imread('D:/PROJECT kuliah/MATLAB/baby.jpg');
i=rgb2gray(A); %diubah ke grayscale dulu
[row colom page]=size(i); % [row col page] merupakan sebuah array


k= 50
for x = 1 : row 
    for y = 1 : colom
           for z = 1 : page
            fo(x,y,z) = i(x,y,z)+k; %fo merupakan fungsi negasi citra
        end
    end
end

subplot (3,2,1), imshow(i); %gambar grayscale
subplot (3,2,2), imshow(fo);%gambar brightness
subplot (3,2,3), imhist(fo);
subplot (3,2,4), imhist(i);
subplot (3,2,5), imshow(A);%gambar asli

