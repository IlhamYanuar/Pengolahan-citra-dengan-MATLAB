%EKSTRAKSI
%{ 
NIM
NAMA
%}

%% komen
clc;
clear;

%% ekstraksi feature (average color)
daun=imread('a_1.jpg'); %load gambar daun

%% prepocessing
daun = imresize (daun, 0.1);
daun = double(daun);

%% ekstaksi warna
R = daun(:,:,1); % ':' artinya bisa 'semua', index red = 1 ; ambil layer merah
G = daun(:,:,2); % ':' artinya bisa 'sampai', index green = 2; ambil layer hijau
B = daun (:,:,3); % ':' artinya bisa 'step', index blue = 3; ambil layer biru

totalR = 0; %total intensitas warna R
totalG = 0; %total intensitas warna G
totalB = 0; %total intensitas warna B

for x = 1:1:size(daun,1) %size(gambar,1) -> mengambil banyak baris
    for y=1;size(daun,2) %size(gambar,2) -> mengambil banyak kolom
        totalR = totalR + R(x,y); %totalR bertambah nilai pixel layer R baris x kolom y
        totalG = totalG + G(x,y); %totalG bertambah nilai pixel layer G baris x kolom y
        totalB = totalB + B(x,y); %totalB bertambah nilai pixel layer B baris x kolom y
    end
end
ratarataR = totalR / (size(daun,1) * size(daun,2));
ratarataG = totalG / (size(daun,1) * size(daun,2));
ratarataB = totalB / (size(daun,1) * size(daun,2));

%subplot (1,2,1), imhist(uint8 (ratarataR));
%subplot (1,2,2), imshow(uint8 (ratarataG));
%subplot (1,2,3), imshow(uint8 (ratarataB));


        


