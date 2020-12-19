function [ out ] = room_des (room)

if room == 1			%%							       %
	fprintf('You are standing in the first room of the dungeon. To the West \n');
	fprintf('is a locked door- the exit. It requires 5 keys to open. \n');
	fprintf('To the East is the only other door, which leads further into the \n');
	fprintf('dungeon. \n\n');

elseif room == 2		%%							       %
	fprintf('A dark pit takes up the center of the room. Leaning over it, you \n');
	fprintf('are unable see the bottom. You decide to stick close to the walls.\n');
	fprintf('To the East is a crumbly doorway, and to the South is the door to \n');
	fprintf('the bright room. \n\n');

elseif room == 3		%%							       %
	fprintf('Oddly enough, the floor of this room is wooden, unlike the stone \n');
	fprintf('of all the other rooms. It creaks when you walk on it, but holds.\n');
	fprintf('The doorway to the West is crumbly, while two plain wooden \n');
	fprintf('doors adorn the South and East walls. \n\n');

elseif room == 4		%%							       %
	fprintf('Old, rotting wooden boxes are stacked haphazardly against the \n');
	fprintf('North wall. Bits of broken wood on the floor bear testament to \n');
	fprintf('the boxes that had fallen and shattered. \n');
	fprintf('A wooden door to the West, a door with a red glow to the South, \n');
	fprintf('and a tattered cloth covered doorway to the East. \n\n');

elseif room == 5		%%							       %
	fprintf('Immediately, you are dazzled by the light relfecting off the \n');
	fprintf('thousands of jewels embedded in the walls. You reach out to \n');
	fprintf('take one- and receive a nasty shock that leaves your hand \n');
	fprintf('numb for a few mintues. \n');
	fprintf('The cloth covered doorway lies to the West, and partially open \n');
	fprintf('door lies to the South. The South door, you discover upon \n');
	fprintf('inspection, is stuck. It will neither close nor open further.  \n\n');
	
elseif room == 6		%%							       %
	fprintf('As you step into the room, your breath billows into a cloud \n');
	fprintf('before you. Begining to shiver, you take note of the ice coating \n');
	fprintf('the floor and walls. \n'); 
	fprintf('You can see a propped open door to the North, and a glowing \n');
	fprintf('red door to the West. \n\n');

elseif room == 7		%%							       %
	fprintf('A disturbing red glow emminates from some unknown source. \n');
	fprintf('It makes you feel uneasy. \n');
	fprintf('The are doors to the North, South, East and West. They all \n');
	fprintf('appear to be made of red wood, but that might just be the light. \n\n');

elseif room == 8		%%							       %
	fprintf('Scattered across the floor are the remains of what you suspect \n');
	fprintf('had been a treasure chest. Scanning the pieces, you see \n');
	fprintf('nothing of use. \n');
	fprintf('West of you is the door to the bright room; the North wall has a \n');
	fprintf('wooden door, and to the East some red light peeks through the \n');
	fprintf('crack beneath the door. \n\n');

elseif room == 9		%%							       %
	fprintf('The room is brightly lit by a large candle chandelier, though the \n');
	fprintf('light does not quite illuminate the ceiling or corners. \n');
	fprintf('To the West is the door that leads back to the exit. There are \n');
	fprintf('also doorways to the North, East and South. The South door \n');
	fprintf('has broken off its hinges, laying on the floor.  \n\n');

elseif room == 10		%%							       %
	fprintf('When you step into the room, your boot slides, almost landing \n');
	fprintf('you on your face. The floor is covered in a couple inches of some \n');
	fprintf('sort of dark, smelly liquid. \n');
	fprintf('North of you is the doorway with the broken door on the floor, \n');
	fprintf('and to the South is a dark, empty doorway.  \n\n');

elseif room == 11		%%							       %
	fprintf('This room... is boring. You yawn as you look around. \n');
	fprintf('A dark, empty doorway lies to the North, and an equally dark \n');
	fprintf('and empty doorway leads off to the East. \n\n');

elseif room == 12		%%							       %
	fprintf('The first thing to catch your eye is the skeleton lying in the center \n');
	fprintf('of the room. It... does not seem to be human. \n');
	fprintf('The dark and empty doorway to the West and the rusty metal \n');
	fprintf('door to the East are your only exit options.  \n\n');
	
elseif room == 13		%%							       %
	fprintf('This room is small, hardly more than a connecting hallway. \n');
	fprintf('Standing in the middle, you can almost touch the opposite walls \n');
	fprintf('at the same time. \n');
	fprintf('A rusty metal door is to the West, and an empty doorway lies to \n');
	fprintf('the North. \n\n');

elseif room == 14		%%							       %
	fprintf('No laterns or glowing moss adorn this room, making it hard to see. \n');
	fprintf('The darkness is thick and unnerving. \n');
	fprintf('There is an empty doorway to the South and a glowing red door \n');
	fprintf('to the North. \n\n');


end



end