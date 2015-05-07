%1
ima = imread('c.jpg');
gray = rgb2gray(ima);
imshow(gray);
gray2 = uint8(mean(ima,3));
imshow(gray2);

%2
n = 32;
[IND,map] = rgb2ind(ima,32);
imagesc(IND);
colormap(map);

%3
colormap('jet');

%4
n = 32;
ima = imread('c.jpg');
gray = rgb2gray(ima);
[X, map] = gray2ind(gray,n);

%5
ima2 = im2double(ima);
h1 = [.1 .1 .1;.1 .2 .1; .1 .1 .1];
h2 = [0 -.25 0; -.25 2 -.25; 0 -.25 0];
h3 = eye(15)/15;
h4 = ones(15,15)/255;
h5 = [.4 .5 .6;.7 .8 .9;.1 .2 .3];
f1 = filter2(h5,ima2(:,:,1),'same');
f2 = filter2(h5,ima2(:,:,2),'same');
f3 = filter2(h5,ima2(:,:,3),'same');
fil = cat(3,f1,f2,f3);
figure;
imshow(fil);
