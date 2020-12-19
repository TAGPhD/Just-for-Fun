function [ play_dare ] = introductionDM (~)

fprintf('Welcome to the RPGGame Dungeon Master edition. \n');
fprintf('The goal of this game is to escape with your life. \n');
fprintf('Be beware, for monsters lurk here- and they each have something you need. \n');
fprintf('Play on- if you dare. \n\n');
pause(3)
	
	play_dare = menu('Do you dare?','Yes','Get me out of here!');
	
	if play_dare == 2
		fprintf('So be it. \n\n'); pause(3)
	else
		fprintf('Good luck on your journey... You will need it. \n\n');
		pause(3)
	end
		
	





end