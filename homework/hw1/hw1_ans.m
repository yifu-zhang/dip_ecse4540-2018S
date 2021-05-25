%% homework 1 solution
%% 1a
im = 60*ones(500,500);
imshow(im, [0 255])
%% 1b
A = [255* ones(500,2), zeros(500,2)];
im = repmat(A, 1, 125);
imshow(im, [0 255])
%% 1c
im = [32*ones(500,255), 200*ones(500,255)];
imshow(im, [0 255])
%% 1d
im = ([0:499]/2)'*ones(1,500);
imshow(im, [0 255])
%% 1e using function meshgrid
[y, x] = meshgrid(0:499, 0:499);
I = 255*exp(-(((x-64).^2+(y-64).^2)/(200.^2)));
imshow(uint8(I), [0 255])
%% 1f
im = ones(500,500,3);
im(256:500,:,2) = 0;
im(:,256:500,1) = 0;
imshow(im)