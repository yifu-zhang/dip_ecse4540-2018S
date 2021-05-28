%% homework2 solution
%% q1
im1 = [zeros(128,128), 128*ones(128,128); 255*ones(128,256)];
im2 = [255*ones(128,256); zeros(128,128), 128*ones(128,128)];
im3 = [255*ones(256, 128),[zeros(128,128); 128*ones(128,128)]];
im4 = [[zeros(128,128); 128*ones(128,128)], 255*ones(256, 128)];
% No, suppose the pixel in the centre of image and taking im1 for example, after averaging filter, it will contribute to new intensity which is not any of 0,128,255. So there will be a new histogram
%% q2
% f(D) = 2D - 150, largest intensity map to 0 is 75.
% smallest intensity map to 255 is 202.5
%% q3
% the solutoin to q3 should be integral of 2n+1 from 0 to 100 divide from 0
% to 255, the value is 0.155*255 = 39.5
%% q4
% I can see some birds in some blocks
% differ: local is equalization by 80*80 block while global is equalized by
% whole image
%% q5
% a - b
[im, format] = imread('baby_shark.png');
im_a = imrotate(im, -30);
im_ab = flipdim(im_a,1);
imshow(im_ab,format);
% b - a
im_b = flipdim(im, 1);
im_ba = imrotate(im_b, -30);
imshow(im_ba, format);
% not the same result
%% q6
A = [1/2, -1; 1/2, 1/2];
b = [1/2; 0];