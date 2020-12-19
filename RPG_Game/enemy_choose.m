function [ enemy_nxt ] = enemy_choose ( prev_enemy )


P = [.1 .3 .2 .2 .2; .2 .1 .2 .4 .1; .3 .1 .1 .3 .2; .1 .4 .1 .1 .3; .1 .2 .4 .2 .1];

currentP = P(prev_enemy,:);

P1 = currentP(1,1); P2 = currentP(1,2); P3 = currentP(1,3); P4 = currentP(1,4);

nextE = unifrnd(0,1);
if nextE < P1
	enemy_nxt = 1;
elseif nextE < P2+P1
	enemy_nxt = 2;
elseif nextE < P1+P2+P3
	enemy_nxt = 3;
elseif nextE < P1+P2+P3+P4
	enemy_nxt = 4;
else
	enemy_nxt = 5;
end


end

