function [ room ] = transP( k )
% transP Summary of this function goes here
%   Detailed explanation goes here

if k == 1
	room = 1;
elseif k == 2
	test = rollk(2);
	if test == 1
		room = 3;
	else
		room = 9;
	end
elseif k == 5
	test = rollk(2);
	if test == 1
		room = 4;
	else
		room = 6;
	end
elseif k == 6
	test = rollk(2);
	if test == 1
		room = 5;
	else
		room = 7;
	end
elseif k == 10
	test = rollk(2);
	if test == 1
		room = 9;
	else
		room = 11;
	end
elseif k == 11
	test = rollk(2);
	if test == 1
		room = 10;
	else
		room = 12;
	end
elseif k == 12
	test = rollk(2);
	if test == 1
		room = 11;
	else
		room = 13;
	end
elseif k == 13
	test = rollk(2);
	if test == 1
		room = 12;
	else
		room =14;
	end
elseif k == 14
	test = rollk(2);
	if test == 1
		room = 7;
	else
		room = 13;
	end
elseif k == 3
	test = rollk(3);
	if test == 1
		room = 2;
	elseif test == 2
		room = 4;
	else
		room = 8;
	end
elseif k == 4
	test = rollk(3);
	if test == 1
		room = 3;
	elseif test == 2
		room = 5;
	else
		room = 7;
	end
elseif k == 8
	test = rollk(3);
	if test == 1
		room = 3;
	elseif test == 2
		room = 7;
	else
		room = 9;
	end
elseif k == 7
	test = rollk(4);
	if test == 1
		room = 4;
	elseif test == 2
		room = 6;
	elseif test == 3
		room = 8;
	else
		room = 14;
	end
elseif k == 9
	test = rollk(3);
	if test == 1
		room = 10;
	elseif test == 2
		room = 2;
	else
		room = 8;
	end
end
	
	



end
