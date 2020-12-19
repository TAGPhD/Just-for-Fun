function [ damage ] = p_attack ( patk,player,pstat )
% p_attack Summary of this function goes here
%   Detailed explanation goes here


if patk == 1		% Physical attack; strength
	dmg = pstat(1,2);
	roll = rollk(4);
	dmg = dmg + roll;
	if player == 1
		fprintf('You swing at your enemy with your magic \n');
		fprintf('long staff. \n\n');
	elseif player == 2
		fprintf('Your mighty sword slices the air as it heads \n');
		fprintf('for your enemy. \n\n');
	elseif player == 3
		fprintf('With several quick jabs of your knife, you \n');
		fprintf('lash out at your enemy. \n\n');
	elseif player == 4
		fprintf('hit troll with axe \n\n');
	end
elseif patk == 2		% Special attack, wisdom
	dmg = pstat(1,3);
	roll = rollk(4);
	dmg = dmg + roll;
	if player == 1
		fprintf('Murmuring a spell, a bolt of magic shoots \n');
		fprintf('from your hands, rocketing toward your \n');
		fprintf('enemy. \n\n');
	elseif player == 2
		fprintf('Snagging a small bottle from your belt, you \n');
		fprintf('throw it at your enemy. It shatters with a \n');
		fprintf('loud explosion. \n\n');
	elseif player == 3
		fprintf('Making several hand gestures, a short-lived \n');
		fprintf('but hot spell fire envelops your enemy. \n\n');
	elseif player == 4
		fprintf('carry bucket of mud past dragon \n\n');
	end
elseif patk == 3		% Block
	dmg = 0;
	if player == 1
		fprintf('A few arcane words produce a spell shield, \n');
		fprintf('protecting you for a turn. \n\n');
	elseif player == 2
		fprintf('Lifting your shield, you place it between you \n');
		fprintf('and danger. \n\n');
	elseif player == 3
		fprintf('Throwing a smoke bomb, you are obscured \n');
		fprintf('from view, making you hard to hit. \n\n');
	elseif player == 4
		fprintf('drop ax \n\n');
	end
elseif patk == 4		% Rest 
	dmg = 0;
	fprintf('Taking a step back and a deep breath, you \n');
	fprintf('recover some health. \n\n');
end

damage = dmg;

end


