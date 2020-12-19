function [ ap ] = stationarydist_rpgattack (~,~)


roll4 = unifrnd(0,1);
		if roll4 < .25
			first_attack = 1;
		elseif roll4 < .5
			first_attack = 2;
		elseif roll4 < .75
			first_attack = 3;
		else
			first_attack = 4;
		end
		prev_attack = first_attack;
        a(1) = prev_attack;
        
for i = 2:10000
	current = a((i-1));
	a(i) = enemy_attack(current);
end


tabulate(a);


end