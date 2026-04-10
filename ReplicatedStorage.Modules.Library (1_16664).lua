-- Name: Library
-- Path: game:GetService("ReplicatedStorage").Modules.Library
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.2543959000013274 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Constants
-- [1] (number) = 50000 (number)
-- [2] (number) = print (string)
-- [4] (number) = Hello, world! (string)
-- [5] (number) = warn (string)

-- Proto Info

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-04-10 16:51:04
-- Luau version 6, Types version 3
-- Time taken: 0.152945 seconds

local module = {
	Items = {
		Cage = {{
			Name = "Wooden Cage";
			Price = 10;
			Image = "";
			Capacity = 2;
			Luck = 0;
			MaxDepth = 10;
			MinRegion = "Shore";
			Rarity = "Common";
			Rate = 2;
			CatchChance = 0.08;
			Id = 1;
		}, {
			Name = "Rusty Cage";
			Price = 500;
			Image = "";
			Capacity = 3;
			Luck = 0.25;
			MaxDepth = 12;
			MinRegion = "Shore";
			Rarity = "Uncommon";
			Rate = 1.85;
			CatchChance = 0.1;
			Id = 2;
		}, {
			Name = "Plastic Cage";
			Price = 4500;
			Image = "";
			Capacity = 5;
			Luck = 0.75;
			MaxDepth = 15;
			MinRegion = "Shore";
			Rarity = "Rare";
			Rate = 1.7;
			CatchChance = 0.12;
			Id = 3;
		}, {
			Name = "Iron Cage";
			Price = 25000;
			Image = "";
			Capacity = 10;
			Luck = 1.5;
			MaxDepth = 20;
			MinRegion = "Coastal Waters";
			Rarity = "Epic";
			Rate = 1.5;
			CatchChance = 0.15;
			Id = 4;
		}, {
			Name = "Shark Cage";
			Price = 150000;
			Image = "";
			Capacity = 15;
			Luck = 2;
			MaxDepth = 28;
			MinRegion = "Coastal Waters";
			Rarity = "Legendary";
			Rate = 1.4;
			CatchChance = 0.18;
			Id = 5;
		}, {
			Name = "Crystal Cage";
			Price = 1000000;
			Image = "";
			Capacity = 20;
			Luck = 3.5;
			MaxDepth = 40;
			MinRegion = "Open Sea";
			Rarity = "Legendary";
			Rate = 1.2;
			CatchChance = 0.2;
			Id = 6;
		}, {
			Name = "Moonlight Cage";
			Price = 10000000;
			Image = "";
			Capacity = 35;
			Luck = 6;
			MaxDepth = 60;
			MinRegion = "Abyssal Waters";
			Rarity = "Mythic";
			Rate = 1;
			CatchChance = 0.24;
			Id = 7;
		}, {
			Name = "Sunlight Cage";
			Price = 25000000;
			Image = "";
			Capacity = 50;
			Luck = 10;
			MaxDepth = 70;
			MinRegion = "Eternal Trench";
			Rarity = "Mythic";
			Rate = 0.9;
			CatchChance = 0.26;
			Id = 8;
		}, {
			Name = "Angelic Cage";
			Price = 40000000;
			Image = "";
			Capacity = 75;
			Luck = 14;
			MaxDepth = 80;
			MinRegion = "Voidwater Expanse";
			Rarity = "Secret";
			Rate = 0.8;
			CatchChance = 0.28;
			Id = 9;
		}, {
			Name = "Diamond Cage";
			Price = 4500000;
			Image = "";
			Capacity = 28;
			Luck = 4.5;
			MaxDepth = 50;
			MinRegion = "Open Sea";
			Rarity = "Legendary";
			Rate = 1.1;
			CatchChance = 0.22;
			Id = 10;
		}, {
			Name = "Radioactive Cage";
			Price = 70000000;
			Image = "";
			Capacity = 100;
			Luck = 18;
			MaxDepth = 90;
			MinRegion = "Final Horizon";
			Rarity = "Secret";
			Rate = 0.75;
			CatchChance = 0.3;
			Id = 11;
		}, {
			Name = "Steampunk Cage";
			Price = 100000000;
			Image = "";
			Capacity = 120;
			Luck = 25;
			MaxDepth = 100;
			MinRegion = "Final Horizon";
			Rarity = "Secret";
			Rate = 0.7;
			CatchChance = 0.32;
			Id = 12;
		}, {
			Name = "Divine Doom Cage";
			Price = 175000000;
			Image = "";
			Capacity = 135;
			Luck = 29;
			MaxDepth = 110;
			MinRegion = "Final Horizon";
			Rarity = "Secret";
			Rate = 0.6;
			CatchChance = 0.35;
			Id = 13;
		}, -- : First try: K:0: attempt to index nil with 't'
;
		Hammer = {{
			Name = "Cage Remove Tool";
			Image = "";
		}};
		Mover = {{
			Name = "Cage Move Tool";
			Image = "";
		}};
		Loot = {{
			Name = "Crab";
			Image = "rbxassetid://91037781597881";
			Rarity = "Common";
			MaxWeight = 150;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Starfish";
			Image = "rbxassetid://109160292399918";
			Rarity = "Common";
			MaxWeight = 50;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Clownfish";
			Image = "rbxassetid://71960060235740";
			Rarity = "Common";
			MaxWeight = 30;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Seahorse";
			Image = "rbxassetid://133040672814726";
			Rarity = "Uncommon";
			MaxWeight = 60;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Jellyfish";
			Image = "rbxassetid://110537551865560";
			Rarity = "Uncommon";
			MaxWeight = 100;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Lobster";
			Image = "rbxassetid://125567594930869";
			Rarity = "Uncommon";
			MaxWeight = 120;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Ringed Octopus";
			Image = "rbxassetid://138351971924917";
			Rarity = "Rare";
			MaxWeight = 80;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Lionfish";
			Image = "rbxassetid://77305501764057";
			Rarity = "Rare";
			MaxWeight = 90;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Salmon";
			Image = "rbxassetid://71928549565089";
			Rarity = "Rare";
			MaxWeight = 120;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Swordfish";
			Image = "rbxassetid://114973705026147";
			Rarity = "Epic";
			MaxWeight = 250;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Sailfish";
			Image = "rbxassetid://134776276292287";
			Rarity = "Epic";
			MaxWeight = 300;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Bluefin Tuna";
			Image = "rbxassetid://89172356196607";
			Rarity = "Epic";
			MaxWeight = 500;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Stingray";
			Image = "rbxassetid://78104056599104";
			Rarity = "Epic";
			MaxWeight = 220;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Angler Fish";
			Image = "rbxassetid://117542469554216";
			Rarity = "Legendary";
			MaxWeight = 150;
			Region = "Coastal Waters";
			Long = false;
		}, {
			Name = "Crocodile";
			Image = "rbxassetid://116689048215291";
			Rarity = "Legendary";
			MaxWeight = 1500;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Hammerhead Shark";
			Image = "rbxassetid://92155705242519";
			Rarity = "Legendary";
			MaxWeight = 950;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Great White Shark";
			Image = "rbxassetid://98326221119570";
			Rarity = "Legendary";
			MaxWeight = 3000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Giant Squid";
			Image = "rbxassetid://130308154400760";
			Rarity = "Mythic";
			MaxWeight = 3500;
			Region = "Open Sea";
			Long = false;
		}, {
			Name = "Orca";
			Image = "rbxassetid://128574192739253";
			Rarity = "Mythic";
			MaxWeight = 8000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Mosasaurus";
			Image = "rbxassetid://135310100677030";
			Rarity = "Secret";
			MaxWeight = 25000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Leviathan";
			Image = "rbxassetid://105348826695139";
			Rarity = "Secret";
			MaxWeight = 50000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Pufferfish";
			Image = "rbxassetid://75304480945668";
			Rarity = "Rare";
			MaxWeight = 120;
			Region = "Shore";
			Long = false;
		}, {
			Name = "Sunfish";
			Image = "rbxassetid://115020392169878";
			Rarity = "Epic";
			MaxWeight = 275;
			Region = "Coastal Waters";
			Long = false;
		}, {
			Name = "Sawfish";
			Image = "rbxassetid://100105278155701";
			Rarity = "Legendary";
			MaxWeight = 600;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Basking Shark";
			Image = "rbxassetid://108005320015561";
			Rarity = "Mythic";
			MaxWeight = 12000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Megalodon";
			Image = "rbxassetid://109352138681339";
			Rarity = "Secret";
			MaxWeight = 35000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Abyssal Squid";
			Image = "rbxassetid://71905712632967";
			Rarity = "Secret";
			MaxWeight = 80000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Dolphin";
			Image = "rbxassetid://110979346397365";
			Rarity = "Legendary";
			MaxWeight = 1200;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Goliath Grouper";
			Image = "rbxassetid://100064968761916";
			Rarity = "Legendary";
			MaxWeight = 5000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Manta Ray";
			Image = "rbxassetid://87515232740940";
			Rarity = "Legendary";
			MaxWeight = 7000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Whale Shark";
			Image = "rbxassetid://103190660365246";
			Rarity = "Mythic";
			MaxWeight = 30000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Serpent Leviathan";
			Image = "rbxassetid://124199090142320";
			Rarity = "Secret";
			MaxWeight = 100000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Oarfish";
			Image = "rbxassetid://134834336758630";
			Rarity = "Legendary";
			MaxWeight = 4500;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Megamouth Shark";
			Image = "rbxassetid://99371794393563";
			Rarity = "Mythic";
			MaxWeight = 24000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Luminjaw";
			Image = "rbxassetid://82125370638601";
			Rarity = "Secret";
			MaxWeight = 125000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Darkstar Leviathan";
			Image = "rbxassetid://72728079971927";
			Rarity = "Secret";
			MaxWeight = 175000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Infernoclaw";
			Image = "rbxassetid://132674059824956";
			Rarity = "Secret";
			MaxWeight = 200000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Greenland Shark";
			Image = "rbxassetid://117568577676637";
			Rarity = "Legendary";
			MaxWeight = 25000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Blue Whale";
			Image = "rbxassetid://74493645755809";
			Rarity = "Mythic";
			MaxWeight = 50000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Apex Venomjaw";
			Image = "rbxassetid://94238248123414";
			Rarity = "Secret";
			MaxWeight = 215000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Colossal Spider Crab";
			Image = "rbxassetid://114813506621275";
			Rarity = "Mythic";
			MaxWeight = 20000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Tidal Devourer";
			Image = "rbxassetid://121453085797574";
			Rarity = "Secret";
			MaxWeight = 235000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Goblin Shark";
			Image = "rbxassetid://85966503598173";
			Rarity = "Mythic";
			MaxWeight = 27000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Spectral Jellyfish";
			Image = "rbxassetid://136531787451308";
			Rarity = "Secret";
			MaxWeight = 250000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Hubert";
			Image = "rbxassetid://88306476347452";
			Rarity = "Secret";
			MaxWeight = 200000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Leedsichthys";
			Image = "rbxassetid://83192360364235";
			Rarity = "Event";
			MaxWeight = 2500;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Helicoprion";
			Image = "rbxassetid://138760111411496";
			Rarity = "Event";
			MaxWeight = 14000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Kraken";
			Image = "rbxassetid://116334569936082";
			Rarity = "Event";
			MaxWeight = 85000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Bloop";
			Image = "rbxassetid://137940680784234";
			Rarity = "Event";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Dunkleosteus";
			Image = "rbxassetid://87221838094551";
			Rarity = "Secret";
			MaxWeight = 210000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Cursefin";
			Image = "rbxassetid://140135453004203";
			Rarity = "Event";
			MaxWeight = 2500;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Zombiegill";
			Image = "rbxassetid://91961562076532";
			Rarity = "Event";
			MaxWeight = 14000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Frostbite Phantom";
			Image = "rbxassetid://74966552987596";
			Rarity = "Secret";
			MaxWeight = 300000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Bloodjaw Barracuda";
			Image = "rbxassetid://132296493911316";
			Rarity = "Event";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Pufferpunk";
			Image = "rbxassetid://90493846171974";
			Rarity = "Secret";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Abyssion";
			Image = "rbxassetid://98496005359967";
			Rarity = "Secret";
			MaxWeight = 285000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Fangzilla";
			Image = "rbxassetid://71197719490894";
			Rarity = "Secret";
			MaxWeight = 270000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Giant Trevally";
			Image = "rbxassetid://126148186471155";
			Rarity = "Legendary";
			MaxWeight = 160;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Giant Fangtooth";
			Image = "rbxassetid://109103716440236";
			Rarity = "Legendary";
			MaxWeight = 1400;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Giant Barracuda";
			Image = "rbxassetid://76559053766262";
			Rarity = "Mythic";
			MaxWeight = 21000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Giant Bull Shark";
			Image = "rbxassetid://140068743770950";
			Rarity = "Legendary";
			MaxWeight = 24000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Spinosaurus";
			Image = "rbxassetid://103072066608347";
			Rarity = "Secret";
			MaxWeight = 200000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Bloop Eating Megalodon";
			Image = "rbxassetid://131764025807755";
			Rarity = "⚠️CLASSIFIED";
			MaxWeight = 350000;
			Region = "Classified";
			Long = true;
		}, {
			Name = "Trippi Troppi";
			Image = "rbxassetid://92385078072471";
			Rarity = "Event";
			MaxWeight = 2500;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Chef Crabracadabra";
			Image = "rbxassetid://126286269185787";
			Rarity = "Event";
			MaxWeight = 14000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Bluberrini Octopus";
			Image = "rbxassetid://132019871176958";
			Rarity = "Event";
			MaxWeight = 85000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Tralalero Tralala";
			Image = "rbxassetid://137397958710583";
			Rarity = "Event";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Widemouth Reaper";
			Image = "rbxassetid://122571240465645";
			Rarity = "Secret";
			MaxWeight = 300000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Titanaboa";
			Image = "rbxassetid://76009835857996";
			Rarity = "Secret";
			MaxWeight = 315000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Coal";
			Image = "rbxassetid://73848997490025";
			Rarity = "Event";
			MaxWeight = 500;
			Region = "All Zones";
			Long = true;
		}, {
			Name = "Goliath Box Jelly";
			Image = "rbxassetid://117783356368917";
			Rarity = "Secret";
			MaxWeight = 230000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Santa Bloop";
			Image = "rbxassetid://112183298379799";
			Rarity = "Secret";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Present";
			Image = "rbxassetid://109092164463821";
			Rarity = "Event";
			MaxWeight = 500;
			Region = "Coastal Waters";
			Long = true;
		}, {
			Name = "Big Present";
			Image = "rbxassetid://70741063969049";
			Rarity = "Event";
			MaxWeight = 5000;
			Region = "Open Sea";
			Long = true;
		}, {
			Name = "Pile O' Presents";
			Image = "rbxassetid://71136604997725";
			Rarity = "Event";
			MaxWeight = 50000;
			Region = "Abyssal Waters";
			Long = true;
		}, {
			Name = "Santa's Sleigh";
			Image = "rbxassetid://115466967292640";
			Rarity = "Event";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Jingle Puffer";
			Image = "rbxassetid://80317216434076";
			Rarity = "Event";
			MaxWeight = 2500;
			Region = "Coastal Waters";
			Long = true;
			EventPoints = 1;
			CanMerge = true;
			CanMergeInto = false;
			MergeValue = 2;
		}, {
			Name = "Jolly Penguin";
			Image = "rbxassetid://137949210363856";
			Rarity = "Event";
			MaxWeight = 14000;
			Region = "Open Sea";
			Long = true;
			EventPoints = 10;
			CanMerge = true;
			CanMergeInto = true;
			MergeValue = 20;
		}, {
			Name = "Antlerfin";
			Image = "rbxassetid://77462628076671";
			Rarity = "Event";
			MaxWeight = 85000;
			Region = "Abyssal Waters";
			Long = true;
			EventPoints = 100;
			CanMerge = true;
			CanMergeInto = true;
			MergeValue = 200;
		}, {
			Name = "Northstar Narwhal";
			Image = "rbxassetid://126934216932879";
			Rarity = "Event";
			MaxWeight = 265000;
			Region = "Eternal Trench";
			Long = true;
			EventPoints = 1000;
			CanMerge = true;
			CanMergeInto = true;
			MergeValue = 1000;
		}, {
			Name = "Santa Widemouth Reaper";
			Image = "rbxassetid://96710867435321";
			Rarity = "Secret";
			MaxWeight = 320000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Ghost Glider";
			Image = "rbxassetid://92761287733341";
			Rarity = "Secret";
			MaxWeight = 225000;
			Region = "All Zones";
			Long = true;
			EventPoints = 5000;
			CanMerge = false;
			CanMergeInto = true;
			MergeValue = 5000;
		}, {
			Name = "Christmas 2025 Trophy";
			Image = "";
			Rarity = "⚠️CLASSIFIED";
			MaxWeight = 1000000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Pyrosquid";
			Image = "rbxassetid://105469194856142";
			Rarity = "Secret";
			MaxWeight = 245000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Scuttlefin";
			Image = "";
			Rarity = "Secret";
			MaxWeight = 290000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Folktale Legend";
			Image = "rbxassetid://104974645505837";
			Rarity = "Secret";
			MaxWeight = 350000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Interstellar Swimmer";
			Image = "rbxassetid://126334965631071";
			Rarity = "Secret";
			MaxWeight = 375000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Easter 2026 Trophy";
			Image = "";
			Rarity = "⚠️CLASSIFIED";
			MaxWeight = 1000000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Pastel Abyssal";
			Image = "rbxassetid://84270971042352";
			Rarity = "Secret";
			MaxWeight = 380000;
			Region = "Voidwater Expanse";
			Long = true;
		}, {
			Name = "Common Easter Egg";
			Image = "";
			Rarity = "Common";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Uncommon Easter Egg";
			Image = "";
			Rarity = "Uncommon";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Rare Easter Egg";
			Image = "";
			Rarity = "Rare";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Epic Easter Egg";
			Image = "";
			Rarity = "Epic";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Legendary Easter Egg";
			Image = "";
			Rarity = "Legendary";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Mythic Easter Egg";
			Image = "";
			Rarity = "Mythic";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "Secret Easter Egg";
			Image = "";
			Rarity = "Secret";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}, {
			Name = "⚠️CLASSIFIED Easter Egg";
			Image = "";
			Rarity = "⚠️CLASSIFIED";
			MaxWeight = 100000;
			Region = "Eternal Trench";
			Long = true;
		}};
		Bait = {{
			Name = "Jar O' Worms";
			Rarity = "Common";
			Price = 250;
			MaxStock = 5;
			Image = "";
			Time = 15;
			Luck = 0.5;
			Id = 1;
		}, {
			Name = "Jar O' Grubs";
			Rarity = "Uncommon";
			Price = 1500;
			MaxStock = 3;
			Image = "";
			Time = 15;
			Luck = 1;
			Id = 2;
		}, {
			Name = "Jar O' Leeches";
			Rarity = "Rare";
			Price = 5000;
			MaxStock = 2;
			Image = "";
			Time = 15;
			Luck = 2;
			Id = 3;
		}, {
			Name = "Jar O' Fireflies";
			Rarity = "Epic";
			Price = 65000;
			MaxStock = 1;
			Image = "";
			Time = 15;
			Luck = 3;
			Id = 4;
		}, {
			Name = "Jar O' Gold Bugs";
			Rarity = "Legendary";
			Price = 325000;
			MaxStock = 1;
			Image = "";
			Time = 15;
			Luck = 5;
			Id = 5;
		}, {
			Name = "Jar O' Ancient Larvae";
			Rarity = "Mythic";
			Price = 620000;
			MaxStock = 1;
			Image = "";
			Time = 10;
			Luck = 9;
			Id = 6;
		}, {
			Name = "Jar O' Voidflies";
			Rarity = "Secret";
			Price = 1250000;
			MaxStock = 1;
			Image = "";
			Time = 5;
			Luck = 10;
			Id = 7;
		}, {
			Name = "Jar O' Mutations";
			Rarity = "Epic";
			Price = 100000;
			MaxStock = 1;
			Image = "";
			Time = 15;
			Luck = 3;
			MutationChance = 10;
			Id = 8;
		}, {
			Name = "Jar O' Weights";
			Rarity = "Secret";
			Price = 5000000;
			MaxStock = 0;
			Image = "";
			Time = 15;
			Luck = 10;
			WeightLuck = 2;
			Id = 9;
		}, {
			Name = "Jar O' Easter Eggs";
			Rarity = "Secret";
			Price = 5000000;
			MaxStock = 0;
			Image = "";
			Time = 25;
			Luck = 10;
			WeightLuck = 2;
			Id = 10;
		}};
	};
	Regions = {
		Shore = {
			MinDistance = 0;
			MaxDistance = 65;
		};
		["Coastal Waters"] = {
			MinDistance = 65;
			MaxDistance = 136;
		};
		["Open Sea"] = {
			MinDistance = 136;
			MaxDistance = 278;
		};
		["Abyssal Waters"] = {
			MinDistance = 278;
			MaxDistance = 443;
		};
		["Eternal Trench"] = {
			MinDistance = 443;
			MaxDistance = 603;
		};
		["Voidwater Expanse"] = {
			MinDistance = 603;
			MaxDistance = 763;
		};
		["Final Horizon"] = {
			MinDistance = 763;
			MaxDistance = 963;
		};
	};
	Consumers = {{
		Name = "Noob";
		Image = "";
		Rarity = "Common";
		Multiplier = 1;
	}, {
		Name = "Tourist";
		Image = "";
		Rarity = "Common";
		Multiplier = 1.1;
	}, {
		Name = "Tourist";
		Image = "";
		Rarity = "Common";
		Multiplier = 1.1;
	}, {
		Name = "Fisherman";
		Image = "";
		Rarity = "Uncommon";
		Multiplier = 1.2;
	}, {
		Name = "Pirate";
		Image = "";
		Rarity = "Uncommon";
		Multiplier = 1.3;
	}, {
		Name = "Chef";
		Image = "";
		Rarity = "Rare";
		Multiplier = 1.4;
	}, {
		Name = "Scuba Diver";
		Image = "";
		Rarity = "Rare";
		Multiplier = 1.5;
	}, {
		Name = "Merchant";
		Image = "";
		Rarity = "Epic";
		Multiplier = 1.7;
	}, {
		Name = "Sailor";
		Image = "";
		Rarity = "Epic";
		Multiplier = 1.9;
	}, {
		Name = "Wizard";
		Image = "";
		Rarity = "Epic";
		Multiplier = 2;
	}, {
		Name = "Collector";
		Image = "";
		Rarity = "Legendary";
		Multiplier = 2.3;
	}, {
		Name = "King";
		Image = "";
		Rarity = "Legendary";
		Multiplier = 2.5;
	}, {
		Name = "Businessman";
		Image = "";
		Rarity = "Legendary";
		Multiplier = 3;
	}, {
		Name = "Alien";
		Image = "";
		Rarity = "Mythic";
		Multiplier = 5;
	}, {
		Name = "Totally Normal Guy";
		Image = "";
		Rarity = "Mythic";
		Multiplier = 6;
	}};
	Values = {
		Loot = {
			Crab = {
				Value = 1;
			};
			Starfish = {
				Value = 3;
			};
			Clownfish = {
				Value = 8;
			};
			Seahorse = {
				Value = 15;
			};
			Jellyfish = {
				Value = 30;
			};
			Lobster = {
				Value = 55;
			};
			Pufferfish = {
				Value = 65;
			};
			["Ringed Octopus"] = {
				Value = 90;
			};
			Lionfish = {
				Value = 145;
			};
			Salmon = {
				Value = 215;
			};
			Swordfish = {
				Value = 350;
			};
			Sunfish = {
				Value = 400;
			};
			Sailfish = {
				Value = 550;
			};
			["Bluefin Tuna"] = {
				Value = 890;
			};
			Stingray = {
				Value = 1360;
			};
			Sawfish = {
				Value = 1450;
			};
			["Giant Trevally"] = {
				Value = 1500;
			};
			["Angler Fish"] = {
				Value = 1850;
			};
			["Giant Fangtooth"] = {
				Value = 2000;
			};
			Crocodile = {
				Value = 2500;
			};
			["Hammerhead Shark"] = {
				Value = 4570;
			};
			["Great White Shark"] = {
				Value = 7800;
			};
			Dolphin = {
				Value = 12000;
			};
			["Goliath Grouper"] = {
				Value = 18000;
			};
			["Manta Ray"] = {
				Value = 25000;
			};
			Oarfish = {
				Value = 30000;
			};
			["Giant Bull Shark"] = {
				Value = 33000;
			};
			["Greenland Shark"] = {
				Value = 38000;
			};
			["Giant Squid"] = {
				Value = 14850;
			};
			Orca = {
				Value = 23650;
			};
			["Basking Shark"] = {
				Value = 55000;
			};
			["Giant Barracuda"] = {
				Value = 57500;
			};
			["Megamouth Shark"] = {
				Value = 60000;
			};
			["Whale Shark"] = {
				Value = 68000;
			};
			["Colossal Spider Crab"] = {
				Value = 71000;
			};
			["Goblin Shark"] = {
				Value = 76000;
			};
			["Blue Whale"] = {
				Value = 80000;
			};
			Mosasaurus = {
				Value = 88750;
			};
			Megalodon = {
				Value = 135000;
			};
			Leviathan = {
				Value = 168000;
			};
			["Abyssal Squid"] = {
				Value = 275000;
			};
			["Serpent Leviathan"] = {
				Value = 330000;
			};
			Luminjaw = {
				Value = 365000;
			};
			["Darkstar Leviathan"] = {
				Value = 395000;
			};
			Infernoclaw = {
				Value = 425000;
			};
			["Apex Venomjaw"] = {
				Value = 465000;
			};
			["Tidal Devourer"] = {
				Value = 480000;
			};
			["Spectral Jellyfish"] = {
				Value = 600000;
			};
			Hubert = {
				Value = 615000;
			};
			Leedsichthys = {
				Value = 8000;
			};
			Helicoprion = {
				Value = 45000;
			};
			Kraken = {
				Value = 350000;
			};
			Bloop = {
				Value = 595000;
			};
			Dunkleosteus = {
				Value = 625000;
			};
			Cursefin = {
				Value = 8000;
			};
			Zombiegill = {
				Value = 45000;
			};
			["Frostbite Phantom"] = {
				Value = 710000;
			};
			["Bloodjaw Barracuda"] = {
				Value = 700000;
			};
			Pufferpunk = {
				Value = 575000;
			};
			Abyssion = {
				Value = 580000;
			};
			Fangzilla = {
				Value = 640000;
			};
			Spinosaurus = {
				Value = 645000;
			};
			["Trippi Troppi"] = {
				Value = 7000;
			};
			["Chef Crabracadabra"] = {
				Value = 40000;
			};
			["Bluberrini Octopus"] = {
				Value = 310000;
			};
			["Tralalero Tralala"] = {
				Value = 500000;
			};
			["Widemouth Reaper"] = {
				Value = 655000;
			};
			Titanaboa = {
				Value = 650000;
			};
			["Bloop Eating Megalodon"] = {
				Value = 800000;
			};
			Coal = {
				Value = 7000;
			};
			["Jolly Snowfish"] = {
				Value = 625000;
			};
			["Santa Bloop"] = {
				Value = 650000;
			};
			Present = {
				Value = 8000;
			};
			["Big Present"] = {
				Value = 45000;
			};
			["Pile O' Presents"] = {
				Value = 350000;
			};
			["Santa's Sleigh"] = {
				Value = 595000;
			};
			["Jingle Puffer"] = {
				Value = 8000;
			};
			["Jolly Penguin"] = {
				Value = 45000;
			};
			Antlerfin = {
				Value = 350000;
			};
			["Northstar Narwhal"] = {
				Value = 595000;
			};
			["Santa Widemouth Reaper"] = {
				Value = 660000;
			};
			["Ghost Glider"] = {
				Value = 653000;
			};
			["Christmas 2025 Trophy"] = {
				Value = 75000000;
			};
			["Easter 2026 Trophy"] = {
				Value = 150000000;
			};
			Pyrosquid = {
				Value = 685000;
			};
			Scuttlefin = {
				Value = 690000;
			};
			["Folktale Legend"] = {
				Value = 800000;
			};
			["Interstellar Swimmer"] = {
				Value = 850000;
			};
			["Pastel Abyssal"] = {
				Value = 850000;
			};
			["Common Easter Egg"] = {
				Value = 50;
			};
			["Uncommon Easter Egg"] = {
				Value = 100;
			};
			["Rare Easter Egg"] = {
				Value = 250;
			};
			["Epic Easter Egg"] = {
				Value = 1000;
			};
			["Legendary Easter Egg"] = {
				Value = 5000;
			};
			["Mythic Easter Egg"] = {
				Value = 25000;
			};
			["Secret Easter Egg"] = {
				Value = 100000;
			};
			["⚠️CLASSIFIED Easter Egg"] = {
				Value = 200000;
			};
		};
		Mutations = {
			Silver = 2;
			Gold = 5;
			Rainbow = 15;
			Toxic = 20;
			Diamond = 20;
			Ghost = 21;
			Radioactive = 21;
			Void = 22;
			Inferno = 22;
			Amethyst = 23;
			Corrupted = 23;
			Alien = 24;
			Candy = 24;
			Emerald = 25;
			Cursed = 25;
			Fossil = 26;
			Classic = 26;
			Obsidian = 27;
			Frostbite = 27;
			Gifted = 28;
			["Polar Frosted"] = 28;
			["Moon Rock"] = 29;
			Elixir = 29;
			Starry = 30;
			Slime = 30;
			Tiger = 31;
			Bloodmoon = 31;
			Cheese = 32;
			Titanium = 32;
			Hellfire = 33;
			Galaxy = 33;
			Easter = 34;
			Tsunami = 15;
			Fortune = 7;
			Shiny = 10;
		};
	};
	WeightedSizes = {{
		Percentile = 0;
		MaxSizeMultiplier = 1;
	}, {
		Percentile = 5;
		MaxSizeMultiplier = 1.2;
	}, {
		Percentile = 10;
		MaxSizeMultiplier = 1.5;
	}, {
		Percentile = 20;
		MaxSizeMultiplier = 2;
	}, {
		Percentile = 30;
		MaxSizeMultiplier = 3;
	}, {
		Percentile = 50;
		MaxSizeMultiplier = 4;
	}, {
		Percentile = 70;
		MaxSizeMultiplier = 7;
	}, {
		Percentile = 85;
		MaxSizeMultiplier = 9;
	}, {
		Percentile = 93;
		MaxSizeMultiplier = 12;
	}, {
		Percentile = 97;
		MaxSizeMultiplier = 14;
	}, {
		Percentile = 99;
		MaxSizeMultiplier = 16;
	}, {
		Percentile = 100;
		MaxSizeMultiplier = 20;
	}};
	WeightedValues = {{
		Percentile = 0;
		MaxValueMultiplier = 1;
	}, {
		Percentile = 5;
		MaxValueMultiplier = 1.2;
	}, {
		Percentile = 10;
		MaxValueMultiplier = 1.5;
	}, {
		Percentile = 20;
		MaxValueMultiplier = 2;
	}, {
		Percentile = 30;
		MaxValueMultiplier = 2.5;
	}, {
		Percentile = 50;
		MaxValueMultiplier = 4;
	}, {
		Percentile = 70;
		MaxValueMultiplier = 7;
	}, {
		Percentile = 85;
		MaxValueMultiplier = 11;
	}, {
		Percentile = 93;
		MaxValueMultiplier = 16;
	}, {
		Percentile = 97;
		MaxValueMultiplier = 24;
	}, {
		Percentile = 99;
		MaxValueMultiplier = 35;
	}, {
		Percentile = 100;
		MaxValueMultiplier = 50;
	}};
	BaseMutations = {{
		Name = "Silver";
		Chance = 70;
		CageChance = 5;
	}, {
		Name = "Gold";
		Chance = 22;
		CageChance = 5;
	}, {
		Name = "Rainbow";
		Chance = 5;
		CageChance = 5;
	}, {
		Name = "Easter";
		Chance = 3;
		CageChance = 5;
	}};
}
local tbl_7 = {}
local tbl_32 = {}
local function Visual(arg1) -- Line 1817
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Metal
	arg1.Reflectance = 0.2
	arg1.Color = Color3.fromRGB(180, 180, 180)
end
tbl_32.Visual = Visual
tbl_32.Name = "Silver"
tbl_7[1] = tbl_32
local tbl_9 = {}
local function Visual(arg1) -- Line 1828
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Metal
	arg1.BrickColor = BrickColor.new("Gold")
end
tbl_9.Visual = Visual
tbl_9.Name = "Gold"
tbl_7[2] = tbl_9
local tbl_21 = {}
local function Visual(arg1) -- Line 1838
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	game.CollectionService:AddTag(arg1, "Rainbow")
end
tbl_21.Visual = Visual
tbl_21.Name = "Rainbow"
tbl_7[3] = tbl_21
local tbl_2 = {}
local function Visual(arg1) -- Line 1848
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Metal
	arg1.BrickColor = BrickColor.new("Lime green")
end
tbl_2.Visual = Visual
tbl_2.Name = "Toxic"
tbl_7[4] = tbl_2
local tbl_17 = {}
local function Visual(arg1) -- Line 1858
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Glass
	arg1.Transparency = 0.3
	arg1.BrickColor = BrickColor.new("Bright blue")
end
tbl_17.Visual = Visual
tbl_17.Name = "Diamond"
tbl_7[5] = tbl_17
local tbl_10 = {}
local function Visual(arg1) -- Line 1869
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.ForceField
	arg1.BrickColor = BrickColor.new("Black")
end
tbl_10.Visual = Visual
tbl_10.Name = "Ghost"
tbl_7[6] = tbl_10
local tbl_8 = {}
local function Visual(arg1) -- Line 1879
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.CorrodedMetal
	arg1.BrickColor = BrickColor.new("New Yeller")
end
tbl_8.Visual = Visual
tbl_8.Name = "Radioactive"
tbl_7[7] = tbl_8
local tbl_16 = {}
local function Visual(arg1) -- Line 1889
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Neon
	arg1.BrickColor = BrickColor.new("Really black")
end
tbl_16.Visual = Visual
tbl_16.Name = "Void"
tbl_7[8] = tbl_16
local tbl_24 = {}
local function Visual(arg1) -- Line 1899
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.CrackedLava
	arg1.BrickColor = BrickColor.new("Really red")
end
tbl_24.Visual = Visual
tbl_24.Name = "Inferno"
tbl_7[9] = tbl_24
local tbl_25 = {}
local function Visual(arg1) -- Line 1909
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Foil
	arg1.BrickColor = BrickColor.new("Eggplant")
end
tbl_25.Visual = Visual
tbl_25.Name = "Amethyst"
tbl_7[10] = tbl_25
local tbl_35 = {}
local function Visual(arg1) -- Line 1919
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Granite
	arg1.BrickColor = BrickColor.new("Really red")
end
tbl_35.Visual = Visual
tbl_35.Name = "Corrupted"
tbl_7[11] = tbl_35
local tbl_27 = {}
local function Visual(arg1) -- Line 1929
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.CrackedLava
	arg1.BrickColor = BrickColor.new("Teal")
end
tbl_27.Visual = Visual
tbl_27.Name = "Alien"
tbl_7[12] = tbl_27
local tbl_11 = {}
local function Visual(arg1) -- Line 1939
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Sand
	arg1.BrickColor = BrickColor.new("Pink")
end
tbl_11.Visual = Visual
tbl_11.Name = "Candy"
tbl_7[13] = tbl_11
local tbl_12 = {}
local function Visual(arg1) -- Line 1949
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Foil
	arg1.BrickColor = BrickColor.new("Lime green")
end
tbl_12.Visual = Visual
tbl_12.Name = "Emerald"
tbl_7[14] = tbl_12
local tbl_3 = {}
local function Visual(arg1) -- Line 1959
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.ForceField
	arg1.BrickColor = BrickColor.new("Institutional white")
end
tbl_3.Visual = Visual
tbl_3.Name = "Cursed"
tbl_7[15] = tbl_3
local tbl_14 = {}
local function Visual(arg1) -- Line 1969
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Sand
	arg1.BrickColor = BrickColor.new("Cyan")
end
tbl_14.Visual = Visual
tbl_14.Name = "Tsunami"
tbl_7[16] = tbl_14
local tbl_20 = {}
local function Visual(arg1) -- Line 1979
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Basalt
	arg1.BrickColor = BrickColor.new("Fawn brown")
end
tbl_20.Visual = Visual
tbl_20.Name = "Fossil"
tbl_7[17] = tbl_20
local tbl = {}
local function Visual(arg1) -- Line 1989
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Plastic
	arg1.MaterialVariant = "Studs"
	arg1.BrickColor = BrickColor.Random()
end
tbl.Visual = Visual
tbl.Name = "Classic"
tbl_7[18] = tbl
local tbl_19 = {}
local function Visual(arg1) -- Line 2000
	local pcall_result1, pcall_result2_11 = pcall(function() -- Line 2001
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Plastic
		local Cash = game.ReplicatedStorage.Resources.Textures.Cash
		local clone_32 = Cash:Clone()
		clone_32.Face = Enum.NormalId.Front
		clone_32.Parent = arg1
		local clone_67 = Cash:Clone()
		clone_67.Face = Enum.NormalId.Back
		clone_67.Parent = arg1
		local clone_79 = Cash:Clone()
		clone_79.Face = Enum.NormalId.Left
		clone_79.Parent = arg1
		local clone_8 = Cash:Clone()
		clone_8.Face = Enum.NormalId.Right
		clone_8.Parent = arg1
		local clone_52 = Cash:Clone()
		clone_52.Face = Enum.NormalId.Top
		clone_52.Parent = arg1
		local clone_75 = Cash:Clone()
		clone_75.Face = Enum.NormalId.Bottom
		clone_75.Parent = arg1
	end)
	if not pcall_result1 then
		warn(pcall_result2_11)
	end
end
tbl_19.Visual = Visual
tbl_19.Name = "Fortune"
tbl_7[19] = tbl_19
local tbl_31 = {}
local function Visual(arg1) -- Line 2041
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Glacier
	arg1.BrickColor = BrickColor.new("Really black")
end
tbl_31.Visual = Visual
tbl_31.Name = "Obsidian"
tbl_7[20] = tbl_31
local tbl_13 = {}
local function Visual(arg1) -- Line 2051
	if arg1:IsA("MeshPart") then
		arg1.TextureID = ""
	end
	arg1.Material = Enum.Material.Glacier
	arg1.Color = Color3.fromRGB(143, 225, 255)
end
tbl_13.Visual = Visual
tbl_13.Name = "Frostbite"
tbl_7[21] = tbl_13
local tbl_15 = {}
local function Visual(arg1) -- Line 2061
	local pcall_result1_8, pcall_result2_7 = pcall(function() -- Line 2062
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Plastic
		arg1.BrickColor = BrickColor.Random()
		local var331 = game.ReplicatedStorage.Resources.Textures[`Gift{Random.new():NextInteger(1, 4)}`]
		local clone_72 = var331:Clone()
		clone_72.Face = Enum.NormalId.Front
		clone_72.Parent = arg1
		local clone_13 = var331:Clone()
		clone_13.Face = Enum.NormalId.Back
		clone_13.Parent = arg1
		local clone_63 = var331:Clone()
		clone_63.Face = Enum.NormalId.Left
		clone_63.Parent = arg1
		local clone_35 = var331:Clone()
		clone_35.Face = Enum.NormalId.Right
		clone_35.Parent = arg1
		local clone_44 = var331:Clone()
		clone_44.Face = Enum.NormalId.Top
		clone_44.Parent = arg1
		local clone_2 = var331:Clone()
		clone_2.Face = Enum.NormalId.Bottom
		clone_2.Parent = arg1
	end)
	if not pcall_result1_8 then
		warn(pcall_result2_7)
	end
end
tbl_15.Visual = Visual
tbl_15.Name = "Gifted"
tbl_7[22] = tbl_15
local tbl_5 = {}
local function Visual(arg1) -- Line 2103
	local pcall_result1_5, pcall_result2_14 = pcall(function() -- Line 2104
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Glass
		arg1.Color = Color3.fromRGB(4, 175, 236)
		local Polar_Frosted = game.ReplicatedStorage.Resources.Textures["Polar Frosted"]
		local clone_53 = Polar_Frosted:Clone()
		clone_53.Face = Enum.NormalId.Front
		clone_53.Parent = arg1
		local clone_24 = Polar_Frosted:Clone()
		clone_24.Face = Enum.NormalId.Back
		clone_24.Parent = arg1
		local clone_18 = Polar_Frosted:Clone()
		clone_18.Face = Enum.NormalId.Left
		clone_18.Parent = arg1
		local clone_23 = Polar_Frosted:Clone()
		clone_23.Face = Enum.NormalId.Right
		clone_23.Parent = arg1
		local clone_19 = Polar_Frosted:Clone()
		clone_19.Face = Enum.NormalId.Top
		clone_19.Parent = arg1
		local clone_71 = Polar_Frosted:Clone()
		clone_71.Face = Enum.NormalId.Bottom
		clone_71.Parent = arg1
	end)
	if not pcall_result1_5 then
		warn(pcall_result2_14)
	end
end
tbl_5.Visual = Visual
tbl_5.Name = "Polar Frosted"
tbl_7[23] = tbl_5
local tbl_33 = {}
local function Visual(arg1) -- Line 2145
	local pcall_result1_9, pcall_result2 = pcall(function() -- Line 2146
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Concrete
		arg1.Color = Color3.fromRGB(91, 93, 105)
		local Moon_Rock = game.ReplicatedStorage.Resources.Textures["Moon Rock"]
		local clone_50 = Moon_Rock:Clone()
		clone_50.Face = Enum.NormalId.Front
		clone_50.Parent = arg1
		local clone_28 = Moon_Rock:Clone()
		clone_28.Face = Enum.NormalId.Back
		clone_28.Parent = arg1
		local clone_61 = Moon_Rock:Clone()
		clone_61.Face = Enum.NormalId.Left
		clone_61.Parent = arg1
		local clone_68 = Moon_Rock:Clone()
		clone_68.Face = Enum.NormalId.Right
		clone_68.Parent = arg1
		local clone_9 = Moon_Rock:Clone()
		clone_9.Face = Enum.NormalId.Top
		clone_9.Parent = arg1
		local clone_15 = Moon_Rock:Clone()
		clone_15.Face = Enum.NormalId.Bottom
		clone_15.Parent = arg1
	end)
	if not pcall_result1_9 then
		warn(pcall_result2)
	end
end
tbl_33.Visual = Visual
tbl_33.Name = "Moon Rock"
tbl_7[24] = tbl_33
local tbl_4 = {}
local function Visual(arg1) -- Line 2187
	local pcall_result1_13, pcall_result2_13 = pcall(function() -- Line 2188
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Glass
		arg1.Color = Color3.fromRGB(136, 0, 255)
		local Elixir = game.ReplicatedStorage.Resources.Textures.Elixir
		local clone_69 = Elixir:Clone()
		clone_69.Face = Enum.NormalId.Front
		clone_69.Parent = arg1
		local clone_29 = Elixir:Clone()
		clone_29.Face = Enum.NormalId.Back
		clone_29.Parent = arg1
		local clone = Elixir:Clone()
		clone.Face = Enum.NormalId.Left
		clone.Parent = arg1
		local clone_21 = Elixir:Clone()
		clone_21.Face = Enum.NormalId.Right
		clone_21.Parent = arg1
		local clone_76 = Elixir:Clone()
		clone_76.Face = Enum.NormalId.Top
		clone_76.Parent = arg1
		local clone_12 = Elixir:Clone()
		clone_12.Face = Enum.NormalId.Bottom
		clone_12.Parent = arg1
	end)
	if not pcall_result1_13 then
		warn(pcall_result2_13)
	end
end
tbl_4.Visual = Visual
tbl_4.Name = "Elixir"
tbl_7[25] = tbl_4
local tbl_30 = {}
local function Visual(arg1) -- Line 2229
	local pcall_result1_12, pcall_result2_12 = pcall(function() -- Line 2230
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Glass
		arg1.Color = Color3.fromRGB(255, 157, 0)
		local Starry = game.ReplicatedStorage.Resources.Textures.Starry
		local clone_20 = Starry:Clone()
		clone_20.Face = Enum.NormalId.Front
		clone_20.Parent = arg1
		local clone_73 = Starry:Clone()
		clone_73.Face = Enum.NormalId.Back
		clone_73.Parent = arg1
		local clone_81 = Starry:Clone()
		clone_81.Face = Enum.NormalId.Left
		clone_81.Parent = arg1
		local clone_43 = Starry:Clone()
		clone_43.Face = Enum.NormalId.Right
		clone_43.Parent = arg1
		local clone_51 = Starry:Clone()
		clone_51.Face = Enum.NormalId.Top
		clone_51.Parent = arg1
		local clone_37 = Starry:Clone()
		clone_37.Face = Enum.NormalId.Bottom
		clone_37.Parent = arg1
	end)
	if not pcall_result1_12 then
		warn(pcall_result2_12)
	end
end
tbl_30.Visual = Visual
tbl_30.Name = "Starry"
tbl_7[26] = tbl_30
local tbl_6 = {}
local function Visual(arg1) -- Line 2271
	local pcall_result1_14, pcall_result2_3 = pcall(function() -- Line 2272
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Glass
		arg1.Color = Color3.fromRGB(96, 170, 0)
		local Slime = game.ReplicatedStorage.Resources.Textures.Slime
		local clone_41 = Slime:Clone()
		clone_41.Face = Enum.NormalId.Front
		clone_41.Parent = arg1
		local clone_78 = Slime:Clone()
		clone_78.Face = Enum.NormalId.Back
		clone_78.Parent = arg1
		local clone_16 = Slime:Clone()
		clone_16.Face = Enum.NormalId.Left
		clone_16.Parent = arg1
		local clone_42 = Slime:Clone()
		clone_42.Face = Enum.NormalId.Right
		clone_42.Parent = arg1
		local clone_14 = Slime:Clone()
		clone_14.Face = Enum.NormalId.Top
		clone_14.Parent = arg1
		local clone_17 = Slime:Clone()
		clone_17.Face = Enum.NormalId.Bottom
		clone_17.Parent = arg1
	end)
	if not pcall_result1_14 then
		warn(pcall_result2_3)
	end
end
tbl_6.Visual = Visual
tbl_6.Name = "Slime"
tbl_7[27] = tbl_6
local tbl_18 = {}
local function Visual(arg1) -- Line 2313
	local pcall_result1_10, pcall_result2_4 = pcall(function() -- Line 2314
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Metal
		arg1.Color = Color3.fromRGB(231, 115, 0)
		local Tiger = game.ReplicatedStorage.Resources.Textures.Tiger
		local clone_60 = Tiger:Clone()
		clone_60.Transparency = 0
		clone_60.Face = Enum.NormalId.Front
		clone_60.Parent = arg1
		local clone_25 = Tiger:Clone()
		clone_25.Transparency = 0
		clone_25.Face = Enum.NormalId.Back
		clone_25.Parent = arg1
		local clone_64 = Tiger:Clone()
		clone_64.Transparency = 0
		clone_64.Face = Enum.NormalId.Left
		clone_64.Parent = arg1
		local clone_55 = Tiger:Clone()
		clone_55.Transparency = 0
		clone_55.Face = Enum.NormalId.Right
		clone_55.Parent = arg1
		local clone_3 = Tiger:Clone()
		clone_3.Transparency = 0
		clone_3.Face = Enum.NormalId.Top
		clone_3.Parent = arg1
		local clone_46 = Tiger:Clone()
		clone_46.Transparency = 0
		clone_46.Face = Enum.NormalId.Bottom
		clone_46.Parent = arg1
	end)
	if not pcall_result1_10 then
		warn(pcall_result2_4)
	end
end
tbl_18.Visual = Visual
tbl_18.Name = "Tiger"
tbl_7[28] = tbl_18
local tbl_28 = {}
local function Visual(arg1) -- Line 2361
	local pcall_result1_4, pcall_result2_10 = pcall(function() -- Line 2362
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Neon
		arg1.Color = Color3.fromRGB(138, 0, 0)
		local Bloodmoon = game.ReplicatedStorage.Resources.Textures.Bloodmoon
		local clone_36 = Bloodmoon:Clone()
		clone_36.Transparency = 0
		clone_36.Face = Enum.NormalId.Front
		clone_36.Parent = arg1
		local clone_4 = Bloodmoon:Clone()
		clone_4.Transparency = 0
		clone_4.Face = Enum.NormalId.Back
		clone_4.Parent = arg1
		local clone_6 = Bloodmoon:Clone()
		clone_6.Transparency = 0
		clone_6.Face = Enum.NormalId.Left
		clone_6.Parent = arg1
		local clone_33 = Bloodmoon:Clone()
		clone_33.Transparency = 0
		clone_33.Face = Enum.NormalId.Right
		clone_33.Parent = arg1
		local clone_70 = Bloodmoon:Clone()
		clone_70.Transparency = 0
		clone_70.Face = Enum.NormalId.Top
		clone_70.Parent = arg1
		local clone_74 = Bloodmoon:Clone()
		clone_74.Transparency = 0
		clone_74.Face = Enum.NormalId.Bottom
		clone_74.Parent = arg1
	end)
	if not pcall_result1_4 then
		warn(pcall_result2_10)
	end
end
tbl_28.Visual = Visual
tbl_28.Name = "Bloodmoon"
tbl_7[29] = tbl_28
local tbl_23 = {}
local function Visual(arg1) -- Line 2409
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 2410
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Plastic
		arg1.Color = Color3.fromRGB(255, 176, 0)
		local Cheese = game.ReplicatedStorage.Resources.Textures.Cheese
		local clone_11 = Cheese:Clone()
		clone_11.Transparency = 0
		clone_11.Face = Enum.NormalId.Front
		clone_11.Parent = arg1
		local clone_48 = Cheese:Clone()
		clone_48.Transparency = 0
		clone_48.Face = Enum.NormalId.Back
		clone_48.Parent = arg1
		local clone_65 = Cheese:Clone()
		clone_65.Transparency = 0
		clone_65.Face = Enum.NormalId.Left
		clone_65.Parent = arg1
		local clone_30 = Cheese:Clone()
		clone_30.Transparency = 0
		clone_30.Face = Enum.NormalId.Right
		clone_30.Parent = arg1
		local clone_7 = Cheese:Clone()
		clone_7.Transparency = 0
		clone_7.Face = Enum.NormalId.Top
		clone_7.Parent = arg1
		local clone_54 = Cheese:Clone()
		clone_54.Transparency = 0
		clone_54.Face = Enum.NormalId.Bottom
		clone_54.Parent = arg1
	end)
	if not pcall_result1_3 then
		warn(pcall_result2_2)
	end
