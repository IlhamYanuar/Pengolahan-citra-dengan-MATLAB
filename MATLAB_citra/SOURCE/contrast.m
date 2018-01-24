clear all
clc
close all

A= imread('E:/baby.jpg');
[row colom page]=size(A);
P=50 
G=2

for x = 1 : row 
    for y = 1 : colom
           for z = 1 : page
                fo(x,y,z) = G.*(A(x,y,z)-P) + P;
           end
    end
end


subplot (3,2,1), imshow (A);
subplot (3,2,2), imshow(fo);
