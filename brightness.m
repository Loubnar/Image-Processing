function output = brightness(filename, value)
%% Increases/decreases the brightness of the image with the specified value
%% Reading the image
img = imread(filename);
%img = im2double(img);
% Size of the output image
[m,n,p] = size(img);
%% Applying the effect
output = img;
for i=1:m
    for j=1:n
        for k=1:p
            if(img(i,j,k) + value >= 255)
                output(i,j,k) = 255;
            elseif (img(i,j,k)+value <= 0)
                output(i,j,k) = 0;
            else
                output(i,j,k) = img(i,j,k) + value;
            end
        end
    end
end

%% Displaying the result
imshow(output);

end

