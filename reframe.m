function output = reframe(filename, top, right, bottom, left)
%% Cuts the number of pixels specified by the user from top, right, bottom, and left
%% Reading the image
img = imread(filename);
img = im2double(img);
% Size of the output image
[m,n,p] = size(img);
%% Info 
disp(['The original size of the image is : ' int2str(m) ' x ' int2str(n)]);
if (top + bottom >= m || right + left >= n)
    disp('Specified values exceed size');
    return;
end
%% Creating the new image
new_m = m - top - bottom;
new_n = n - right - left;
output = zeros(new_m, new_n, 3);
output = img(top+1:m-bottom,left+1:n-right,:);
%% Displaying the result
disp(['The new size of the image is : ' int2str(new_m) ' x ' int2str(new_n)]);
imshow(output);
end

