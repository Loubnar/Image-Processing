function bw = adaptive_thresholding(im,sz,threshold)
%% variables
% im        - input image of size NxM
% sz        - size of the window, from which threshold is estimated
% threshold - supplementary threshold

% bw        - output binary image

%% your implementation starts here

filter = fspecial('average',sz);
bw = imfilter(im, filter, 'replicate');
sub = bw - im;
sub = sub - threshold;
mask = im;
mask(find(sub > 0)) = 0;
mask(find(sub <= 0)) = 1;
bw = mask;
end