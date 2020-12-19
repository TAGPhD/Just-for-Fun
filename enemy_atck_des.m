function [ damage ] = enemy_atck_des( attack,enemy,estat )
% enemy_atck_des Summary of this function goes here
%   Detailed explanation goes here

if attack == 1		% Physical attack; strength
	dmg = estat(1,2);
	roll = rollk(4);
	dmg = dmg + roll;
	if enemy == 1
		fprintf('The bandit swipes at you with his fist. \n\n');
	elseif enemy == 2
		fprintf('With a snarl, the wolf moves to bite you. \n\n');
	elseif enemy == 3
		fprintf('Abruptly, the bat dives at you, fangs gleeming. \n\n');
	elseif enemy == 4
		fprintf('A giant, hairy leg swings at you. \n\n');
	elseif enemy == 5
		fprintf('The elemental reaches for you with firey hands. \n\n');
	end
elseif attack == 2		% Special attack, wisdom
	dmg = estat(1,3);
	roll = rollk(4);
	dmg = dmg + roll;
	if enemy == 1
		fprintf('The bandit pulls out a small dagger, flinging it at you. \n\n');
	elseif enemy == 2
		fprintf('The wolf howls, a harsh sound that grates on your sanity. \n\n');
	elseif enemy == 3
		fprintf('A piercing screech forces you to cover your ears. \n\n');
	elseif enemy == 4
		fprintf('From the darkness above you, a small amount of gooey web \n');
		fprintf('flies down. \n\n');
	elseif enemy == 5
		fprintf('Taking careful aim, the elemental throws a ball of fire at you. \n\n');
	end
elseif attack == 3		% Big attack strength + wisdom
	dmg = estat(1,2) + estat(1,3);
	if enemy == 1
		fprintf('With a desperate lunge, the bandit hurls toward you, \n');
		fprintf('getting in several good hits. \n\n');
	elseif enemy == 2
		fprintf('Barreling toward you, the wolf swipes at you with sharp \n');
		fprintf('claws before biting hard. \n\n');
	elseif enemy == 3
		fprintf('Landing on your face, the bat scratches at you with claws \n');
		fprintf('and teeth. \n\n');
	elseif enemy == 4
		fprintf('With two huge legs, the spider lifts you up. Squirming, you \n');
		fprintf('manage to get free, and fall a long distance to the ground. \n\n');
	elseif enemy == 5
		fprintf('The elemental abruptly glows brighter, and suddenly a wave \n');
		fprintf('of fire rolls at you. \n\n');
	end
elseif attack == 4		% Rest 
	dmg = 0;
	fprintf('Exhausted from their last attack, your enemy rests a turn. \n\n');
end

damage = dmg;

end

