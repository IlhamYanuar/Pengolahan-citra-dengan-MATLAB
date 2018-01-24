clear all
clc
close all

A= imread('E:/fr-03.jpg');
[row colom page]=size(A); % [row col page] merupakan sebuah array

for x = 1 : row 
    for y = 1 : colom
        for z = 1 : page
            fo(x,y,z) = 255-A(x,y,z); %fo merupakan fungsi negasi citra
        end
    end
end

subplot (1,2,1), imshow(A);
subplot (1,2,2), imshow(fo);
