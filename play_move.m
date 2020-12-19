function [ move ] = play_move (room,key)

flag = 0;

see_map=menu('Would you like to see the map?','yes','no');
if see_map == 1
    map = RPGmap(room);
end

if room == 1
	while flag == 0
	new_pos = menu('Which way do you wish to go?','West','East');
	if new_pos == 1 && key==5
		fprintf('You carefully insert all 5 keys and open the door. Congrats, you have survived the dungeon! \n\n');
		move = 1;
		flag = 1;
	elseif new_pos == 1
		fprintf('The exit door is still locked. Go collect the keys. \n\n');
	elseif new_pos == 2
		fprintf('You move cautiously into the next room. \n\n');
		move = 9;
		flag = 1;
	end
	end		%while
	

elseif room == 2
	new_pos = menu('Which way do you wish to go?','South','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 9;
	elseif new_pos == 2
		move = 3;
	end
	
	
	
elseif room == 3
	new_pos = menu('Which way do you wish to go?','West','South','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 2;
	elseif new_pos == 2
		move = 8;
	elseif new_pos == 3
		move = 4;
	end

elseif room == 4
	new_pos = menu('Which way do you wish to go?','West','South','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 3;
	elseif new_pos == 2
		move = 7;
	elseif new_pos == 3
		move = 5;
	end

elseif room == 5
	new_pos = menu('Which way do you wish to go?','West','South');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 4;
	elseif new_pos == 2
		move = 6;
	end
	
elseif room == 6
	new_pos = menu('Which way do you wish to go?','North','West');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 5;
	elseif new_pos == 2
		move = 7;
	end
	
elseif room == 7
	new_pos = menu('Which way do you wish to go?','North','West','South','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 4;
	elseif new_pos == 2
		move = 8;
	elseif new_pos == 3
		move = 14;
	elseif new_pos == 4
		move = 6;
	end
	
elseif room == 8
	new_pos = menu('Which way do you wish to go?','North','West','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 3;
	elseif new_pos == 2
		move = 9;
	elseif new_pos == 3
		move = 7;
	end
	
elseif room == 9
	new_pos = menu('Which way do you wish to go?','North','West','South','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 2;
	elseif new_pos == 2
		move = 1;
	elseif new_pos == 3
		move = 10;
	elseif new_pos == 4
		move = 8;
	end
	
elseif room == 10
	new_pos = menu('Which way do you wish to go?','North','South');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 9;
	elseif new_pos == 2
		move = 11;
	end
	
elseif room == 11
	new_pos = menu('Which way do you wish to go?','North','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 10;
	elseif new_pos == 2
		move = 12;
	end
	
elseif room == 12
	new_pos = menu('Which way do you wish to go?','West','East');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 11;
	elseif new_pos == 2
		move = 13;
	end
	
elseif room == 13
	new_pos = menu('Which way do you wish to go?','North','West');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 14;
	elseif new_pos == 2
		move = 12;
	end
	
elseif room == 14
	new_pos = menu('Which way do you wish to go?','North','South');
	fprintf('You move cautiously into the next room. \n\n');
	if new_pos == 1 
		move = 7;
	elseif new_pos == 2
		move = 13;
	end
	
end



end