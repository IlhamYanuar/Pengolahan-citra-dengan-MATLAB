

%komen 1 baris -> ( % )
%komen blok -> ( %{%} )
%untuk batas code ('%%spasi')
%F9 = untuk run per baris dengan syarat di blok dulu.
%{
    NAMA
    NIM
%}

%% inisialisasi program
clc;
clear; %menghapus workspace pada kanan

%% Inti core
gambar = imread('firefox.png');
abu = rgb2gray (gambar);
icon = imresize(abu, [64 64]);
imshow(icon);
