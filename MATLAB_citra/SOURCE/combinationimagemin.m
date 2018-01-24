clear all
clc
close all

A= imread('E:/baby.jpg');
B= imread('E:/lena.jpg');
C= imresize(A, [200 250], 'bicubic');
D= imresize(B, [200 250], 'bicubic');
[r1 c1 s1] = size(C);
[r2 c2 s2] = size (D);

for x = 1 : r1
    for y = 1 : c1
           for z = 1 : s1
               F(x,y,z)= C(x,y,z)- D(x,y,z);
           end
    end
end

subplot (1,3,1), imshow(A);
subplot (1,3,2), imshow(B);
subplot (1,3,3), imshow(F);
