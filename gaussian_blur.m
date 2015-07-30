function output = gaussian_blur(filename, sigma)
%% Appplies a gaussian blur filter on the input image

%% Reading the image
img = imread(filename);
img = im2double(img);
% Size of the image
[m,n] = size(img);

%% Building the filter
% Sigma is the intensity of the blur specified by the user
filter = fspecial('gaussian', [m n], sigma); 

%% Applying the filter
% The 'replicate' parameter is there to fix the black borders effect
output = imfilter(img, filter, 'replicate');

end


