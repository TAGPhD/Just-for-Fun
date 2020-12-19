function [ pstats ] = level_up ( pstats,keys )


fprintf('Your stats: \n HP: %g \n Strength: %g \n Wisdom: %g \n Defense: %g \n Agility: %g \n\n',pstats(1,1),pstats(1,2),pstats(1,3),pstats(1,4),pstats(1,5));
fprintf('Inventory: \n Keys: %g \n\n',keys);

fprintf('You have 10 points to distribute.\n');
fprintf('One point to Health increases it by 5.\n\n'); pause(3)
points = 10;

while points > 0
	fprintf('Points left: %g \n\n',points);
	stat_up = menu('Pick a stat to level up:','Health','Strength','Wisdom','Defense','Agility');
	amount = input('How many points? ');
	clc;
	
	if amount > points
		fprintf('No cheating! \n\n');
	elseif stat_up == 1
		pstats(1,1) = pstats(1,1) + (amount*5);
		points = points - amount;
	else
		pstats(1,stat_up) = pstats(1,stat_up) + amount;
		points = points - amount;
	end	
		
	fprintf('Your stats: \n HP: %g \n Strength: %g \n Wisdom: %g \n Defense: %g \n Agility: %g \n\n',pstats(1,1),pstats(1,2),pstats(1,3),pstats(1,4),pstats(1,5));
	fprintf('Inventory: \n Keys: %g \n\n',keys);	

end

end

