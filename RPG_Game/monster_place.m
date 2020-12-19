function [ mon ] = monster_place( ~ )
%moveking Summary of this function goes here
%   Detailed explanation goes here

position(1:14) = 0;

for m = 1:5
	flag = 0;
	while flag == 0
	room= rollk(14);
	if (position(room) == 0) && (room ~= 1)
		position(room) = m;
		mon(m) = room;
		flag = 1;
	end
	end
end
	
	

    
    
end

