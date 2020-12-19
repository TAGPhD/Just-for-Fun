
%RPGGame A simulation of a rpg battle 
% After choosing a character class, a random enemy will be chosen based on 
% class picked. Further emenies picked based on previous enemy.
% Enemy attacks cycle using a MC with transition matrix P, based only on 
% previous attack. Player attack strengths based on dice roll and attributes.
clear
clc;
player = menu('Choose a class:','Warlock: Magic user','Fighter: Proficient with swords','Rogue: Quick and sneaky');
ok = 0; eecount = 1; test_phrase = 'go north';
while ok == 0
	name=input('Choose a name:','s');
	ee = strcmp(name,test_phrase);
	if eecount==3
		disp('You are in a forest. You are lost.');disp(' ');
		name = 'Sheldon';
		ok = 1; 
	elseif ee == 1
		disp('You are not Sheldon. Try again.');disp(' ');
		eecount = eecount + 1;
	elseif ee == 0
		ok = 1;
	end
end

fprintf('Welcome, %s.\n\n',name);
pstats = playerstatget(player);
hp_base = pstats(1,1);
keys = 0;
if eecount == 3
	player = 4;
end

monsters(1:5) = 0;
monsters = monster_place(monsters); 
pause(3)
%P = transP;
				play_dare = introductionDM;
				if play_dare == 2
					player = 0;
				end

play_pos = 1;
if player > 0
    room_des(1);
end

%player = 0; keys = 5;

while player > 0
	enemy1= check_room(play_pos,monsters); 
	
	if enemy1 == 0
	play_pos = play_move(play_pos,keys);
	
	
	if play_pos == 1 && keys == 5			%To break out when game is beaten
		player = 0;
		break
	end
	room_des(play_pos); pause(3)

	enemy1= check_room(play_pos,monsters); 
	end

	

	
%	alone = find(monsters=play_pos);
%	if alone == 1
%		enemy1= check_room(play_pos,monsters); 
%		disp('alone!!!');
%	end
	

	
	if enemy1 > 0	
		enemy_stats = enemystatget(enemy1);

		battle = 1;
		count = 1;

		roll4 = unifrnd(0,1);
		if roll4 < .25
			first_attack = 1;
		elseif roll4 < .5
			first_attack = 2;
		elseif roll4 < .75
			first_attack = 3;
		else
			first_attack = 4;
		end
		prev_attack = first_attack;

	while battle == 1
		fprintf('Player health: %g \n\n',pstats(1,1));
		patk = menu('Choose a plan of action:','Physical attack','Special attack','Block','Rest (heal)');
		pattack(count) = patk;
		player_attack_dmg = p_attack(patk,player,pstats);
		dodge = rollk(3) - 1;
		player_attack_dmg = player_attack_dmg - (enemy_stats(1,5)*dodge);

		if player_attack_dmg < 0		% no negative attacks
			player_attack_dmg = 0;
		end
		if patk == 4
			heal = rollk(6) * 2;
			pstats(1,1) = pstats(1,1) + heal;
			fprintf('You healed by %g points.\n\n',heal);
		end
		fprintf('You dealt %g damage. \n\n',player_attack_dmg);
		enemy_stats(1,1) = enemy_stats(1,1) - player_attack_dmg; pause(3)
	
		if enemy_stats(1,1) < 1
			fprintf('Your enemy falls, and you emerge victorious. \n\n'); pause(3)
			keys = keys + 1;
			fprintf('You found a key! \n Current key count: %g \n\n',keys); 
			pause(3)

			if keys == 5
				fprintf('You have all the keys! Find your way back to the exit! \n\n'); pause(3)
			end

			monsters(enemy1) = 1;
			battle = 0;
			break;
		end
	
	
		attack(count) = enemy_attack(prev_attack);
		e_atck_dmg = enemy_atck_des(attack(count),enemy1,enemy_stats);
		dodge = rollk(3) - 1;
		e_atck_dmg = e_atck_dmg - (pstats(1,5)*dodge);

		if pattack(count) == 3	%take into account blocking
			roll = unifrnd(0,1);
			if roll < .9
				block = pstats(1,4);
				e_atck_dmg = e_atck_dmg - block;
			else
				fprintf('Your block fails, leaving you open to damage. \n\n');
			end
		end

		if e_atck_dmg < 0		% no negative attacks
			e_atck_dmg = 0;
		end
		fprintf('You take %g damage. \n\n',e_atck_dmg);
		pstats(1,1) = pstats(1,1) - e_atck_dmg; pause(3)

		if pstats(1,1) < 1
			fprintf('Overwhelmed, you lost the battle. Try again, %s. \n\n',name);
			player = 0;
			battle = 0; pause(3)
			break;
		end
		prev_attack = attack(count);
		count = count + 1;
		
	end		%while battle


if player == 0
	break
end

	
count = 1;
	
		pstats(1,1) = hp_base;		%Health restore
	

		fprintf('Congradulations, %s. Level up! \n\n',name);
		pstats = level_up(pstats,keys);
		hp_base = pstats(1,1);
		room_des(play_pos);

	
	end 		%if enemy1 > 0
%disp('out of enemy1 loop');
%%%%% Enemy moves

monsters = monster_move(monsters); disp('moved monsters');
	
end		%while player = 0

	
	
	
	
	
%	disp('out of player loop');
	
	
	
	if keys == 5
		fprintf('Back in the entrance room, you carefully insert all 5 keys \n');
		fprintf('and open the door. \n\n');
		fprintf('Congradulations, %s! You have beaten the game!\n\n',name);
	
	else
		fprintf('GAME OVER \n\n');
	end
