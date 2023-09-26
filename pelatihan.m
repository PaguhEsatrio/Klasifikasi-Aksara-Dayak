clc; clear; close all; warning off all;
tic

% Variabel Program
% Radius LBP
radius = 1; 

% Cellsize
a = 16;
b = a;

% K dalam Knn
knn = 11;

% =======================================================================================================
% membaca aksara A kecil
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\A KECIL';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target a
target_aa = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name
    
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_aa(n,:) = extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_aa{n} = 'A_Kecil';
end
% =======================================================================================================

% =======================================================================================================
% membaca aksara A 
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\A';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target a
target_a = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name
    
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_a(n,:) = extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_a{n} = 'A';
end
% =======================================================================================================

% =======================================================================================================
% membaca aksara AH 
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AH';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target a
target_ah = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name
    % menampilkan citra
    %figure
    %imshow(Img)
    %title(sprintf('Citra ke-%d', n))
    
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ah(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ah{n} = 'AH';
end
% =======================================================================================================

% membaca aksara AK
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AK';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target a
target_ak = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name
    
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ak(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ak{n} = 'AK';
end
% =======================================================================================================

% membaca aksara AL
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AL';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target a
target_al = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_al(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_al{n} = 'AL';
end
% =======================================================================================================

% membaca aksara AM
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AM';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target AM
target_am = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_am(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_am{n} = 'AM';
end
% =======================================================================================================

% membaca aksara An
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AN';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target AN
target_an = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_an(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_an{n} = 'AN';
end
% =======================================================================================================


% membaca aksara Ang
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\ANG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target ANg
target_ang = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ang(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ang{n} = 'ANG';
end
% =======================================================================================================

% membaca aksara Ao
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AO';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Ao
target_ao = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ao(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ao{n} = 'AO';
end
% =======================================================================================================

% membaca aksara AP
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AP';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Ap
target_ap = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ap(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ap{n} = 'AP';
end
% =======================================================================================================

% membaca aksara AS
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AS';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target As
target_as = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_as(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_as{n} = 'AS';
end
% =======================================================================================================

% membaca aksara AT
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AT';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target As
target_at = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_at(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_at{n} = 'AT';
end
% =======================================================================================================

% membaca aksara Au
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\AU';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_au = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_au(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_au{n} = 'AU';
end
% =======================================================================================================

% membaca aksara Ba
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\BA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_ba = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ba(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ba{n} = 'BA';
end
% =======================================================================================================

% membaca aksara CHA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\CHA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_cha = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_cha(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_cha{n} = 'CHA';
end
% =======================================================================================================

% membaca aksara DA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\DA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_da = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_da(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_da{n} = 'DA';
end
% =======================================================================================================

% membaca aksara E
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\E';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_e = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_e(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_e{n} = 'E';
end
% =======================================================================================================

% membaca aksara EIG
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\EIG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_eig = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_eig(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_eig{n} = 'EIG';
end
% =======================================================================================================

% membaca aksara EIN
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\EIN';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_ein = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ein(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ein{n} = 'EIN';
end
% =======================================================================================================

% membaca aksara EIX
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\EIX';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target Au
target_eix = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_eix(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_eix{n} = 'EIX';
end
% =======================================================================================================

% membaca aksara EK
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\EK';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ek = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ek(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ek{n} = 'EK';
end
% =======================================================================================================

% membaca aksara Eng
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\ENG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_eng = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_eng(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_eng{n} = 'ENG';
end
% =======================================================================================================

% membaca aksara ga
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\GA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ga = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ga(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ga{n} = 'GA';
end
% =======================================================================================================

% membaca aksara I
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\I';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_i = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_i(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_i{n} = 'I';
end
% =======================================================================================================

% membaca aksara IEH
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IEH';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ieh = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ieh(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ieh{n} = 'IEH';
end
% =======================================================================================================

% membaca aksara IEM
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IEM';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_iem = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_iem(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_iem{n} = 'IEM';
end
% =======================================================================================================

% membaca aksara IENG
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IENG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ieng = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ieng(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ieng{n} = 'IENG';
end
% =======================================================================================================

% membaca aksara IL
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IL';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_il = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_il(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_il{n} = 'IL';
end
% =======================================================================================================

% membaca aksara IP
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IP';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ip = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ip(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ip{n} = 'IP';
end
% =======================================================================================================

% membaca aksara IR
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IR';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ir = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ir(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ir{n} = 'IR';
end
% =======================================================================================================

% membaca aksara IS
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IS';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_is = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_is(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_is{n} = 'IS';
end
% =======================================================================================================

% membaca aksara IT
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\IT';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_it = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_it(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_it{n} = 'IT';
end
% =======================================================================================================

% membaca aksara JA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\JA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ja = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ja(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ja{n} = 'JA';
end
% =======================================================================================================

% membaca aksara KA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\KA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ka = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ka(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ka{n} = 'KA';
end
% =======================================================================================================

% membaca aksara LA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\LA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_la = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_la(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_la{n} = 'LA';
end
% =======================================================================================================

% membaca aksara MA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\MA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ma = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ma(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ma{n} = 'MA';
end
% =======================================================================================================

% membaca aksara NA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\NA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_na = cell(jumlah_file, 1);

%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_na(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_na{n} = 'NA';
end
% =======================================================================================================

% membaca aksara NGA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\NGA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_nga = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_nga(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_nga{n} = 'NGA';
end
% =======================================================================================================

% membaca aksara NYA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\NYA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_nya = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_nya(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_nya{n} = 'NYA';
end
% =======================================================================================================

% membaca aksara O
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\O';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_o = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_o(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_o{n} = 'O';
end
% =======================================================================================================

% membaca aksara OH
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OH';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_oh = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_oh(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_oh{n} = 'OH';
end
% =======================================================================================================

% membaca aksara OI
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OI';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_oi = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_oi(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_oi{n} = 'OI';
end
% =======================================================================================================

% membaca aksara OK
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OK';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ok = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    % ciri_ok(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
      ciri_ok(n,:) = extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    %mengisis variabel target a dengan nama kelas a
    target_ok{n} = 'OK';
end
% =======================================================================================================

% membaca aksara OM
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OM';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_om = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_om(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_om{n} = 'OM';
end
% =======================================================================================================

% membaca aksara ONG
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\ONG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ong = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ong(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ong{n} = 'ONG';
end
% =======================================================================================================

% membaca aksara OP
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OP';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_op = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_op(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_op{n} = 'OP';
end
% =======================================================================================================

% membaca aksara OR
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OR';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_or = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_or(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_or{n} = 'OR';
end
% =======================================================================================================

% membaca aksara OUNG
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\OUNG';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_oung = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_oung(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_oung{n} = 'OUNG';
end
% =======================================================================================================

% membaca aksara PA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\PA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_pa = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_pa(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_pa{n} = 'PA';
end
% =======================================================================================================

% membaca aksara R
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\R';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_r = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_r(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_r{n} = 'R';
end
% =======================================================================================================

% membaca aksara RA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\RA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ra = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ra(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ra{n} = 'RA';
end
% =======================================================================================================

% membaca aksara SA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\SA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_sa = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_sa(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_sa{n} = 'SA';
end
% =======================================================================================================

% membaca aksara TA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\TA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ta = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ta(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ta{n} = 'TA';
end
% =======================================================================================================

% membaca aksara UL
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\UL';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ul = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ul(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ul{n} = 'UL';
end
% =======================================================================================================

% membaca aksara UN
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\UN';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_un = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_un(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_un{n} = 'UN';
end
% =======================================================================================================

% membaca aksara US
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\US';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_us = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_us(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_us{n} = 'US';
end
% =======================================================================================================

% membaca aksara UT
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\UT';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ut = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ut(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ut{n} = 'UT';
end
% =======================================================================================================

% membaca aksara UW
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\UW';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_uw = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_uw(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_uw{n} = 'UW';
end
% =======================================================================================================

% membaca aksara YA
% membaca citra 
nama_folder = 'D:\program\64 X64\data latih\YA';
nama_file = dir(fullfile(nama_folder,'*.jpeg'));
jumlah_file = numel(nama_file);

% menginisialisasi target 
target_ya = cell(jumlah_file, 1);
 
%melakukan pengolahan citra terhadap seluruh file
for n = 1:jumlah_file 
    % membaca citra
    Img = im2double (imread(fullfile(nama_folder,nama_file(n).name)));
    nama_file(n).name 
    % mengekstraksi ciri LBP dan mengisi variabel ciri_a dengan ciri hasil ekstarski
    ciri_ya(n,:) =  extractLBPFeatures(Img,'CellSize',[a b], 'Radius', radius);
    
    %mengisis variabel target a dengan nama kelas a
    target_ya{n} = 'YA';
end
% =======================================================================================================

% menyususn variabel ciri latih dan target latih
ciri_latih = [ciri_aa;ciri_a;ciri_ah;ciri_ak;ciri_al;ciri_am;ciri_an;ciri_ang;ciri_ao;ciri_ap;ciri_as;ciri_at;
              ciri_au;ciri_ba;ciri_cha;ciri_da;ciri_e;ciri_eig;ciri_ein;ciri_eix;ciri_ek;ciri_eng;
              ciri_ga;ciri_i;ciri_ieh;ciri_iem;ciri_ieng;ciri_il;ciri_ip;ciri_ir;ciri_is;ciri_it;
              ciri_ja;ciri_ka;ciri_la;ciri_ma;ciri_na;ciri_nga;ciri_nya;ciri_o;ciri_oh;ciri_oi;
              ciri_ok;ciri_om;ciri_ong;ciri_op;ciri_or;ciri_oung;ciri_pa;ciri_r;ciri_ra;ciri_sa;
              ciri_ta;ciri_ul;ciri_un;ciri_us;ciri_ut;ciri_uw;ciri_ya];
          
target_latih = [target_aa;target_a;target_ah;target_ak;target_al;target_am;target_an;target_ang;target_ao;target_ap;target_as;target_at;
                target_au;target_ba;target_cha;target_da;target_e;target_eig;target_ein;target_eix;target_ek;target_eng;
                target_ga;target_i;target_ieh;target_iem;target_ieng;target_il;target_ip;target_ir;target_is;target_it;
                target_ja;target_ka;target_la;target_ma;target_na;target_nga;target_nya;target_o;target_oh;target_oi;
                target_ok;target_om;target_ong;target_op;target_or;target_oung;target_pa;target_r;target_ra;target_sa;
                target_ta;target_ul;target_un;target_us;target_ut;target_uw;target_ya];

% melakukakn algoritam knn
Mdl = fitcknn(ciri_latih,target_latih,'NumNeighbors',knn);

% menyimpan variabel Mdl 
save Mdl Mdl
toc