end
tbl_23.Visual = Visual
tbl_23.Name = "Cheese"
tbl_7[30] = tbl_23
local tbl_34 = {}
local function Visual(arg1) -- Line 2457
	local pcall_result1_6, pcall_result2_9 = pcall(function() -- Line 2458
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Material = Enum.Material.Plastic
		arg1.Color = Color3.fromRGB(91, 93, 105)
		local Titanium = game.ReplicatedStorage.Resources.Textures.Titanium
		local clone_45 = Titanium:Clone()
		clone_45.Transparency = 0
		clone_45.Face = Enum.NormalId.Front
		clone_45.Parent = arg1
		local clone_31 = Titanium:Clone()
		clone_31.Transparency = 0
		clone_31.Face = Enum.NormalId.Back
		clone_31.Parent = arg1
		local clone_49 = Titanium:Clone()
		clone_49.Transparency = 0
		clone_49.Face = Enum.NormalId.Left
		clone_49.Parent = arg1
		local clone_56 = Titanium:Clone()
		clone_56.Transparency = 0
		clone_56.Face = Enum.NormalId.Right
		clone_56.Parent = arg1
		local clone_77 = Titanium:Clone()
		clone_77.Transparency = 0
		clone_77.Face = Enum.NormalId.Top
		clone_77.Parent = arg1
		local clone_83 = Titanium:Clone()
		clone_83.Transparency = 0
		clone_83.Face = Enum.NormalId.Bottom
		clone_83.Parent = arg1
	end)
	if not pcall_result1_6 then
		warn(pcall_result2_9)
	end
