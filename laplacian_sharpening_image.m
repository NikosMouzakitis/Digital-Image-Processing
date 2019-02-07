%%	 Digital Image Processing.

pkg load image 

A = imread('moon.tiff');
figure(1)
imshow(A);
[n m] = size(A);

B = zeros(n,m);

%%	important turn it on double to avoid         
%%	loose information in the forthcoming process.
A = (double) (A);
for i = 2 : n-1
	for j = 2 : m-1
		B(i,j) = A(i+1,j) + A(i-1,j) + A(i,j+1)+A(i,j-1) -4*A(i,j);
	endfor
endfor

figure(2)
imshow((uint8)(B), []);

%% from the original image we do substract the laplacian 
%% calculated to get a 'sharper' image.
figure(21)
imshow( (uint8) (A - B));
