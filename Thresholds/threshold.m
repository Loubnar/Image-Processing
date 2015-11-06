function output = threshold(filename, value)
%% Appplies a threshold filter on the input image
%% Reading the image
img = imread(filename);
img = rgb2gray(img);
% Size of the image
[m,n] = size(img);
output = zeros(m,n);
%% Applying the filter
output(img >= value) = 255  
end