end
tbl_34.Visual = Visual
tbl_34.Name = "Titanium"
tbl_7[31] = tbl_34
local tbl_29 = {}
local function Visual(arg1) -- Line 2505
	local pcall_result1_7, pcall_result2_5 = pcall(function() -- Line 2506
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Color = Color3.fromRGB(255, 128, 0)
		arg1.Material = Enum.Material.Neon
		local Hellfire = game.ReplicatedStorage.Resources.Textures.Hellfire
		local clone_38 = Hellfire:Clone()
		clone_38.Transparency = 0
		clone_38.Face = Enum.NormalId.Front
		clone_38.Parent = arg1
		local clone_80 = Hellfire:Clone()
		clone_80.Transparency = 0
		clone_80.Face = Enum.NormalId.Back
		clone_80.Parent = arg1
		local clone_59 = Hellfire:Clone()
		clone_59.Transparency = 0
		clone_59.Face = Enum.NormalId.Left
		clone_59.Parent = arg1
		local clone_84 = Hellfire:Clone()
		clone_84.Transparency = 0
		clone_84.Face = Enum.NormalId.Right
		clone_84.Parent = arg1
		local clone_10 = Hellfire:Clone()
		clone_10.Transparency = 0
		clone_10.Face = Enum.NormalId.Top
		clone_10.Parent = arg1
		local clone_62 = Hellfire:Clone()
		clone_62.Transparency = 0
		clone_62.Face = Enum.NormalId.Bottom
		clone_62.Parent = arg1
	end)
	if not pcall_result1_7 then
		warn(pcall_result2_5)
	end
