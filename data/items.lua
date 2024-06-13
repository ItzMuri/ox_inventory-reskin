return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["ac"] = {
		label = "Air Conditioner",
		weight = 700,
		stack = false,
		close = true,
		description = "Air Conditioner",
		client = {
			image = "ac.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["pineapple_tabs"] = {
		label = "Pineapple Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
		client = {
			image = "pineapple_tabs.png",
		}
	},

	["lsd_vial_five"] = {
		label = "Tier 5 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_five.png",
		}
	},

	["blue_xtc"] = {
		label = "1 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["orange_cats3"] = {
		label = "3 Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["shrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		description = "Holy Shit ake mushroom",
		client = {
			image = "shrooms.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["red_pl2"] = {
		label = "2 Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["lsdlabkit"] = {
		label = "LSD Mixing Table",
		weight = 1000,
		stack = true,
		close = true,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["adderal_prescription"] = {
		label = "Mdderal Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "I CAN DO EVERYTHING",
		client = {
			image = "adderalprescription.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["white_cats"] = {
		label = "1 Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["heroinvialstagethree"] = {
		label = "Best Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagethree.png",
		}
	},

	["xanaxbottle"] = {
		label = "Zany Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottle Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["coca_leaf"] = {
		label = "Cocaine leaves",
		weight = 1500,
		stack = true,
		close = false,
		description = "Cocaine leaves that must be processed !",
		client = {
			image = "coca_leaf.png",
		}
	},

	["ziptie"] = {
		label = "ZipTie",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "ziptie.png",
		}
	},

	["specialcookie"] = {
		label = "Special Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialcookie.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["blue_cats4"] = {
		label = "4 Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["white_playboys2"] = {
		label = "2 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["specialchocolate"] = {
		label = "Special Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialchocolate.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["morphine"] = {
		label = "Morphin",
		weight = 100,
		stack = true,
		close = true,
		description = "I Cant Feel Anything",
		client = {
			image = "morphine.png",
		}
	},

	["blue_aliens"] = {
		label = "1 Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["white_xtc3"] = {
		label = "3 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["needle"] = {
		label = "Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "I Swear Officer, Its For Diabetes",
		client = {
			image = "syringe.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["white_pl"] = {
		label = "1 Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["orange_trolls"] = {
		label = "1 Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["gratefuldead_tabs"] = {
		label = "Maze Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldead_tabs.png",
		}
	},

	["orange_playboys4"] = {
		label = "4 Stack orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["vicodinbottle"] = {
		label = "Vicie Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["smiley_tabs"] = {
		label = "Smiley tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
		client = {
			image = "smiley_tabs.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["wetcannabis"] = {
		label = "Wet Cannabis",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wetcannabis.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["xanax"] = {
		label = "Zany",
		weight = 100,
		stack = true,
		close = true,
		description = "Ahhh Sweet Comfort",
		client = {
			image = "xanax.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["adderal"] = {
		label = "Madderal",
		weight = 100,
		stack = true,
		close = true,
		description = "If Only This Helped With The Pain inside",
		client = {
			image = "adderal.png",
		}
	},

	["adderalbottle"] = {
		label = "Madderal Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["heroin_readystagetwo"] = {
		label = "Heroin Syringe 2",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_readystagetwo.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["crackrockstagethree"] = {
		label = "Best Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock3.png",
		}
	},

	["dextroblunt"] = {
		label = "Dextro Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dextroblunt.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["grindedweed"] = {
		label = "Keef",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "keef.png",
		}
	},

	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["xanax_prescription"] = {
		label = "Zany Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "Ahhh Sweet Comfort",
		client = {
			image = "adderalprescription.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["white_xtc4"] = {
		label = "4 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["lsd_one_vial"] = {
		label = "Tier 1 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_one_vial.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["cokestagethree"] = {
		label = "Best Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagethree.png",
		}
	},

	["heroinlabkit"] = {
		label = "Heroin Lab Kit",
		weight = 250,
		stack = true,
		close = false,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["white_playboys3"] = {
		label = "3 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["heroincutstagetwo"] = {
		label = "Better Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecokestagetwo.png",
		}
	},

	["raw_xtc"] = {
		label = "Raw XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_xtc.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["lsd_vial_four"] = {
		label = "Tier 4 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_four.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["morphine_prescription"] = {
		label = "Morphin Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "I Cant Feel Anything",
		client = {
			image = "adderalprescription.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["gratefuldeadsheet"] = {
		label = "Maze Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldeadsheet.png",
		}
	},

	["loosecokestagetwo"] = {
		label = "More Pure Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagetwo.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["yinyang_tabs"] = {
		label = "Yin and Yang Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
		client = {
			image = "yinyang_tabs.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["mdp2p"] = {
		label = "mdp2p",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mdp2p.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["orange_aliens3"] = {
		label = "3 Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["orange_aliens"] = {
		label = "1 Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["cokeburner"] = {
		label = "Coke Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["orange_cats"] = {
		label = "1 Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["dualpress"] = {
		label = "Dual Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["cupoflean"] = {
		label = "Lean Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupoflean.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["orange_aliens2"] = {
		label = "2 Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["prescription_pad"] = {
		label = "Prescription Pad",
		weight = 10,
		stack = false,
		close = false,
		description = "Write Your Prescriptions here",
		client = {
			image = "prescriptionpad.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["red_trolls3"] = {
		label = "3 Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},

	["white_aliens3"] = {
		label = "3 Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["morphinebottle"] = {
		label = "Morphin Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["white_aliens"] = {
		label = "1 Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["white_pl2"] = {
		label = "2 Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["heroinburner"] = {
		label = "Heroin Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["poppyresin"] = {
		label = "Poppy resin",
		weight = 2000,
		stack = true,
		close = false,
		description = "It sticks to your fingers when you handle it.",
		client = {
			image = "poppyresin.png",
		}
	},

	["blue_playboys2"] = {
		label = "2 Stack blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["white_pl3"] = {
		label = "3 Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["mdlean"] = {
		label = "Sizzurup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "Sizzurup.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["spores"] = {
		label = "spores",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrooms.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["blue_playboys4"] = {
		label = "4 Stack blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["cokebaggystagethree"] = {
		label = "Bag of Great Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagethree.png",
		}
	},

	["red_xtc"] = {
		label = "1 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["orange_trolls3"] = {
		label = "3 Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["heroinstagethree"] = {
		label = "Best Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "cokestagethree.png",
		}
	},

	["crackburner"] = {
		label = "Crack Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["ac_vent"] = {
		label = "AC Vent",
		weight = 700,
		stack = false,
		close = true,
		description = "A vent part of an air conditioning system.",
		client = {
			image = "ac_vent.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["blue_aliens4"] = {
		label = "4 Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["white_xtc2"] = {
		label = "2 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["heroin_ready"] = {
		label = "Heroin Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_ready.png",
		}
	},

	["cokebaggystagetwo"] = {
		label = "Bag of Good Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagetwo.png",
		}
	},

	["white_trolls3"] = {
		label = "2 Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["orange_xtc4"] = {
		label = "4 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["red_playboys4"] = {
		label = "4 Stack red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["red_playboys3"] = {
		label = "3 Stack red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["blue_xtc4"] = {
		label = "4 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["specialmuffin"] = {
		label = "Special Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialmuffin.png",
		}
	},

	["white_aliens2"] = {
		label = "2 Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flour.png",
		}
	},

	["flush_cutter"] = {
		label = "Flush Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when you want to cut zipties..",
		client = {
			image = "flush_cutter.png",
		}
	},

	["heroinvial"] = {
		label = "Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroin.png",
		}
	},

	["blue_trolls"] = {
		label = "1 Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["heroincut"] = {
		label = "Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecoke.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["white_trolls4"] = {
		label = "3 Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["wildcherry_tabs"] = {
		label = "Wild Cherry Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
		client = {
			image = "wildcherry_tabs.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["red_trolls"] = {
		label = "1 Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["red_cats3"] = {
		label = "3 Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["orange_playboys"] = {
		label = "1 Stack orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["blue_xtc2"] = {
		label = "2 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["red_playboys"] = {
		label = "1 Stack red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["leanbluntwrap"] = {
		label = "Lean Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leanbluntwrap.png",
		}
	},

	["heroinvialstagetwo"] = {
		label = "Better Vial of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagetwo.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["dabrig"] = {
		label = "Dab Rig",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dabrig2.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["red_trolls2"] = {
		label = "2 Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["baggedcracked"] = {
		label = "Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag1.png",
		}
	},

	["blue_playboys3"] = {
		label = "3 Stack blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["driedmescaline"] = {
		label = "Mescaline",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "driedmescaline.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["butane"] = {
		label = "Butane",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butane.png",
		}
	},

	["blue_pl2"] = {
		label = "2 Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["blue_aliens3"] = {
		label = "3 Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["red_xtc4"] = {
		label = "4 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["mdwoods"] = {
		label = "MDWOODS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mdwoods.png",
		}
	},

	["red_pl3"] = {
		label = "3 Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["lsdburner"] = {
		label = "LSD Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["singlepress"] = {
		label = "Single Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["chewyblunt"] = {
		label = "Chewy",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blunt.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["leancup"] = {
		label = "Empty Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leancup.png",
		}
	},

	["white_trolls2"] = {
		label = "2 Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["orange_pl3"] = {
		label = "3 Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["yinyangsheet"] = {
		label = "Yin and Yang Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
		client = {
			image = "yinyangsheet.png",
		}
	},

	["blue_cats2"] = {
		label = "2 Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["lsd_vial_six"] = {
		label = "Tier 6 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_six.png",
		}
	},

	["cupofdextro"] = {
		label = "Dextro Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupofdextro.png",
		}
	},

	["blue_trolls4"] = {
		label = "4 Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["bluntwrap"] = {
		label = "Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bluntwrap.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["heroincutstagethree"] = {
		label = "Best Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "loosecokestagethree.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["white_playboys4"] = {
		label = "4 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["pineapplesheet"] = {
		label = "Pineapple Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
		client = {
			image = "pineapplesheet.png",
		}
	},

	["cokestagetwo"] = {
		label = "Better Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagetwo.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["vicodin_prescription"] = {
		label = "Vicie Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "If Only This Helped With The Pain inside",
		client = {
			image = "adderalprescription.png",
		}
	},

	["red_aliens3"] = {
		label = "3 Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["smileyfacesheet"] = {
		label = "Smiley Face Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
		client = {
			image = "smileysheet.png",
		}
	},

	["white_playboys"] = {
		label = "1 Stack White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["mdbutter"] = {
		label = "Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butter.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "acetone.png",
		}
	},

	["red_aliens2"] = {
		label = "2 Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["blue_xtc3"] = {
		label = "3 Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["tobacco"] = {
		label = "Tobacco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tobacco.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["red_xtc3"] = {
		label = "3 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["shatter"] = {
		label = "Shatter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shatter.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["red_playboys2"] = {
		label = "2 Stack red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["blunt"] = {
		label = "Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blunt.png",
		}
	},

	["ciggie"] = {
		label = "Ciggie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ciggie.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["heroin_readystagethree"] = {
		label = "Heroin Syringe 3",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_readystagethree.png",
		}
	},

	["blue_cats3"] = {
		label = "3 Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["leo_gps"] = {
		label = "LEO GPS",
		weight = 200,
		stack = false,
		close = true,
		description = "Show your gps location to others",
		client = {
			image = "leo-gps.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["blue_pl4"] = {
		label = "4 Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["quadpress"] = {
		label = "Quad Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["specialbrownie"] = {
		label = "Special Brownie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate.png",
		}
	},

	["coke"] = {
		label = "Raw Cocaine",
		weight = 1000,
		stack = true,
		close = false,
		description = "Raw Cocaine",
		client = {
			image = "coke.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["baggedcrackedstagethree"] = {
		label = "Best Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag3.png",
		}
	},

	["red_cats2"] = {
		label = "2 Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["methbags"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "methbags.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["red_aliens"] = {
		label = "1 Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["bart_tabs"] = {
		label = "Cluckin Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
		client = {
			image = "bart_tabs.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["orange_aliens4"] = {
		label = "4 Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["ac_broken"] = {
		label = "Borken AC",
		weight = 700,
		stack = false,
		close = true,
		description = "A Borken part of an air conditioning system.",
		client = {
			image = "ac_broken.png",
		}
	},

	["orange_xtc"] = {
		label = "1 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["bakingsoda"] = {
		label = "Baking Soda",
		weight = 300,
		stack = true,
		close = false,
		description = "Household Baking Soda!",
		client = {
			image = "bakingsoda.png",
		}
	},

	["orange_pl2"] = {
		label = "2 Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["white_aliens4"] = {
		label = "4 Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["wildcherrysheet"] = {
		label = "Wild Cherry Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
		client = {
			image = "wildcherrysheet.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["orange_playboys3"] = {
		label = "3 Stack orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["white_cats2"] = {
		label = "2 Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["leanblunts"] = {
		label = "Lean Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leanblunts.png",
		}
	},

	["blue_aliens2"] = {
		label = "2 Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["cannabutter"] = {
		label = "Canna-Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cannabutter.png",
		}
	},

	["orange_trolls4"] = {
		label = "4 Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["loosecoke"] = {
		label = "loose coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecoke.png",
		}
	},

	["blue_playboys"] = {
		label = "1 Stack blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["crackrock"] = {
		label = "Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Isnt The Rock The Hippie Girl Told Me About",
		client = {
			image = "crackrock1.png",
		}
	},

	["orange_trolls2"] = {
		label = "2 Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["crackrockstagetwo"] = {
		label = "Better Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock2.png",
		}
	},

	["orange_cats2"] = {
		label = "2 Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["white_xtc"] = {
		label = "1 Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["weedgrinder"] = {
		label = "Weed Grinder",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weedgrinder.png",
		}
	},

	["orange_xtc3"] = {
		label = "3 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["white_cats3"] = {
		label = "3 Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["blue_trolls2"] = {
		label = "2 Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["tab_paper"] = {
		label = "Tab Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "Paper To Dip LSD On",
		client = {
			image = "tab_paper.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["red_pl"] = {
		label = "1 Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["white_cats4"] = {
		label = "4 Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["lysergic_acid"] = {
		label = "Lysergic Acid",
		weight = 100,
		stack = true,
		close = true,
		description = "Acid to make acid?",
		client = {
			image = "lysergic_acid.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["orange_cats4"] = {
		label = "4 Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["red_xtc2"] = {
		label = "2 Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["red_trolls4"] = {
		label = "4 Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["white_trolls"] = {
		label = "1 Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["red_cats4"] = {
		label = "4 Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["white_pl4"] = {
		label = "4 Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["loosecokestagethree"] = {
		label = "Purest Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagethree.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["red_cats"] = {
		label = "1 Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["blue_pl3"] = {
		label = "3 Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["dextroblunts"] = {
		label = "Dextro Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dextroblunts.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["orange_pl4"] = {
		label = "4 Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["bartsheet"] = {
		label = "Cluckin Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
		client = {
			image = "bartsheet.png",
		}
	},

	["lsd_vial_three"] = {
		label = "Tier 3 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_three.png",
		}
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["diethylamide"] = {
		label = "Diethylamide",
		weight = 100,
		stack = true,
		close = true,
		description = "die? I sure hope not!",
		client = {
			image = "diethylamide.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["vicodin"] = {
		label = "Vicie",
		weight = 100,
		stack = true,
		close = true,
		description = "I CAN DO EVERYTHING",
		client = {
			image = "vicodin.png",
		}
	},

	["orange_playboys2"] = {
		label = "2 Stack orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["heroin"] = {
		label = "Weak Heroin Powder",
		weight = 500,
		stack = true,
		close = false,
		description = "Dragon Chasin?",
		client = {
			image = "loosecoke.png",
		}
	},

	["xtcburner"] = {
		label = "XTC Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["ephedrine"] = {
		label = "Ephedrine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ephedrine.png",
		}
	},

	["blue_cats"] = {
		label = "1 Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["orange_pl"] = {
		label = "1 Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["butanetorch"] = {
		label = "Butane Torch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butanetorch.png",
		}
	},

	["ac_compressor"] = {
		label = "AC Compressor",
		weight = 700,
		stack = false,
		close = true,
		description = "A Compressor part of an air conditioning system.",
		client = {
			image = "ac_compressor.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["alcoholtester"] = {
		label = "Alcohol Tester",
		weight = 400,
		stack = false,
		close = true,
		description = "For testing purposes..",
		client = {
			image = "alcoholtester.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["blue_pl"] = {
		label = "1 Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["isosafrole"] = {
		label = "isosafrole",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "isosafrole.png",
		}
	},

	["baggedcrackedstagetwo"] = {
		label = "Better Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag2.png",
		}
	},

	["orange_xtc2"] = {
		label = "2 Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["red_aliens4"] = {
		label = "4 Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["mdreddextro"] = {
		label = "Red Dextro",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "reddextro.png",
		}
	},

	["drycannabis"] = {
		label = "Dry Cannabis",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "driedcannabis.png",
		}
	},

	["red_pl4"] = {
		label = "4 Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["cactusbulb"] = {
		label = "Cactus Bulb",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cactusbulb.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["lsd_vial_two"] = {
		label = "Tier 2 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_two.png",
		}
	},

	["triplepress"] = {
		label = "Triple Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["broken_handcuffs"] = {
		label = "Broken Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "It's broken, maybe you can repair it?",
		client = {
			image = "broken_handcuffs.png",
		}
	},

	["cuffkeys"] = {
		label = "Cuff Keys",
		weight = 75,
		stack = true,
		close = true,
		description = "Set them free !",
		client = {
			image = "cuffkeys.png",
		}
	},

	["emptyvial"] = {
		label = "empty vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm, What Can Go In This?",
		client = {
			image = "emptyvial.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["blue_trolls3"] = {
		label = "3 Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["bolt_cutter"] = {
		label = "Bolt Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Wanna cut some metal items ?",
		client = {
			image = "bolt_cutter.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["heroinstagetwo"] = {
		label = "Better Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "cokestagetwo.png",
		}
	},
}