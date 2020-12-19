function [ mon ] = monster_move( pos )
%moveking Summary of this function goes here
%   Detailed explanation goes here

position(1:14) = 0;

for i = 1:5
	room = pos(i);
	if room > 0
	position(room) = i;
	end
end
	

for m = 1:5	
	
	flag = 0; count = 0;
	while flag == 0
	room= pos(m); 

	room2 = transP(room);

	
	
	if room2 == 1
		mon(m) = room2;
		flag = 1;
	elseif (position(room2) == 0)
		position(room2) = m;
		position(room) = 0;
		mon(m) = room2;
		flag = 1;
	else 
		count = count + 1;
		if count == 3		% Prevent inf loop is monster boxed in
			mon(m) = room;
			flag = 1;
		end
	end		%if position room2

	end		%while
end
    
mon
    
end