end
tbl_29.Visual = Visual
tbl_29.Name = "Hellfire"
tbl_7[32] = tbl_29
local tbl_26 = {}
local function Visual(arg1) -- Line 2553
	local pcall_result1_11, pcall_result2_6 = pcall(function() -- Line 2554
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Color = Color3.fromRGB(255, 128, 0)
		arg1.Material = Enum.Material.Neon
		local Galaxy = game.ReplicatedStorage.Resources.Textures.Galaxy
		local clone_82 = Galaxy:Clone()
		clone_82.Transparency = 0
		clone_82.Face = Enum.NormalId.Front
		clone_82.Parent = arg1
		local clone_39 = Galaxy:Clone()
		clone_39.Transparency = 0
		clone_39.Face = Enum.NormalId.Back
		clone_39.Parent = arg1
		local clone_5 = Galaxy:Clone()
		clone_5.Transparency = 0
		clone_5.Face = Enum.NormalId.Left
		clone_5.Parent = arg1
		local clone_47 = Galaxy:Clone()
		clone_47.Transparency = 0
		clone_47.Face = Enum.NormalId.Right
		clone_47.Parent = arg1
		local clone_22 = Galaxy:Clone()
		clone_22.Transparency = 0
		clone_22.Face = Enum.NormalId.Top
		clone_22.Parent = arg1
		local clone_40 = Galaxy:Clone()
		clone_40.Transparency = 0
		clone_40.Face = Enum.NormalId.Bottom
		clone_40.Parent = arg1
	end)
	if not pcall_result1_11 then
		warn(pcall_result2_6)
	end
