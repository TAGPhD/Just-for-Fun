function [ stats ] = playerstatget (player_num)

twntyD = rollk(20);
hp = 3*twntyD;

sxD = rollk(6);
stg = 2*sxD;

sxD = rollk(6);
mp = 2*sxD;

sxD = rollk(6);
def = 2*sxD;

sxD = rollk(6);
agl = 2*sxD;

hp = hp +20;

if player_num == 1 
	mp = mp + 4;
	stg = stg - 2;		
	if mp < stg		%switch stats so make sense for character
		swch = mp;
		mp = stg;
		stg = swch;
	end
	fprintf('You chose warlock. Your stats: \n HP: %g \n Strength: %g \n Wisdom: %g \n Defense: %g \n Agility: %g \n',hp,stg,mp,def,agl);
elseif player_num == 2
	stg = stg + 3;
	def = def + 1;
	agl = agl - 1;
	mp = mp - 1;
	if mp > stg		%switch stats so make sense for character
		swch = mp;
		mp = stg;
		stg = swch;
	end
	fprintf('You chose fighter. Your stats: \n HP: %g \n Strength: %g \n Wisdom: %g \n Defense: %g \n Agility: %g \n',hp,stg,mp,def,agl);
elseif player_num == 3
	agl = agl + 3;
	mp = mp + 1;
	def = def - 2;
	fprintf('You chose rogue. Your stats: \n HP: %g \n Strength: %g \n Wisdom: %g \n Defense: %g \n Agility: %g \n\n',hp,stg,mp,def,agl);
end	
	
	

stats = [hp stg mp def agl];



end