a = imread('D:\download.png')
subplot(2,3,1)
title('original Image');
imshow(a)

[m,n]=size(a);

for i=2:m-1
    for j=2:n-1
        d(i,j)=median([a(i-1,j+1),a(i,j+1),a(i+1,j+1);a(i-1,j),a(i,j),a(i+1,j);a(i-1,j-1),a(i,j-1),a(i+1,j-1)]);
    end
end
subplot(2,3,2)
title('Atter Mesian Filtering')
imshow(d)