end
tbl_26.Visual = Visual
tbl_26.Name = "Galaxy"
tbl_7[33] = tbl_26
local tbl_22 = {}
local function Visual(arg1) -- Line 2601
	local pcall_result1_2, pcall_result2_8 = pcall(function() -- Line 2602
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:IsA("MeshPart") then
			arg1.TextureID = ""
		end
		arg1.Color = Color3.fromRGB(255, 128, 0)
		arg1.Material = Enum.Material.Neon
		local Easter = game.ReplicatedStorage.Resources.Textures.Easter
		local clone_58 = Easter:Clone()
		clone_58.Transparency = 0
		clone_58.Face = Enum.NormalId.Front
		clone_58.Parent = arg1
		local clone_57 = Easter:Clone()
		clone_57.Transparency = 0
		clone_57.Face = Enum.NormalId.Back
		clone_57.Parent = arg1
		local clone_66 = Easter:Clone()
		clone_66.Transparency = 0
		clone_66.Face = Enum.NormalId.Left
		clone_66.Parent = arg1
		local clone_34 = Easter:Clone()
		clone_34.Transparency = 0
		clone_34.Face = Enum.NormalId.Right
		clone_34.Parent = arg1
		local clone_27 = Easter:Clone()
		clone_27.Transparency = 0
		clone_27.Face = Enum.NormalId.Top
		clone_27.Parent = arg1
		local clone_85 = Easter:Clone()
		clone_85.Transparency = 0
		clone_85.Face = Enum.NormalId.Bottom
		clone_85.Parent = arg1
	end)
	if not pcall_result1_2 then
		warn(pcall_result2_8)
	end
