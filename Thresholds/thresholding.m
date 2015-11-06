function bw = thresholding(im,nbins)
%% variables
% im    - input image of size NxM
% nbins - number of bins in the histogram

% bw    - output binary image
%%
[counts,x] = imhist(im,nbins);
p = zeros(1, nbins);
w1 = zeros(1, nbins);
mu1 = zeros(1, nbins);
w2 = zeros(1, nbins);
mu2 = zeros(1, nbins);
f = zeros(1, nbins);
pii = [];
for i=1:nbins
    p(i) = counts(i) / sum(counts(:));
    pii = [pii p(i)*i];
end
for t=1:nbins
    w1(t) = sum(p(1:t));
    mu1(t) = sum(pii(1:t)) / w1(t);
    w2(t) = 1 - w1(t);
    mu2(t) = (sum(pii(:)) - sum(pii(1:t))) / w2(t);
    f(t) = w1(t)*w2(t)*((mu1(t) - mu2(t))^2);
end
[val,t] = max(f)
thresh = (t - 1)/(nbins - 1)
bw = im;
find(im>thresh);
bw(find(im>thresh)) = 1;
bw(find(im<=thresh)) = 0;


