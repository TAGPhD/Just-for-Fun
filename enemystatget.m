function [ stats ] = enemystatget( enemy_num )
%enemystatget Summary of this function goes here
%   Detailed explanation goes here

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


if enemy_num == 1
    agl = agl + 2;
    mp = mp - 2;
elseif enemy_num == 2
    agl = agl + 1;
    mp = mp - 2;
    stg = stg + 1;
elseif enemy_num == 3
    agl = agl + 2;
    def = def - 2;
elseif enemy_num == 4
	agl = agl + 1;
	mp = mp + 1;
	def = def - 2;
elseif enemy_num == 5
	mp = mp + 2;
	stg = stg - 2;
end
    

    
    if hp < 15
    	hp = hp + 10;
    end
    
    
stats = [hp stg mp def agl];


end