end
tbl_22.Visual = Visual
tbl_22.Name = "Easter"
tbl_7[34] = tbl_22
module.BaseMutationVisuals = tbl_7
module.SecondaryMutations = {{
	Name = "Shiny";
	Chance = 1;
	CageChance = 50;
}}
module.SecondaryMutationVisuals = {{
	Visual = function(arg1) -- Line 2665, Named "Visual"
		local maximum = math.max(arg1.Size.X, arg1.Size.Y, arg1.Size.Z)
		local clone_26 = game.ReplicatedStorage.Resources.Interface.Shiny:Clone()
		clone_26.Size = UDim2.new(maximum * 1.5, 0, maximum * 1.5)
		game.CollectionService:AddTag(arg1, "Shiny")
		clone_26.Parent = arg1
	end;
	Name = "Shiny";
}}
module.MutatedEvents = {{
	Name = "Silver";
	OriginalChance = 3.75;
	NewChance = 10;
}, {
	Name = "Gold";
	OriginalChance = 1;
	NewChance = 3;
}, {
	Name = "Rainbow";
	OriginalChance = 0.25;
	NewChance = 1;
}, {
	Name = "Shiny";
	OriginalChance = 0.25;
	NewChance = 1;
}, {
	Name = "Easter";
	OriginalChance = 0.15;
	NewChance = 0.9;
}}
module.MutatedEventColors = {{
	SkyColor = Color3.fromRGB(149, 149, 149);
	WaterColor = Color3.fromRGB(149, 149, 149);
}, {
	SkyColor = Color3.fromRGB(255, 170, 0);
	WaterColor = Color3.fromRGB(255, 170, 0);
}, {
	SkyColor = Color3.fromRGB(255, 170, 255);
	WaterColor = Color3.fromRGB(255, 170, 255);
}, {
	SkyColor = Color3.fromRGB(216, 216, 216);
	WaterColor = Color3.fromRGB(216, 216, 216);
}, {
	SkyColor = Color3.fromRGB(255, 0, 0);
	WaterColor = Color3.fromRGB(255, 119, 0);
}, {
	SkyColor = Color3.fromRGB(81, 1, 255);
	WaterColor = Color3.fromRGB(166, 106, 255);
}}
module.ShipwreckEvent = {{{
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 2000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Plastic Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 10000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Iron Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 50000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Shark Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 250000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Crystal Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 1000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Moonlight Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 5000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 10000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 17000000;
	Weight = 0.35;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 17000000;
	Weight = 0.35;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.1;
}}}
module.HuntEvent = {{
	EggType = "Common";
	EggId = 90;
}, {
	EggType = "Uncommon";
	EggId = 91;
}, {
	EggType = "Rare";
	EggId = 92;
}, {
	EggType = "Epic";
	EggId = 93;
}, {
	EggType = "Legendary";
	EggId = 94;
}, {
	EggType = "Mythic";
	EggId = 95;
}, {
	EggType = "Mythic";
	EggId = 95;
}, {
	EggType = "Secret";
	EggId = 96;
}, {
	EggType = "⚠️CLASSIFIED";
	EggId = 97;
}}
module.IceEvent = {{{
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 2000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 135;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Luck I";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Crystal Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Plastic Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 10000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 650;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Luck II";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Diamond Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Iron Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 50000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 3500;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Cash I";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Moonlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Shark Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 250000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 17000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Cash II";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Sunlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Crystal Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 1000000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 65000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Cash III";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Sunlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Moonlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 5000000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 350000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Catching Speed I";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Sunlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 10000000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 650000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Catching Speed II";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Angelic Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 17000000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 1200000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Catching Speed III";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Radioactive Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 20000000;
	Weight = 0.15;
}, {
	Type = "Elixir";
	Value = 1500000;
	Weight = 0.15;
}, {
	Type = "Enchant";
	Value = "Catching Speed III";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Radioactive Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.025;
}}}
module.MeteorEvent = {{{
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 2000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 135;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Luck I";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Plastic Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 10000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 500;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Luck II";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Iron Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 30000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 3000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Cash I";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Shark Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 200000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 14000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Cash II";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Crystal Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 750000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 50000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Cash III";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Sunlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Moonlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 4000000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 250000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Catching Speed I";
	Weight = 0.075;
}, {
	Type = "LuckyBlock";
	Value = "Sunlight Lucky Block";
	Weight = 0.05;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 7500000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 500000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Catching Speed II";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 10000000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 1000000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Catching Speed III";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.025;
}}, {{
	Type = "Bait";
	Value = "Jar O' Weights";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 15000000;
	Weight = 0.175;
}, {
	Type = "Elixir";
	Value = 1250000;
	Weight = 0.175;
}, {
	Type = "Enchant";
	Value = "Fish Weight I";
	Weight = 0.075;
}, {
	Type = "Cage";
	Value = "Radioactive Cage";
	Weight = 0.025;
}}}
module.EasterEvent = {{{
	Type = "EasterTokens";
	Value = 10;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Luck I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 20;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Luck I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 30;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Luck II";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 35;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Luck II";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 40;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Cash I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 50;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Cash I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 60;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Cash II";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 70;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Cash II";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 80;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Cash III";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 100;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Catching Speed I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 200;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Catching Speed I";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 500;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Catching Speed II";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 800;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Weights";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Catching Speed III";
	Weight = 0.0001;
}}, {{
	Type = "EasterTokens";
	Value = 1000;
	Weight = 0.9989;
}, {
	Type = "Bait";
	Value = "Jar O' Weights";
	Weight = 0.001;
}, {
	Type = "Enchant";
	Value = "Catching Speed III";
	Weight = 0.0001;
}}}
module.Quests = {
	Easy = {
		Rarities = {
			Common = 0.75;
			Uncommon = 0.25;
		};
		Rewards = {
			Cash = 0.25;
			Cage = 0.5;
			Bait = 0.25;
		};
		Mutations = {
			None = 1;
		};
		CashValue = {
			Min = 10;
			Max = 1000;
		};
		Chance = 0.5;
	};
	Medium = {
		Rarities = {
			Rare = 0.75;
			Epic = 0.25;
		};
		Rewards = {
			Cash = 0.25;
			Cage = 0.5;
			Bait = 0.25;
		};
		Mutations = {
			Silver = 0.65;
			Gold = 0.35;
		};
		CashValue = {
			Min = 1000;
			Max = 10000;
		};
		Chance = 0.35;
	};
	Hard = {
		Rarities = {
			Legendary = 0.8;
			Mythic = 0.2;
		};
		Rewards = {
			Cash = 0.25;
			Cage = 0.5;
			Bait = 0.25;
		};
		Mutations = {
			Rainbow = 0.65;
			Shiny = 0.35;
		};
		CashValue = {
			Min = 10000;
			Max = 200000;
		};
		Chance = 0.15;
	};
	TotalTasks = 5;
}
module.Mutations = {"Silver", "Gold", "Rainbow", "Shiny"}
module.Huts = {{
	Name = "Better Shop";
	Price = 95000;
	Rarity = "Uncommon";
}, {
	Name = "Wood Shop";
	Price = 1500000;
	Rarity = "Rare";
}, {
	Name = "Steel Shop";
	Price = 5000000;
	Rarity = "Rare";
}, {
	Name = "Super Shop";
	Price = 10000000;
	Rarity = "Rare";
}, {
	Name = "Modern Shop";
	Price = 18000000;
	Rarity = "Rare";
}, {
	Name = "Contemporary Shop";
	Price = 27000000;
	Rarity = "Rare";
}, {
	Name = "Futuristic Shop";
	Price = 45000000;
	Rarity = "Rare";
}, {
	Name = "Haunted Shop";
	Price = 1000000000;
	Rarity = "Secret";
}}
module.Zones = {
	Zone1 = {
		Price = 5000000;
	};
}
module.Achievements = {
	BaitsPlaced = {
		Description = "Reach %s baits placed!";
		Milestones = {{
			Goal = 5;
			Reward = {
				Value = "Rusty Cage";
				Type = "Cage";
			};
		}, {
			Goal = 25;
			Reward = {
				Value = "Plastic Cage";
				Type = "Cage";
			};
		}, {
			Goal = 50;
			Reward = {
				Value = "Plastic Cage";
				Type = "Cage";
			};
		}, {
			Goal = 150;
			Reward = {
				Value = "Iron Cage";
				Type = "Cage";
			};
		}, {
			Goal = 300;
			Reward = {
				Value = "Iron Cage";
				Type = "Cage";
			};
		}, {
			Goal = 600;
			Reward = {
				Value = "Shark Cage";
				Type = "Cage";
			};
		}, {
			Goal = 1000;
			Reward = {
				Value = "Shark Cage";
				Type = "Cage";
			};
		}};
	};
	FishCollected = {
		Description = "Reach %s fish collected!";
		Milestones = {{
			Goal = 100;
			Reward = {
				Value = "Jar O' Worms";
				Type = "Bait";
			};
		}, {
			Goal = 250;
			Reward = {
				Value = "Rusty Cage";
				Type = "Cage";
			};
		}, {
			Goal = 500;
			Reward = {
				Value = "Jar O' Grubs";
				Type = "Bait";
			};
		}, {
			Goal = 1000;
			Reward = {
				Value = "Plastic Cage";
				Type = "Cage";
			};
		}, {
			Goal = 2500;
			Reward = {
				Value = "Rusty Cage";
				Type = "Cage";
			};
		}, {
			Goal = 5000;
			Reward = {
				Value = "Jar O' Fireflies";
				Type = "Bait";
			};
		}, {
			Goal = 10000;
			Reward = {
				Value = "Iron Cage";
				Type = "Cage";
			};
		}, {
			Goal = 25000;
			Reward = {
				Value = "Jar O' Gold Bugs";
				Type = "Bait";
			};
		}, {
			Goal = 50000;
			Reward = {
				Value = "Shark Cage";
				Type = "Cage";
			};
		}, {
			Goal = 100000;
			Reward = {
				Value = "Jar O' Ancient Larvae";
				Type = "Bait";
			};
		}, {
			Goal = 500000;
			Reward = {
				Value = "Crystal Cage";
				Type = "Cage";
			};
		}, {
			Goal = 1000000;
			Reward = {
				Value = "Jar O' Voidflies";
				Type = "Bait";
			};
		}};
	};
	SilverCollected = {
		Description = "Reach %s silver collected!";
		Milestones = {{
			Goal = 50;
			Reward = {
				Value = "Jar O' Leeches";
				Type = "Bait";
			};
		}, {
			Goal = 250;
			Reward = {
				Value = "Jar O' Fireflies";
				Type = "Bait";
			};
		}, {
			Goal = 500;
			Reward = {
				Value = "Jar O' Gold Bugs";
				Type = "Bait";
			};
		}, {
			Goal = 1000;
			Reward = {
				Value = "Jar O' Ancient Larvae";
				Type = "Bait";
			};
		}, {
			Goal = 2500;
			Reward = {
				Value = "Jar O' Voidflies";
				Type = "Bait";
			};
		}};
	};
	SecretCaught = {
		Description = "Reach %s secret caught!";
		Milestones = {{
			Goal = 10;
			Reward = {
				Value = "Moonlight Cage";
				Type = "Cage";
			};
		}, {
			Goal = 25;
			Reward = {
				Value = "Jar O' Voidflies";
				Type = "Bait";
			};
		}, {
			Goal = 50;
			Reward = {
				Value = "Moonlight Cage";
				Type = "Cage";
			};
		}, {
			Goal = 75;
			Reward = {
				Value = "Jar O' Voidflies";
				Type = "Bait";
			};
		}, {
			Goal = 150;
			Reward = {
				Value = "Sunlight Cage";
				Type = "Cage";
			};
		}};
	};
}
module.CraftingItems = {{
	Name = "Tidal Devourer";
	Type = "Fish";
	Mutations = {"Silver"};
	Recipe = {{
		Name = "Apex Venomjaw";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Goblin Shark";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Colossal Spider Crab";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Greenland Shark";
		Type = "Fish";
		Amount = 1;
	}};
}, {
	Name = "Infernoclaw";
	Type = "Fish";
	Mutations = {"Silver"};
	Recipe = {{
		Name = "Luminjaw";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Whale Shark";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Oarfish";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Manta Ray";
		Type = "Fish";
		Amount = 1;
	}};
}, {
	Name = "Spectral Jellyfish";
	Type = "Fish";
	Recipe = {{
		Name = "Apex Venomjaw";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Jar O' Mutations";
		Type = "Bait";
		Amount = 1;
	}};
}, {
	Name = "Jar O' Mutations";
	Type = "Bait";
	Recipe = {{
		Name = "Manta Ray";
		Type = "Fish";
		Amount = 1;
	}, {
		Name = "Jar O' Leeches";
		Type = "Bait";
		Amount = 1;
	}};
}}
module.LuckyBlocks = {{
	Name = "Crystal Lucky Block";
	CageId = 6;
	Color = Color3.fromRGB(0, 255, 157);
	BrickColor = BrickColor.new(Color3.fromRGB(0, 255, 157));
	SkatingRarityLevel = 4;
}, {
	Name = "Diamond Lucky Block";
	CageId = 10;
	Color = Color3.fromRGB(0, 195, 255);
	BrickColor = BrickColor.new(Color3.fromRGB(0, 195, 255));
	SkatingRarityLevel = 5;
}, {
	Name = "Moonlight Lucky Block";
	CageId = 7;
	Color = Color3.fromRGB(88, 0, 175);
	BrickColor = BrickColor.new(Color3.fromRGB(88, 0, 175));
	SkatingRarityLevel = 6;
}, {
	Name = "Sunlight Lucky Block";
	CageId = 8;
	Color = Color3.fromRGB(255, 102, 0);
	BrickColor = BrickColor.new(Color3.fromRGB(255, 102, 0));
	SkatingRarityLevel = 6;
}, {
	Name = "Angelic Lucky Block";
	CageId = 9;
	Color = Color3.fromRGB(255, 255, 255);
	BrickColor = BrickColor.new(Color3.fromRGB(255, 255, 255));
	SkatingRarityLevel = 7;
}, {
	Name = "Radioactive Lucky Block";
	CageId = 11;
	Color = Color3.fromRGB(0, 255, 0);
	BrickColor = BrickColor.new(Color3.fromRGB(0, 255, 0));
	SkatingRarityLevel = 7;
}}
module.Enchants = {{
	Name = "Luck I";
	Image = "rbxassetid://94714623130307";
	Boost = 0.1;
	Display = 0.1;
	Rarity = "Epic";
	BoostType = "Luck";
}, {
	Name = "Luck II";
	Image = "rbxassetid://71577130494264";
	Boost = 0.2;
	Display = 0.2;
	Rarity = "Legendary";
	BoostType = "Luck";
}, {
	Name = "Luck III";
	Image = "rbxassetid://103419842778921";
	Boost = 0.35;
	Display = 0.35;
	Rarity = "Mythic";
	BoostType = "Luck";
}, {
	Name = "Cash I";
	Image = "rbxassetid://72012010543165";
	Boost = 0.1;
	Display = 0.1;
	Rarity = "Legendary";
	BoostType = "Cash";
}, {
	Name = "Cash II";
	Image = "rbxassetid://71220015963066";
	Boost = 0.15;
	Display = 0.15;
	Rarity = "Mythic";
	BoostType = "Cash";
}, {
	Name = "Cash III";
	Image = "rbxassetid://123050626685124";
	Boost = 0.2;
	Display = 0.2;
	Rarity = "Secret";
	BoostType = "Cash";
}, {
	Name = "Catching Speed I";
	Image = "rbxassetid://89752332240717";
	Boost = 0.04;
	Display = 0.1;
	Rarity = "Legendary";
	BoostType = "Speed";
}, {
	Name = "Catching Speed II";
	Image = "rbxassetid://140557080266182";
	Boost = 0.08;
	Display = 0.25;
	Rarity = "Mythic";
	BoostType = "Speed";
}, {
	Name = "Catching Speed III";
	Image = "rbxassetid://98865363759514";
	Boost = 0.15;
	Display = 0.35;
	Rarity = "Secret";
	BoostType = "Speed";
}, {
	Name = "Christmas I";
	Image = "rbxassetid://122159830263587";
	Boost = 0.15;
	Display = 0.15;
	Rarity = "Event";
	BoostType = "Christmas";
}, {
	Name = "Christmas II";
	Image = "rbxassetid://106658010436972";
	Boost = 0.25;
	Display = 0.25;
	Rarity = "Event";
	BoostType = "Christmas";
}, {
	Name = "Christmas III";
	Image = "rbxassetid://79100427602753";
	Boost = 0.4;
	Display = 0.4;
	Rarity = "Event";
	BoostType = "Christmas";
}, {
	Name = "Christmas IV";
	Image = "rbxassetid://94467075514740";
	Boost = 0.55;
	Display = 0.55;
	Rarity = "Event";
	BoostType = "Christmas";
}, {
	Name = "Cheaper Cages I";
	Image = "rbxassetid://72943615918122";
	Boost = 0.02;
	Display = 0.02;
	Rarity = "Mythic";
	BoostType = "CheaperCages";
}, {
	Name = "Cheaper Cages II";
	Image = "rbxassetid://139950648117433";
	Boost = 0.04;
	Display = 0.04;
	Rarity = "Secret";
	BoostType = "CheaperCages";
}, {
	Name = "Fish Weight I";
	Image = "rbxassetid://91799306000879";
	Boost = 0.5;
	Display = 1;
	Rarity = "Secret";
	BoostType = "WeightLuck";
}, {
	Name = "Cage Mutation I";
	Image = "rbxassetid://72131710207055";
	Boost = 1;
	Display = 0.2;
	Rarity = "Secret";
	BoostType = "CageMutation";
}}
module.EnchantChests = {{
	Name = "Lucky Chest";
	Price = 15000;
	Rarity = "Legendary";
}, {
	Name = "Fortune Chest";
	Price = 200000;
	Rarity = "Mythic";
}, {
	Name = "Speedy Chest";
	Price = 1250000;
	Rarity = "Secret";
}, {
	Name = "Christmas Chest";
	Price = 750000;
	Rarity = "Secret";
}, {
	Name = "Cheaper Cages Chest";
	Price = 1750000;
	Rarity = "Secret";
}, {
	Name = "Cage Mutation Chest";
	Price = 3500000;
	Rarity = "Secret";
}}
module.EnchantPrices = {{
	Price = 0;
	TimestampRequirement = 0;
}, {
	Price = 0;
	TimestampRequirement = 0;
}, {
	Price = 25000;
	TimestampRequirement = 1764668455;
}, {
	Price = 150000;
	TimestampRequirement = 1764754855;
}, {
	Price = 500000;
	TimestampRequirement = 1764841255;
}, {
	Price = 1750000;
	TimestampRequirement = 1764927655;
}}
module.FreeMoneyVault = {{{
	Type = "Cash";
	Value = 250;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 1200;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 6000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 28000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 120000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 560000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 1200000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 2000000;
	Weight = 100;
}}, {{
	Type = "Cash";
	Value = 3200000;
	Weight = 100;
}}}
module.santaEvent = {{{
	Type = "Bait";
	Value = "Jar O' Worms";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 400;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Plastic Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 2000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Iron Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 10000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Shark Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 50000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Crystal Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 200000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Diamond Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 1000000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Moonlight Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 10000000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 3400000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.05;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.75;
}, {
	Type = "Cash";
	Value = 3400000;
	Weight = 0.2;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.05;
}}}
module.EventMerchant = {{
	Name = "Galaxy Cage (Catches Galaxy Mutation)";
	Image = "";
	Restock = 1;
	Cost = {
		Elixir = 3000000;
	};
}, {
	Name = "Steampunk Cage";
	Image = "";
	Restock = 1;
	Cost = {
		Elixir = 450000;
	};
}, {
	Name = "Titanium Steampunk Secret Lucky Block";
	Image = "";
	Restock = 2;
	Cost = {
		Elixir = 95000;
	};
}, {
	Name = "30m Ultra Luck";
	Image = "rbxassetid://76468942559103";
	Restock = 4;
	Cost = {
		Elixir = 85000;
	};
}, {
	Name = "Fish Weight Bait";
	Image = "";
	Restock = 5;
	Cost = {
		Elixir = 10000;
	};
}, {
	Name = "$80,000 Cash";
	Image = "rbxassetid://73987515054509";
	Restock = 1000;
	Cost = {
		Elixir = 1750;
	};
}}
module.EasterMerchant = {{
	Name = "Easter Luckyblock";
	Image = "";
	Restock = 3;
	Cost = {
		EventPoints21 = 100000;
	};
}, {
	Name = "Easter Cage (Catches Easter Mutation)";
	Image = "";
	Restock = 1;
	Cost = {
		EventPoints21 = 1500000;
	};
}, {
	Name = "Jar O' Easter Eggs";
	Image = "";
	Restock = 5;
	Cost = {
		EventPoints21 = 25000;
	};
}}
module.AdventCalender = {{
	Value = "15m Luck";
	Image = "rbxassetid://109829905253609";
}, {
	Value = "Legendary+ Sunlight Lucky Block";
	Image = "rbxassetid://99962458317769";
}, {
	Value = "Shark Cage";
	Image = "rbxassetid://101354716147928";
}, {
	Value = "15m Luck";
	Image = "rbxassetid://109829905253609";
}, {
	Value = "Cash I Enchant";
	Image = "rbxassetid://72012010543165";
}, {
	Value = "Mythic+ Angelic Lucky Block";
	Image = "rbxassetid://101162049628919";
}, {
	Value = "15m Super Luck";
	Image = "rbxassetid://88792840794763";
}, {
	Value = "100 Gift Points";
	Image = "rbxassetid://124058822671570";
}, {
	Value = "Christmas Lucky Block";
	Image = "rbxassetid://120143629422970";
}, {
	Value = "15m Ultra Luck";
	Image = "rbxassetid://76468942559103";
}, {
	Value = "Secret+ Radioactive Lucky Block";
	Image = "rbxassetid://122859634113526";
}}
module.ElixirData = {
	MutationChances = {
		Silver = 2;
		Gold = 2;
		Rainbow = 2;
		Toxic = 2;
		Diamond = 2;
		Ghost = 2;
		Radioactive = 2;
		Void = 2;
		Inferno = 2;
		Amethyst = 2;
		Corrupted = 2;
		Alien = 2;
		Candy = 2;
		Emerald = 2;
		Cursed = 2;
		Fossil = 2;
		Classic = 2;
		Obsidian = 2;
		Frostbite = 2;
		Gifted = 2;
		["Polar Frosted"] = 2;
		["Moon Rock"] = 2;
		Tsunami = 2;
		Fortune = 2;
	};
}
module.NewYearsEvent = {{{
	Type = "Bait";
	Value = "Jar O' Leeches";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 2000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Plastic Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Fireflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 10000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Iron Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Gold Bugs";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 50000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Shark Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Ancient Larvae";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 250000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Crystal Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 1000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Moonlight Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 5000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Sunlight Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.65;
}, {
	Type = "Cash";
	Value = 10000000;
	Weight = 0.25;
}, {
	Type = "Cage";
	Value = "Angelic Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 17000000;
	Weight = 0.35;
}, {
	Type = "Cage";
	Value = "Radioactive Cage";
	Weight = 0.1;
}}, {{
	Type = "Bait";
	Value = "Jar O' Voidflies";
	Weight = 0.55;
}, {
	Type = "Cash";
	Value = 17000000;
	Weight = 0.35;
}, {
	Type = "Cage";
	Value = "Radioactive Cage";
	Weight = 0.1;
}}}
module.RarityOrder = {
	Common = 1;
	Uncommon = 2;
	Rare = 3;
	Epic = 4;
	Legendary = 5;
	Mythic = 6;
	Secret = 7;
	Event = 8;
	["⚠️CLASSIFIED"] = 9;
}
module.Gamepasses = {
	ExtraLoadouts = 1709442489;
}
return module