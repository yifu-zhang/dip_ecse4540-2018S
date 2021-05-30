%% hw3 solution
%% q1
% 1a
im = imread('pic/walk.png');
sob = [-1 0 1;-2 0 2;-1 0 1];
sob_im = filter2(sob, im);
imshow(sob_im, [])
% the vertical edge becomes obvious
% 1b
imshow(abs(sob_im)>200, [])
% most high abs response vertical edge keeps
imshow(abs(sob_im)>50, [])
% when threshold is 50, it appears and shows more vertical edges.
% 1c
sob_h = [-1 -2 -1;0 0 0;1 2 1];
sob_imh = filter2(sob_h, im);
imshow(sob_imh, []);
% it shows horizental edges
imshow(abs(sob_imh)>200, [])
% shows some high respones horizental edges
%% q2
% 2a
im = imread('pic/fuzzycat.png');
h = ones(5)/25;
out = filter2(h, im);
imshow(out, [0 255])
% becomes more blurred
% 2b
out_k1 = highboost(1, im);
out_k3 = highboost(3, im);
imshow(out_k3, [0 255])
% with highboost funciton, it is not that blurred anymore
%% q3
% 3a
im = imread('pic/boat.png');
im_3a = filter2(lp, im);
imshow(im_3a, [0 255])
% pic becomes more blurred
% 3b
im_3b = medfilt2(im, [5 5]);
imshow(im_3b)% we can find that the 3b image performs best
%% q5
% 5a
im = imread('pic/board.png');
filter = fspecial('gaussian',[19 19],3);
out = imfilter(im,filter,'replicate');
imshow(out, []);
% 5c
filter = gaussv(19,3);
out = imfilter(im, filter,'replicate');
imshow(out) % remove noise from a
% 5d
filter = gaussv(31,5);
out = imfilter(im, filter,'replicate');
imshow(out) % more blurred than c
% 5e
filter = gaussv(75,5);
out = imfilter(im, filter,'replicate');
imshow(out)