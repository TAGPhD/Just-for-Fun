function [ enemy_num ] = check_room (room,monsters)

enemy_num = 0;
%while flag == 0
if room ~= 1
for i = 1:5
if monsters(i) == room
	enemy_num = i;
	enemy_descripDM (enemy_num); pause(3)
%	flag = 1;
	break
end	%if
end	%for
%end	%while
end 		% if room != 1

if enemy_num == 0
	fprintf('You see that there are no enemies in this room. \n\n');
end






end
