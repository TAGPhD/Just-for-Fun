function [ mp ] = stationarydist_rpg (~,~)


m = monster_place;
for i = 2:10000
	current = m((i-1),:);
	m(i,:) = monster_move(current);
end


tabulate(m(:,1));



end