 "Jack" by Jason Lautzenheiser

Volume - Bibliography

The story genre is "Horror".
The story headline is "A Halloween Story".
The release number is 2.
The story creation year is 2013.

Volume - Extensions

Include Supplemental Actions by Al Golden.
[Include Plurality by Emily Short.]

Volume - Extensions (not for release)

[Include Property Checking by Emily Short.]
[Include Direction Response Testing by Andrew Schultz.]
[Include Object Response Tests by Juhana Leinonen.]
 Include Response Assistant by Aaron Reed.

Use no scoring and full-length room descriptions. 
Use American dialect.

Volume - Release

Release along with cover art.

Volume - Game Settings

Book - Credits

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand  the command "credits" or "info" as "about".

Report abouting:
	say "[Story Title] was created originally for the EctoComp13 and was created in under 3 hours in Inform 7.  Inform 7 is the work of Graham Nelson.  The first release was quickly beta-tested by my son Trey Lautzenheiser, who doesn't normally play IF, but offered some valuable advice.  I've since expanded the game into something a bit more fleshed out.  Hope you enjoy.  
	
It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.
	
Any bug reports or suggestions are welcome and can be emailed to lautzenheiser.jason@gmail.com.   

Check out my IF related blog at lautzofif.wordpress.com."

Book - Uberstart

The uberstart rules are a rulebook.
After printing the banner text, say "Copyright © 2013 - 2015, Jason Lautzenheiser."
The time of day is 11:00 PM.

When play begins:
	say "Suddenly awareness comes to you and your surroundings.  You look around slowly, seeing nothing at first, then in the moon light you find yourself in the middle of a pumpkin patch.   Looking down at your feet you see straw coming out of the bottom of your pants and fallling over your boots.  In wonderment you notice your hands for the first time and see straw coming out of your sleeves as well.  As you stare at your hands you notice a strange glow seemingly coming from within you.  You start to run your fingers through your hair only to realize you have none.  As you stand there in shock over what you've become you realize you have nothing but vague memories of a time before the pumpkin patch.  You look around and see large pumpkins that seem to have the same shape as your head.  It all comes flooding back to you.....you are Jack....Jack Halloween.";
	follow the uberstart rules.
	
An uberstart rule:
	now the left hand status line is "[the player's surroundings] / Moves: [turn count] ";
	now the right hand status line is "Time: [time of day]";
	now the player is in The-Pumpkin-Patch;


Book - Definitions

A person can be hiding.
A person can be conscious or unconscious.  A person is usually conscious.
A person can be alive or dead.  A person is usually alive.
A thing can be throwable.
A thing can be seen or unseen. A thing is usually unseen. The player is seen. After printing the name of something (called target): now the target is seen.

Rule for printing room description details: do nothing.

Chapter - Secondary Location

Chapter - Kinds

A fardrop is a kind of backdrop.
A writing is a kind of thing.  A writing can be noticed or unnoticed.  A writing is usually unnoticed.

Chapter - Prose Name

Every room has some text called prose name. The prose name of a room (called locale) is usually "NULL".   
To say the prose version of (place - a room): if the prose name of place is "NULL", say "[printed name of place]"; otherwise say "[prose name of place]".

Every thing has some text called prose name. The prose name of a thing (called item) is usually "NULL".   
To say the prose version of (item - a thing): if the prose name of item is "NULL", say "[printed name of item]"; otherwise say "[prose name of item]".

Chapter - Flimsy

A flimsy is a kind of thing.  A flimsy has some text called the action-refusal.  The action-refusal of a flimsy is usually "".  A flimsy is usually fixed in place, undescribed.

To say brush-off of (n - a thing):
	say "You don't need to worry about [if n is plural-named]those[else]that[end if]."

Rule for writing a paragraph about a flimsy (called xx):
	now xx is mentioned.

Instead of examining a flimsy:
	if the initial appearance of the noun is "", say "[brush-off of noun]";
	otherwise say "[initial appearance of the noun][paragraph break]".

instead of doing anything to a flimsy:
	if the action-refusal of the noun is "", say "[brush-off of noun]";
	otherwise say "[action-refusal of the noun][paragraph break]".

Book - Easter Eggs

