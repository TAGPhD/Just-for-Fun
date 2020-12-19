function [ out ] = enemy_descripDM (enemy_num)

if enemy_num == 1								%
	fprintf('A man- another explorer- leaps from the shadows on your \n');
	fprintf('left. He demands you hand over your gold and keys \n');
	fprintf('or pay with your life. Teach him not to mess with you. \n\n');

elseif enemy_num == 2								%
	fprintf('Footsteps come from an adjoining room. A howl echoes, \n');
	fprintf('bouncing off the stone walls, making you feel nervous. \n');
	fprintf('Several moments later, a large gray wolf steps into the room, \n');
	fprintf('eyes trained on you. \n\n');

elseif enemy_num == 3								%
	fprintf('As you take in the sight of the room, a dark shape swoops \n');
	fprintf('at you, then away. When it dives at you a second time, you \n');
	fprintf('see that it is a bat. It flutters around you, getting too close \n');
	fprintf('for comfort. \n\n');

elseif enemy_num == 4								%
	fprintf('There is something off about this room, but you are not sure \n');
	fprintf('what. Feeling the hair stand up on the back of your neck, you \n');
	fprintf('look up into the shadows coating the ceiling. One of the \n');
	fprintf('shadows descends- an enormous spider, reaching toward you \n');
	fprintf('with too many legs... \n\n');

elseif enemy_num == 5								%
	fprintf('A small rock on the side of the room catches your eye. It \n');
	fprintf('suddenly catches fire, the flame about it growing rapidly. In \n');
	fprintf('seconds, a fire elemental stands before you, blocking \n');
	fprintf('your path. \n\n');

end



end