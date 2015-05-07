function hw2(m)
ima = imread('banana.jpg');
crop = size(ima);
X = ima(1:(crop(1)-mod(crop(1),m)) , 1:(crop(2)-mod(crop(2),m)) , :);
n = size(X,1);
for i = 1:m:n
    for j = 1:m:n
        temp = X( i:i+m-1 , j:j+m-1 ,:);
        meanval = mean(mean(temp));
        meanval = round(meanval/51)*51;
        X(i:i+m-1 , j:j+m-1 , :) = repmat(meanval,m,m);
    end
end
imshow(X);
imwrite(X,'mos.bmp');
end