Understand "plugh" or "xyzzy" or "frotz" or "plover" as a mistake("Though you can't speak a noise arises from deep within.  The glow coming from your eyes briefly increases then just as quickly fades away.").
Understand "* [text]" as a mistake("Noted.").


Book - Player

The player is man named Jack.  The description of Jack is "You are very tall.  You are wearing [overalls] and a [flannel shirt].  There is [straw] slowly falling out of your sleeves and pants legs leaving a trail behind as you walk.  [first time]As you raise your hands to your heavy head and move to run your hands through your hair, you feel nothing but a cool, hard shell of a pumpkin.[only]"



Understand "you" or "body" as yourself.

The overalls is a wearable thing.  The description of overalls is "The pair of overalls you are wearing are made of blue denim material and are well worn and ripped at the seams."

The flannel shirt is a wearable thing.  The description of flannel shirt is "The scotch plaid flannel shirt is loosely tucked into your overalls."

The straw is a wearable thing.  The description of the straw is "The straw seems to be part of your very being covering every part of your body or perhaps it is your body."

The overalls is worn by the player.  The flannel shirt is worn by the player.

Instead of taking off something worn by the player:
	say "You can't remove your clothing."
	

Instead of jumping:
	say "Jumping would only attract attention to yourself."

Volume - Mechanics


Rule for printing a parser error when the latest parser error is the I beg your pardon error: 
	say "What's that? Speak up, speak up." instead.

Book - Acting Fast

Examining something is acting fast. Looking is acting fast.  Taking inventory is acting fast.

The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules.
This is the take visual actions out of world rule: if acting fast, rule succeeds.

Book - Reading

A thing has some text called printing.  The printing of a thing is usually "blank".

Definition:  a thing is legible if the printing of it is not "blank".

[Understand the command "read" as something new.
Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading.  

Understand "read [something]" as reading. 
Check reading:  if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead.  
Carry out reading:
	let typing be the printing of the noun;
	say "[italic type][typing][roman type][paragraph break]".

Report reading: do nothing.
]
Book - Looking


Chapter - Looking in a direction

instead of looking south, try facing south instead.
instead of looking north, try facing north instead.
instead of looking east, try facing east instead.
instead of looking west, try facing west instead.
instead of looking northeast, try facing northeast instead.
instead of looking northwest, try facing northwest instead.
instead of looking southeast, try facing  southeast instead.
instead of looking southwest, try facing southwest instead.

Understand "look [direction]" as facing.
Facing is an action applying to one visible thing.

Carry out facing: 
	let the viewed item be the room noun from the location; 
	if the viewed item is not a room, say "There is nothing interesting in that direction." instead; 
	try looking toward the viewed item.

Instead of looking up: 
	say "Above you is a cloudless dark sky lit by the full moon."

Instead of looking down: 
	say "You stare down at the ground and feel an urge to just lie down and let it end, but something far stronger is pulling you onward."

Chapter - Looking toward something

Understand "examine [any adjacent room]" as examining.
Instead of examining a room: 
	say "Over in [the prose name of the noun], you can see [a list of visible things in the noun]."

Understand "look toward [any adjacent room]" as looking toward. Understand "examine [any adjacent room]" as looking toward.
Looking toward is an action applying to one visible thing.
Carry out looking toward: 
	say "You make out [the prose name of the noun] that way."

Book - Secret Doors

[Adapted from Secret Doors extension by Andrew Owen]
A secret door is a kind of door.
A secret door can be revealed or unrevealed.
A secret door is unrevealed.
A secret door is scenery.
A secret door is closed.

[A secret switch is a kind of thing.
A secret switch can be revealed or unrevealed.
A secret switch is unrevealed.
A secret switch is scenery.]

