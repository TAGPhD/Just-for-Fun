function [ roll ] = rollk( k )
% rollk Summary of this function goes here
%   Detailed explanation goes here
%k = 3;
test = unifrnd(0,1);
%test = .8;
flag = 0;

while flag == 0
	for i = 1:(k)
		if test < (i/(k))
			roll = i;
			flag = 1;
			break
		end
	end
end



end