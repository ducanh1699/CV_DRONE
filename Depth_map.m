clc, clear, close all;
% read image
imgLeft = imread('001_L.png');
imgRight = imread('001_R.png');

L1 = rgb2gray(imgLeft);
R1 = rgb2gray(imgRight);

disparityRange = [0 160];
disparityMap = disparity(L1,R1, 'DisparityRange', disparityRange, 'BlockSize', 5,'UniquenessThreshold',30);

figure
imshow(disparityMap, disparityRange);
%subplot(1,3,1), imshow(img_L), title('Left Image');
%subplot(1,3,2), imshow(img_R), title('Right Image'); 
%subplot(1,3,3), imshow(disparityMap, disparityRange), title('Disparity Image'); 
colormap(gca,jet)
colorbar

imwrite(disparityMap,'Depth_Map.png');