[To print the you can't go message:
	(- L__M(##Go, 2, 0); -).

To print the you can't see message:
	(- L__M(##Miscellany, 30, 0); -).]

Before going through a secret door which is unrevealed:
	say "[can't go that way rule response (B)]" instead.
	
Before doing something to a secret door which is unrevealed:
[	print the you can't see message instead.]
	say "[parser error internal rule response (E)]" instead.

Before doing something when a secret door is the second noun and the second noun is unrevealed:
[	print the you can't see message instead.]
	say "[parser error internal rule response (E)]" instead.

[Before doing something to a secret switch which is unrevealed:
	print the you can't see message instead.

Before doing something when a secret switch is the second noun and the second noun is unrevealed:
	print the you can't see message instead.]
	
	
Volume  - The World

Book - Fardrops

The full moon is a fardrop.  The full moon is everywhere.  The description of the full moon is "The great orb of the full moon hangs high in the sky.  The moon reflects enough light in the cloudless sky to provide a clear view of much of the landscape."

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."
	
Instead of taking a fardrop:
	say "If you could, you would....but where would you take it?"
	

Book - Neverland

Neverland is a room.

Book - Outside town 

Outside-town is a region.

Chapter - Pumpkin Patch

The-Pumpkin-Patch is a room.  The-pumpkin-patch is in outside-town.  The printed name is "In the Pumpkin Patch".  The description is "You are standing in a middle of a pumpkin patch.   The light from the [full moon] allows you to see some distance around you.  The pumpkin patch goes on as far as you can see except to the south where you can make the outline of a [road]."

Understand "pumpkin patch" as the-pumpkin-patch.

The prose name of The-Pumpkin-Patch is "the pumpkin patch".

Chapter - Road

The Road is a room.  The road is in outside-town. The printed name is "road".  The road is south of The-Pumpkin-Patch.  The description is "[if the player is hiding]You are lying in the ditch along side the road.  In the darkness, you probably look like nothing more than another pumpkin amongst thousands.[otherwise]You are standing in the middle of a dirt road to the south of a large field of pumpkins.  Along the north side of the road is a shallow ditch.  The road stretches on to the east and west.[end if][if not visited][paragraph break]Looking up the road, you see a set of [headlights] headed in your direction.  Something screams in your very soul that you need to hide, you don't think it would be wise to be caught in the open in your state."
The prose name of road is "the road".

Report going to the road for the first time:
	car arrives in 2 turns from now.

At the time when car arrives:
	if the player is hiding:
		say "The car drives slowly down the road just feet from where you are lying down.  Two boys hang out the side window with shotguns at the ready.  
		
You hear one of them say 'I swear I saw something standing around here somewhere.'
	
'You just had too much beer before we left, Joe.  You're so drunk you wouldn't notice old Jack standing right next to you,'  someone yelled from inside the car.
	
The car slides a bit further down the road, turns around and then heads back the way it came. 

As the car flies back up the road one of its hubcaps comes off and lands in the ditch just ahead of you.  You reach over and pick it up.";
		now the player carries the hubcap;
		now the player is not hiding;
		now the headlights are in neverland;
	otherwise:
		if the location is the road:
			say "As the car gets closer to you it suddenly accelerates.  Before you can react, it barrels into you.  Your body, made mostly of straw flys apart scattering straw everywhere.  The last thing you remember before the light dims from your eyes is your large pumpkin head bouncing off the windshield and onto the road shattering into thousands of pieces.";
		if the location is the-pumpkin-patch:
			say "As the car slows down you hear someone yell, 'There he is....old Jack is still in the pumpkin patch.'  You hear the sound of gun fire and something whistles pass your head.  You take off running as more shots whizz close.  Just as you think you may get away, one slams into the back of your head.  As the light dims from your eyes, your last thought was 'Next year....'.";
		End the story saying "Thus ends this halloween.....the town wins again and poor Jack Halloween waits another year for his revenge upon the town".
		
Section - Ditch 

The ditch is undescribed and fixed in place container in the road.  The ditch is enterable. The description of the ditch is "The ditch is very shallow, not much more than an light impression along the road.  Pumpkin vines from the field have encrouched slightly into the ditch."

Instead of entering the ditch:
	try lying down instead.

Section - Headlights

The headlights are an undescribed thing in the road.  The description of headlights is "The car is still off in the distance, but it appears to be moving quickly in your direction."
Understand "car/vehicle/lights/truck" as headlights.
Instead of examining the headlights when the headlights are in neverland:
	say "Luckily you don't see any."

Section - Hubcap

The hubcap is a thing. The hubcap is throwable.  The description of hubcap is "Really nothing more than a rusty piece of metal that was loosly attached to the wheel of the car.  It is flat and looks like if you threw it like a frisbee it would go a great distance."	

Section - Actions 

Before going east in the road:
	if the headlights are not in neverland:
		say "As you begin to head east towards the town, the car suddenly accelerates. Before you can react, it barrels into you.  Your body, made mostly of straw flys apart scattering straw everywhere.  The last thing you remember before the light dims from your eyes is your large pumpkin head bouncing off the windshield and onto the road only shatter into thousands of pieces.";
		End the story saying "Thus ends this Halloween.....the town wins again and poor Jack Halloween waits another year for his revenge upon the town".

Before going nowhere in the road:
	if the player is hiding:
		say "You get out of the ditch and are now standing in the road again.";
		now the player is not hiding instead;
	otherwise:
		say "You feel a strong urge to continue to the town in the east." instead;
	
Before going in the road:
	if the player is hiding:
		say "You get up out of the ditch first.";
		now the player is not hiding;
	
Chapter - Edge of town

The edge-of-town is a room.  The edge-of-town is in outside-town.  The printed name is "The Edge of Town".  The edge-of-town is east of the road.   The prose name of edge-of-town is "the edge of town".

The description is "[edge-of-town-description]".

To say edge-of-town-description:
	if player is in pickup truck:
		say "You're sitting in the pickup truck facing the road out to the pumpkin patch.";
	otherwise:
		say "You have come to the edge of town.  A tall [chainlink fence] stretches on either side of the road as far as you can see.  [first time][paragraph break]As you come closer you see some movement near the barrier across the road and you quickly crouch in the shadows not wanting to be seen.  A moment later you see the movement again and you can just make out someone patrolling back and forth across the road.  There is no way to get around him without being seen.  Perhaps you could distract him somehow.[only]".

Report going to the edge-of-town for the first time:
	now the player is hiding.


Section - Patroller

The patroller is a man.  The printed name of patroller is "young man".  The patroller is in the edge-of-town.  The patroller is conscious.  The description of the patroller is "He is just a young boy, perhaps in his early teens.  [if the patroller is conscious]In one hand he carries a large machete and slung from one shoulder is a rifle.[end if]  [if the patroller is unconscious and the patroller is alive]He is laying on the ground with a large lump on his head.  He appears to still be breathing so he may come to at any moment so you may want to hurry.[end if][if the patroller is dead]Embedded in his head is the hubcap you just threw.[end if]".

Understand "man/teen" or "young man" as patroller.

Before listing nondescript items when the patroller is unconscious: 
	if the patroller is marked for listing:
		if the patroller is unconscious:
			say "The young man is lying on the ground [if the patroller is dead]dead.[paragraph break]";
		now the patroller is not marked for listing.


Section - Pickup Truck

The pickup truck is a enterable openable transparent closed fixed in place container.   The pickup truck is locked.  The initial appearance of the pickup truck is "The rusty blue Ford truck sitting along the edge of the road has seen better days.  [if number of things in the truck-bed is greater than 0]Leaning against the bed of the truck you see [a list of things in the truck-bed].[end if]".  The pickup truck is in the edge-of-town.

Understand "car/door" as pickup truck.

The truck-bed is an open container.  The truck-bed is part of the pickup truck.  The prose name of truck-bed is "the truck bed".
Understand  "bed/truckbed" as truck-bed

Instead of opening the pickup truck: 
	try entering the pickup truck  instead.
Instead of entering the pickup truck:
	say "You attempt to open the truck but it is locked."

Section - Shovel

The shovel is a thing.  The shovel is in the truck-bed.   The description of shovel is "The garden shovel has some fresh dirt on it."  
The shovel can be noticed or unnoticed.  The shovel is unnoticed.

[Rule for deciding whether all includes unseen things: it does not.]


Section - Fence

The chainlink fence is a flimsy.  The chainlink fence is in the edge-of-town.  

Section - Machete

The machete is a thing.  The description of machete is "[if the patroller carries the machete]The machete looks dangerous enough that I don't want to attract his attention and find out how dangerous it truly is.[otherwise]A rusty machete, but still sharp enough it could have sliced through your pumpkin head.[end if]".
The machete is carried by the patroller.  

Section - Rifle

The rifle is a thing.  The description of rifle is "A .270 Winchester rifle.  Powerful enough to spread the pumpkin seeds in your head all over the road."
The rifle is carried by the patroller.

Section - Actions

The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.
The block throwing at rule is not listed in the check throwing it at rules.

Instead of throwing the hubcap:
	if location is edge-of-town:
		say "As quitely as you can you toss the hubcap out into the field next to the road.  A loud cling rings through the still night.  The man stops in his track, looks in the direction of the noise and then takes off running yelling 'I've found him boys he's over here.' and disappears into the darkness.";
		now the hubcap is off-stage;
		now the patroller is off-stage;
		now the player is not hiding;
	otherwise:
		say "You wind up and throw the hubcap into the air and sure enough it flies like a frisbee through the night sky.  You must have exceptional strength as it flies faster than you could have imagined.  As it falls to the ground, you run over and retrieve it."  

instead of attacking the patroller:
	if the patroller is on-stage:
		if the patroller is conscious:
			try throwing the hubcap at the patroller instead;
		otherwise:
			if the patroller is dead:
				say "He's already dead, there's nothing else you could really do to him now.";
			else:
				say "You may appear to be a monster, but attacking the young man when he is unconscious would serve no purpose."

Instead of taking the hubcap:
	if the patroller is dead:
		say "That is embedded in his skull....I don't think you want to take that.".		

Instead of throwing the hubcap at the patroller:
	if the patroller is on-stage:
		let killshot be false;
		if a random chance of 2 in 3 succeeds:
			let killshot be true;
		say "You quickly stand up and throw the hubcap at the young man.  He freezes as he sees your movement and you see the hubcap [if killshot is false]skip off the top of his head[else]hit him square in the forehead[end if] and he falls to the ground dropping his rifle and machete.";
		now the hubcap is off-stage;
		now the patroller is unconscious;
		if killshot is true:
			now the patroller is dead;
			now the hubcap is part of the patroller;
		now the machete is in edge-of-town;
		now the rifle is in edge-of-town;
		now the player is not hiding;
		now the machete is seen;
		now the rifle is seen.

before throwing:
	if the noun is not throwable:
		say "Your attempt to throw [the noun] is futile." instead;


Before taking something carried by the patroller:
	if the patroller is conscious:
		say "You could never sneak up and grab that from him without him noticing you." instead;
		
Before going east in edge-of-town:
	if patroller is on-stage and the patroller is conscious:
		say "You start to walk into town.  As you come upon the young man, you obviously startle him greatly.  But before you can move past him, he manages to swing his machete and take off the top of your head. ";
		end the story saying "As you fall to the ground, you think, 'I[']ll remember this next year.'";
		
Before going west in edge-of-town:
	if patroller is conscious and the patroller is on-stage:
		say "You start to walk back the way you came.  Before you get to far, you hear the young man behind you scream, 'There he is....old Jack...I've got him!'  With that you barely hear the shot before the pumpkin atop your body explodes into a million pieces.";
		end the story saying "Your head sprays across the ground planting the seeds for next year.";

Instead of shouting:
	say "As you begin to yell out you realize that your mouth does not move and you have no voice."			
	
Book - Inside Town

Inside-town is a region.

Chapter - Town Square

The town-square is a room.  The town-square is in inside-town.  The printed name  is "The Town Square".  The town-square is east of the edge-of-town.  The description is "[if the player is hiding]You are hiding behind the [fountain] in the town square.[otherwise]You are standing in the center of town. [end if] You can head back out of town to the west.  There is an old church off to the north and the townhall building is on the south side of the square.  Rising above the townhall is a large clock tower.  [if the player is not hiding]In the center of the square is a [fountain].[end if]"  

Report going to the town-square:
	if the shooter is conscious:
		say "As you enter the town's center you hear a gunshot ring out.  The whistle of the slug as it passes near your head and the dust kicking up a few feet behind you are enough to send you scrambling to hide behind the fountain.";
		now the player is hiding;
		increase the count of shooter by 1.

Section  - Fountain

Before examining something not carried by the player when the shooter is alive:
	if the noun is the clock tower:
		continue the action;
	else:
		say "As you stretch to get a closer look at [the noun], a shot rings out and you duck back into hiding." instead.

The fountain is scenery in the town-square.  The description of fountain is "The fountain is no longer running and the stagnant water is only a few inches deep.  In the middle of the fountain is a worn [statue] of a man on a horse."

The statue is part of the fountain.  The description of the statue is "The statue is of horserider on a galloping horse.   One upraised arm holds a [sword] and in the other is a statue of a [severed head].  Below the statue is a [plaque]."

The sword is a part of the statue.  The description of the sword is "A sword fashioned from the same granite as the rest of the statue."

The severed head is part of the statue.   The description of the severed head is "The carved head is that of a young woman with long flowing hair."

The plaque is part of the statue.  The description of the plaque is "You can just make out the text of the plaque that reads: [italic type][line break]Reverend Josef Karlmann -  July 7, 1777[line break]That which I see not teach thou me: if I have done iniquity, I will do no more.[roman type]".

Section - Shooter

The shooter is a man.  The shooter is in the town-square.  The shooter is conscious.  The shooter is hiding.  The description of the shooter is "[shooter-description][run paragraph on]".   The shooter has a number called count.  The count of shooter is 0.

To say shooter-description:
	if shooter is hiding:
		say "You can't see where the shot came from.";
	otherwise:
		say "The shooter is too far away to get a good look at in this poor lighting, but you can see that he [if the shooter is conscious]has his rifle trained in your direction[otherwise]is slumped over the edge of the clock tower dead[end if]."

Before listing nondescript items when the shooter is hiding: 
	if the shooter is marked for listing:
		say "There is a shooter somewhere in the square.";
		now the shooter is not marked for listing.

Before listing nondescript items when the shooter is not hiding: 
	if the shooter is marked for listing:
		if the shooter is dead:
			say "The dead shooter is laying at the base of the town hall.";
		otherwise:
			say "There is a shooter in the clock tower.";
		now the shooter is not marked for listing.

Section - Clock Tower

The clock tower is scenery in the town-square.  The description of the clock tower is "[clock-tower-description][run paragraph on]".

To say clock-tower-description:
	if shooter is hiding:
		say "You look up at the clock tower and see the time is [time of day].  Just as you start to look away, you see movement.  There is the shooter.";
		now the shooter is not hiding;
	otherwise:
		if the shooter is conscious:
			if the player is hiding:
				say "The shooter is searching the square, but hasn't found you yet.";
			otherwise:
				say "The shooter in the clock tower is aiming his rifle at you.";
		otherwise:
			say "You look up at the clock tower and see the time is [time of day]. ";

Every turn while the player is in town-square and the shooter is conscious:
	if the count of the shooter is greater than 0:
		if a random chance of 1 in 3 succeeds:
			say "Another gunshot rings through the square.  [one of]The slug skips off the edge of the fountain just [random-shot-direction] of where you are hiding.  You're not sure if it was just a lucky shot or if he actually sees you.[or]The shot hits something on the other side of the square.[or]Someone from inside a nearby building yells 'Did you get him Sam?'[or]The shot skips off the water in the fountain.[purely at random]";
			increase the count of shooter by 1;
	
To say random-shot-direction:
	say "[one of]to the left[or]to the right[or]in front of[purely at random]".

Section - Shooting

Instead of shooting:
	if the player carries the rifle:
		if the location is town-square:
			if the shooter is conscious:
				if the shooter is hiding:
					say "You don't know which way to shoot....and you don't want to give away your position if they haven't found you yet.";
				otherwise:
					say "You take quick aim in the direction of the clock tower and pull the trigger.  When the flash from the shot clears, you see the shooter slumping over the edge of the clocktower.";
					now the shooter is dead;
					now the player is not hiding;
	otherwise:
		say "You have nothing to shoot anyone with.";
		
Section - Going Action

Before going nowhere in the town-square:
	if the shooter is conscious:
		say "You rise up from your hiding place and attempt to run away, but before you take more than a couple steps, a slug slams into the side of your head spreading pumpkin slime and seeds all over the square.";
		end the story saying "Running away is rarely the way Jack Halloween succeeds.....until next year."

Before going north in the town-square:
	if the shooter is conscious:
		say "You rise up from your hiding place and attempt to run away, but before you take more than a couple steps, a slug slams into the side of your head spreading pumpkin slime and seeds all over the square.";
		end the story saying "Running away is rarely the way Jack Halloween succeeds.....until next year."

Before going west in the town-square:
	if the shooter is conscious:
		say "You rise up from your hiding place and attempt to run away, but before you take more than a couple steps, a slug slams into the side of your head spreading pumpkin slime and seeds all over the square.";
		end the story saying "Running away is rarely the way Jack Halloween succeeds.....until next year.";
	otherwise: 
		say "You feel a strong urge pulling you north to the church...you can't resist going that way." instead;
		
Chapter - Old Church

The old-church is a room.  The old-church is in inside-town.  The printed name is "An Old Church".  The old-church is north of the town-square.  The description is "You are outside an old church.  The church has seen better years.  The entrance to the church is to the north.  Behind the church to the east you see a small overgrown cemetery.  Back to the south is the town square."

Before going north in the old-church:
	try going inside instead.

Before going nowhere in the old-church:
	say "The urge to go to the cemetery is so strong, you can think of nothing else." instead.


Chapter - cemetery

The cemetery is a room.  The cemetery is in inside-town.  The printed name is "The Cemetery".  The cemetery is east of the old-church.  

Report going to the cemetery for the first time:
	say "As you enter the cemetery, you feel a sudden pressure building in your head.  As your head expands, cracks appear and the light coming from within you outshines the full moon.

As you fall to your knees, the screams coming from the town can be heard far above your own.  The curse of Jack Halloween has been lifted.  You are free from your cycle of birth and death, and the town has fallen beneath the weight of its sins.";
	end the story saying "Rest in peace, Jack Halloween.....next year will come and go.";


Book - Church

Inside-church is a region.  Inside-church is in inside-town.

Chapter - Church Vestibule

The vestibule is a room.  The printed name is "Church Vestibule".  The vestibule is inside of old-church.  The vestibule is in inside-church.  The description of vestibule is "You are in the church vestibule.  To the north is the nave of the church.  The exit is back to the south."

Instead of going south in the vestibule:
	try exiting instead.
	
Chapter - Church Nave

The nave is a room.  The printed name is "Church Nave".  The nave is in inside-church.  The nave is north of the vestibule.
The description of nave is "The nave of the church. To the north is the altar.  The vestibule is to the south."

Chapter - Altar

The altar is a room.  The printed name is "Altar".  The altar is in inside-church.  The altar is north of the nave.  The description of altar is "You've come to the altar at the head of the church.   The [pulpit] from which the pastor would deliver the sermon, stands in the in front of the altar.   Hanging on the wall behind the pulpit is a large [cross].  Instead of a typical crucifix, nailed to this cross is a [body] dripping blood with a [pumpkin] on its head.  To the west is a set of stairs and the church office is to the east.  You can move into the nave by heading south."

Section - pulpit

The pulpit is an undescribed thing in the altar.   The description of pulpit is "[if move-count of pulpit is 0]The wooden pulpit faces looking out into the congregation.  As you examine it you notice it is not sitting evenly on the floor and could easily be moved around the altar area[otherwise]The pulpit is moved up against the wall out of the way of the trapdoor[end if]."
The pulpit has a number called move-count.  The pulpit can be pushed.

Instead of moving the pulpit:
	try pushing the pulpit instead.
	
instead of pushing the pulpit:
	if pulpit had been pushed:
		say "You shove the pulpit further out of the way.";
	otherwise:
		say "As you push the pulpit aside a trapdoor is revealed in the floor.";
		now the pulpit is pushed;
		now the trapdoor is revealed.

Section - tattered bible

The tattered bible is a thing on the pulpit.  The description of tattered bible is "The large bible is very old and very tattered.  It is lying open to the book of Revelations."  The printing of the tattered bible is "Don't be afraid of what you are about to suffer.  The Devil will throw some of you into prison and put you to the test.  You will be persecuted for ten days.  Remain faithful even when facing death, and I will give you a crown of life."

instead of reading the bible:
	say "As you flip through the pages [if verse is noticed]you land on Revelations 2:10:[paragraph break][otherwise] the pages naturally flip back to the book of Revelations as if the Bible has laid there for centuries.[end if]";
	if verse is noticed:
		let typing be the printing of the noun;
		say "[italic type][typing][roman type][paragraph break]".

The verse is a writing, part of the tattered bible.  
understand "bible verse" as verse.

instead of examining verse:
	try reading the verse.

instead of reading verse:	
	if verse is unnoticed:
		say "The bible is full of verses, you don't have that kind of time.";
	otherwise:
		let typing be the printing of the tattered bible;
		say "[italic type][typing][roman type][paragraph break]".

Section - cross

The cross is a thing in the altar.  The cross is fixed in place, undescribed.  Understand "crucifix" as the cross.  The description of cross is "The cross hangs on the north wall behind the pulpit.  It is a large wooden cross that is easily ten feet tall.  Nailed to the cross is a body that has a large pumpkin where it's head should be.  The [blood] is still fresh and drips down the bottom of the cross onto the floor."

Section - blood

The blood is a thing in the altar.  The blood is fixed in place.  "The blood drips down the cross and falls into a pool the ground.  The pool of blood is slowly running down into a space below the pulpit."

Section - body

The body is a thing.  The body is part of the cross.  The description of body is "The body is that of a young man.  Covered in only a loin cloth, the body is nailed to the cross, one nail in each wrist and one through both feet.  The man's head is missing and in its place is a large pumpkin.  Written on the body in blood is 'Rev 2:10'."

After examining the body for the first time:
	now the verse is noticed.

Section - pumpkin

The pumpkin is a thing.  The pumpkin is part of the body.  The description of the pumpkin is "The large pumpkin sits loosely where the head of the man should be.  It has been carved is a fashion that you suspect looks a lot like yourself.   A faint light flickers deep within it's eyes, then goes out."

Section - Trapdoor

The trapdoor is a secret door.  The trapdoor is down from altar and up from conclave entrance.    The description of trapdoor is "A small wooden door set into the floor of the church with a large iron ring."
Understand "door" as trapdoor.

[Understand "pull ring" as opening the trapdoor.]

Chapter - Conclave Entrance

The conclave entrance is a room.  The printed name is "Entrance to Conclave".  The conclave entrance is down from trapdoor.  The conclave entrance is in inside-church.

[16:10 For thou wilt not leave my soul in hell; neither wilt thou suffer thine Holy One to see corruption.” (Psalm 16:10 KJV)]
Chapter - Meeting room

The conclave-meeting-room is a room.  The printed name is "Conclave Meeting Room".  The conclave-meeting-room is south of the conclave entrance.  The conclave-meeting-room is in inside-church.

Chapter - Church Office

The church-office is a room.  The printed name is "Church Office".  the church-office is in inside-church.  The church-office is east of the altar.

Chapter - Stairs to Bell Tower

The belltower-stairs is a room.  The printed name is "Stairs to Bell Tower".  The belltower-stairs is in inside-church.  The belltower-stairs is west of  altar.

Chapter - Bell Tower

The bell tower is a room.  The printed name is "Bell Tower".  The bell tower is in inside-church.  The bell tower is up from belltower-stairs.

Book - Town Hall

Town-hall is a region.  Town-hall is in inside-town.

Chapter - Portico

The portico is a room.  The portico is south of town-square.  The portico is in inside-town.

Chapter - Reception Area

The reception area is a room.  The printed name is "Reception Area".  The reception area is inside from portico.  The reception area is in town-hall.

Chapter - Mayor office

The mayors office is a room.  The printed name is "Office of the Mayor".  The mayors office is west of the reception area.  The mayors office is in town-hall.

Chapter - File room

The file room is a room.  The printed name is "File Room".  The file room is south of reception area.  The file room is in town-hall.

Chapter - Clock Tower

The clock-tower is a room.  The printed name is "Clock Tower".  The clock-tower is up of file room.  The clock-tower is in town-hall.


Book - Movement

Instead of going nowhere in The-Pumpkin-Patch:
	say "The pumpkin patch goes on forever and you feel an strong urge to leave."
	
Instead of going west in the road:
	say "You start to wander down the road to the west, but you feel an urge so deeply within your soul that that is not the way you need to go."
	

Book - Lying Down

Lying down is an action applying to nothing.  
Understand "lie down" as lying down.  
Understand "hide" as lying down.  
Understand "lie down in ditch" as lying down.

Report lying down: 
	if player is hiding:
		say "You already are hiding.";
	otherwise:
		say "You lie down for a bit, but you feel something drawing you on so you quickly get up."

Instead of lying down when the location is the road:
	say "You lie down in the ditch along the road.";
	now the player is hiding.

Volume - Tests

test edgeoftown with "s/hide/z/e".
test church with "s/hide/z/e/throw hubcap at man/take all/e/x clock tower/shoot shooter/n".



