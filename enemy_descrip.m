function [ out ] = enemy_descrip (enemy_num)

if enemy_num == 1
	fprintf('While traveling through a dense forest, a man leaps from the shadows on your left. He demands you hand over your gold,\n');
	fprintf('or pay with your life. Teach him not to mess with you. \n\n');

elseif enemy_num == 2
	fprintf('The forest path is dark, despite the midday sun. A howl echoes through the trees, making you feel nervous. \n');
	fprintf('Several moments later, a large gray wolf slides out from between the trees, eyes trained on you. \n\n');

elseif enemy_num == 3
	fprintf('You travel down the well worn wagon road, lit by the full moon. Clusters of trees nearby hide many things from sight, including dark,\n');
	fprintf('cavernous caves. A bat swoops down on you unexpectedly. It continues to flutter around you, getting too close for comfort. \n\n');

elseif enemy_num == 4
	fprintf('After the sun sets, you make camp under a huge tree. It looms over you and your small fire, protecting you from the light rainfall. \n');
	fprintf('The fire casts shadows on the ground and on the canopy of leaves above. One of the shadows descends- an enormous spider, \n');
	fprintf('reaching toward you with too many legs... \n\n');

elseif enemy_num == 5
	fprintf('The only path through the craggy hills was wide and open, with no hiding places suitablefor thieves to ambush travelers. Despite \n');
	fprintf('this, no other souls travel on the road with you. A small rock on the side of the road catches your eye. It suddenly catches fire, \n');
	fprintf('the flame about it growing rapidly. In seconds, a fire elemental stands before you, blocking your path. \n\n');

end



end