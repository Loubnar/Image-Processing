function output = threshold(filename, value)
%% Appplies a threshold filter on the input image
%% Reading the image
img = imread(filename);
img = rgb2gray(img);
% Size of the image
[m,n] = size(img);
output = zeros(m,n);
%% Applying the filter
% Very naive loop on output elements
for i=1:m
   for j=1:n
       if (img(i,j)<value)
           % Setting to black pixels smaller than specified value
           output(i,j) = 0;
       else
           % Setting to white pixels greater than specified value
           output(i,j) = 1;
       end
   end
end
%% Alternative technique
%output(find(img>value)) = 1;   
%output(find(img<=value)) = 0;   
end

