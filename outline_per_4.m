%Returns the outline of a picture based 
%on 4-neigbours.

function [retval] = outline_per_4(input)

	A = imread(input);

	B = zeros(size(A,1), size(A,2) );

	for i = 2: size(A,1) - 1

		for j = 2: size(A,2) - 1

			if( A(i,j) == 1 & (A(i,j+1)==0 | A(i, j-1) == 0 | A(i-1,j) == 0 | A(i+1,j) == 0  ))
				B(i,j) = A(i,j);
			end
		end
	end

	retval = B;		

endfunction
