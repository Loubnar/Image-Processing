function output = negative(filename)
%% Transforms the input image into its negative
%% Reading the image
img = imread('lena.jpg');
% Size of the image
[m,n,p] = size(img);
%% Applying the filter
output = img; % This fixes problems of conversion before display
%% Applying the filter on the three channels of the image
%% Red channel
output(:,:,1) = 255 - img(:,:,1);
%% Green channel
output(:,:,2) = 255 - img(:,:,2);
%% Blue channel
output(:,:,3) = 255 - img(:,:,3);
%% Display
% imshow(output);
end

