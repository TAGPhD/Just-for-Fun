function [ attack ] = enemy_attack ( prev_attack )

P_Eattack = [.4 .4 .15 .05; .4 .4 .15 .05; 0 0 0 1; .4 .35 .2 .05];

currentP = P_Eattack (prev_attack,:);

P1 = currentP(1,1); P2 = currentP(1,2); P3 = currentP(1,3); P4 = currentP(1,4);

move = unifrnd(0,1);
if move < P1
	attack = 1;
elseif move < P2+P1
	attack = 2;
elseif move < P1+P2+P3
	attack = 3;
else
	attack = 4;
end



end
