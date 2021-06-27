local SanctumRaid = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("SanctumRaid")
local Sanctum = "Sanctum"
local playername, realm = UnitFullName("player")
local realm = GetNormalizedRealmName()
function SanctumRaid:OnEnable()
	--local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

	local sanctumName = C_Map.GetMapInfo(1998).name
	self:RegisterExpansion("Shadowlands", EXPANSION_NAME8)
	self:RegisterRaidTier("Shadowlands", 90150, sanctumName, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
	self:RegisterRaidInstance(90150, Sanctum, sanctumName, {
		bonusids = {
		[1] = {7189,1472},
		[2] = {7188,1485},
		[3] = {7187,1498},
		},
		difficultyconversion = {
		[1] = 3, --Raid Normal
		[2] = 5, --Raid Heroic
		[3] = 6, --Raid Mythic
		}
	})
	--------------------------------------------------
	----- Sanctum of Domination
	--------------------------------------------------


	-----------------------------------
	----- The Tarragrue
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2435) 
	local lootTable = { 
		182750, --Carnivorous Stalkers 
		182610, --Ferocious Appetite 
		182113, --Fleeting Wind 
		180932, --Fueled by Violence 
		183481, --Incessant Hunter 
		181376, --Inner Fury 
		182344, --Lost in Darkness 
		182144, --Nature's Focus 
		182139, --Rabid Shadows 
		183504, --Well-Placed Steel 
		182456, --Wrench Evil 
		186381, --Elethium-Bladed Glaive 
		186415, --Moriaz's Spare Targe 
		186291, --Periapt of Pristine Preservation 
		186298, --Smuggler's Plundered Pauldrons 
		186303, --Colossus Slayer's Hauberk 
		186297, --Clasps of the Unfortunate Troubadour 
		186302, --Mistwrap Manacles 
		186311, --Cavalier Oathbreaker's Grasps 
		186285, --Sorcerer's Headlong Legwraps 
		186318, --Champion's Gruesome Greaves 
		186281, --Phantasma-Forged Striders 
		186422, --Tome of Monstrous Constructions 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- The Eye of the Jailer
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2442) 
	local lootTable = { 
		181738, --Artifice of the Archmage 
		181963, --Blood Bond 
		182478, --Corrupting Leer 
		182462, --Expurgation 
		186554, --Eye of Allseeing 
		183500, --Fade to Nothing 
		181840, --Light's Inspiration 
		182441, --Marksman's Advantage 
		180896, --Safeguard 
		181640, --Tumbling Technique 
		183486, --Well-Honed Instincts 
		186403, --Stygian Lance of Passage 
		186383, --Gazepiercer 
		186418, --Guarm's Lost Chew Toy 
		186296, --Mawsworn Eviscerator's Cuirass 
		186316, --Airborne Abductor's Vambraces 
		186288, --Grasps of the Clairvoyant Sage 
		186295, --Loyal Kvaldir's Handwraps 
		186301, --Coiled Stygian Grapnel 
		186306, --Greaves of Extermination 
		186423, --Titanic Ocular Gland 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- The Nine
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2439)
	local lootTable = {
		182657, --Deadly Chain
		181845, --Exaltation
		182340, --Fel Celerity
		181736, --Flame Accretion
		182135, --Focused Lightning
		183477, --Precise Alignment
		181641, --Rising Sun Revival
		182753, --Royal Decree
		182384, --Serrated Glaive
		182201, --Unleashed Frenzy
		186313, --Agatha's Gothic Greaves
		186307, --Aradne's Lancer Legguards
		186339, --Brynja's Mournful Wristwraps
		186299, --Daschla's Defiant Treads
		186404, --Jotungeirr, Destiny's Call
		186346, --Kyra's Unending Protectors
		186286, --Mantle of Arthura's Chosen
		186425, --Scrawled Word of Recall
		186424, --Shard of Annhylde's Aegis
		186385, --Signe's Sonorous Scramaseax
		186384, --Skyja's Revenant Fury
		186290, --Sworn Oath of the Nine
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Remnant of Ner'zhul
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2444) 
	local lootTable = { 
		183508, --Ambidexterity 
		181705, --Celestial Effervescence 
		182206, --Convocation of the Dead 
		182752, --Fel Commando 
		182464, --Harmony of the Tortollan 
		182468, --Mortal Combo 
		181842, --Power Unto Others 
		181389, --Shivering Core 
		182111, --Spiritual Resonance 
		183464, --Tough as Bark 
		186405, --Gnarled Staff of the Elder Shaman 
		186386, --Betrayer's Shadowspike 
		186292, --Cap of Writhing Malevolence 
		186304, --Crest of the Fallen 
		186315, --Dark Tormentor's Gaze 
		186287, --Hood of Vengeful Possession 
		186378, --Weathered Talisman of the Shadowmoon 
		186312, --Cuirass of the Lonely Citadel 
		186308, --Grasps of Ancestral Whispers 
		186428, --Shadowed Orb of Torment 
		186427, --Whispering Shard of Power 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Soulrender Dormazain
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2445) 
	local lootTable = { 
		180844, --Brutal Vitality 
		181834, --Chilled Resilience 
		183076, --Diabolic Bloodstone 
		183489, --Flash of Clarity 
		181467, --Flow of Time 
		181466, --Grounding Breath 
		186558, --Irongrasp 
		181847, --Lasting Spirit 
		182448, --Light's Barding 
		182317, --Shattered Restoration 
		183513, --Stiletto Staccato 
		182107, --Vital Accretion 
		186407, --Hellscream's Requiem 
		186387, --Dormazain's Tenderizer 
		186411, --Soulrent Outrider's Recurve 
		186305, --Pauldrons of Tyrannical Defiance 
		186314, --Ruinous Warchief's Shoulderguards 
		186289, --Cloak of Scarred Honor 
		186283, --Cruel Overlord's Shackles 
		186294, --Agonizing Spiked Belt 
		186343, --Ragebound Leg Irons 
		186319, --Tormented Shadowcleft Boots 
		186337, --Trenchant Warmonger Treads 
		186429, --Decanter of Endless Howling 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Painsmith Raznal
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2443) 
	local lootTable = { 
		182203, --Debilitating Malady 
		182754, --Duplicitous Havoc 
		182582, --Enkindled Spirit 
		183396, --Flame Infusion 
		181506, --Master Flame 
		183496, --Nimble Fingers 
		182125, --Pyroclastic Shock 
		182604, --Roaring Fire 
		183476, --Stellar Inspiration 
		181709, --Unnerving Focus 
		181465, --Xuen's Bond 
		186388, --Cruciform Veinripper 
		186392, --Exacting Mindslicer 
		186391, --Shadowsteel Demoralizer 
		186341, --Shadowsteel Facecage 
		186282, --Sacrificer's Sacramental Cassock 
		186369, --Guillotine Gauntlets 
		186333, --Hangman's Knotbinders 
		186293, --Flameclasp-Scorched Legguards 
		186323, --Leggings of the Screaming Flames 
		186375, --Miniature Breaking Wheel 
		186431, --Ebonsoul Vise 
		186430, --Tormented Rack Fragment 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Guardian of the First Ones
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2446) 
	local lootTable = { 
		187507, --Adaptive Armor Fragment 
		183132, --Echoing Call 
		181735, --Hack and Slash 
		182145, --Heavy Rainfall 
		182133, --Insatiable Appetite 
		183487, --Layered Mane 
		181827, --Move with Grace 
		183503, --Poisoned Katar 
		181505, --Resplendent Mist 
		182307, --Shielding Words 
		181769, --Tempest Barrier 
		186409, --Pylon of the Great Purge 
		186393, --Torch of Eternal Knowledge 
		186413, --Directional Meltdown Projector 
		186416, --Infinity's Last Bulwark 
		186374, --Self-Replicating Tissue 
		186347, --Ancient Colossus Chassis 
		186317, --Disintegration-Proof Waistband 
		186284, --Enigmatic Energy Circuit 
		186344, --Hyperdense Greaves 
		186354, --Sandals of Sacred Symmetry 
		186363, --Unstable Energizer Boots 
		186433, --Reactive Defense Matrix 
		186432, --Salvaged Fusion Amplifier 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Fatscribe Roh-Kalo
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2447) 
	local lootTable = { 
		181509, --Arcane Prodigy 
		182649, --Brutal Projectiles 
		182470, --Demonic Momentum 
		182324, --Felfire Haste 
		183469, --Front of the Pack 
		182684, --Resolute Defender 
		183509, --Sleight of Hand 
		181867, --Swift Penitence 
		181624, --Swift Transference 
		182108, --Thunderous Paws 
		186419, --Record of Collapsing Realities 
		186330, --Cowl of Haunting Precognition 
		186340, --Conjunction-Forged Chainmail 
		186320, --Diviner's Draped Finery 
		186335, --Fate-Threaded Bindings 
		186345, --Demigaunts of Predestination 
		186326, --Gloves of Forsaken Purpose 
		186352, --Binding of Dark Destinies 
		186348, --Fateforged Legplates 
		186376, --Oscillating Ouroboros 
		186435, --Carved Ivory Keepsake 
		186434, --Weave of Warped Fates 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Kel'Thuzad
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2440) 
	local lootTable = { 
		182136, --Chilled to the Core 
		181698, --Cryo-Freeze 
		183202, --Deadly Tandem 
		181943, --Eradicating Blow 
		183490, --Floral Recycling 
		182141, --Holy Oration 
		180847, --Inspiring Presence 
		186550, --Mawsworn Minion 
		183499, --Quick Decisions 
		182675, --Untempered Dedication 
		182747, --Withering Bolt 
		187542, --Jaithys, the Prison Blade 
		186406, --Maledict Opus 
		187056, --The Devouring Cold 
		186350, --Valorous Visage of Krexus 
		186379, --Interplanar Keystone 
		186324, --Frame of the False Margrave 
		186336, --Spaulders of the Crooked Confidant 
		186365, --Bands of the Fallen House 
		186351, --Vyraz's Parade Cuffs 
		186338, --Ceremonial Construct Clasp 
		186322, --Sash of Duplicitous Magics 
		186331, --Elite Aranakk Breeches 
		186421, --Forbidden Necromantic Tome 
		186437, --Relic of the Frozen Wastes 
		186436, --Resonant Silver Bell 
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)

	-----------------------------------
	----- Sylvanas Windrunner
	-----------------------------------
	if(playername == "Kaligaran" and realm == "BurningLegion") then
		local bossName = EJ_GetEncounterInfo(2441) 
		local lootTable = { 
			180933, --Ashen Juggernaut 
			183483, --Carnivorous Instinct 
			183511, --Deeper Daggers 
			181740, --Evasive Stride 
			182385, --Growing Inferno 
			182772, --Infernal Brand 
			182208, --Lingering Plague 
			182138, --Mind Devourer 
			182476, --Resilience of the Hunter 
			182127, --Shake the Foundations 
			182559, --Templar's Vindication 
			181383, --Unrelenting Cold 
			186398, --Edge of Night 
			--186414, --Rae'shalare, Death's Whisper 
			186417, --Guard of the Sundered Defender 
			186325, --Veil of the Banshee Queen 
			186342, --Epaulettes of the Master Ranger 
			186349, --Spires of Broken Hope 
			186439, --Dark Ranger's Quiver 
			186334, --Witherheart Studded Breastplate 
			186321, --Desecrator's Keening Wristwraps 
			186332, --Windrunner's Baldric 
			186353, --Greaves of Haunting Ruination 
			186377, --Tarnished Insignia of Quel'Thalas 
			186438, --Old Warrior's Soul 
		}
		self:RegisterBossLoot(Sanctum, lootTable, bossName)
	else
		local bossName = EJ_GetEncounterInfo(2441) 
		local lootTable = { 
			180933, --Ashen Juggernaut 
			183483, --Carnivorous Instinct 
			183511, --Deeper Daggers 
			181740, --Evasive Stride 
			182385, --Growing Inferno 
			182772, --Infernal Brand 
			182208, --Lingering Plague 
			182138, --Mind Devourer 
			182476, --Resilience of the Hunter 
			182127, --Shake the Foundations 
			182559, --Templar's Vindication 
			181383, --Unrelenting Cold 
			186398, --Edge of Night 
			186414, --Rae'shalare, Death's Whisper 
			186417, --Guard of the Sundered Defender 
			186325, --Veil of the Banshee Queen 
			186342, --Epaulettes of the Master Ranger 
			186349, --Spires of Broken Hope 
			186439, --Dark Ranger's Quiver 
			186334, --Witherheart Studded Breastplate 
			186321, --Desecrator's Keening Wristwraps 
			186332, --Windrunner's Baldric 
			186353, --Greaves of Haunting Ruination 
			186377, --Tarnished Insignia of Quel'Thalas 
			186438, --Old Warrior's Soul 
		}
		self:RegisterBossLoot(Sanctum, lootTable, bossName)
	end	
	--------------------------------------------------
	----- Trash Loot
	--------------------------------------------------
	local bossName = "Trash Loot"
	local lootTable = {
		186356, --Forlorn Prisoner's Strap
		186358, --Soulcaster's Woven Grips
		186362, --Bindings of the Subjugated
		186359, --Scoundrel's Harrowed Leggings
		186367, --Bonded Soulsmelt Greaves
		186364, --Cord of Coerced Spirits
		186373, --Towering Shadowghast Greatboots
		186371, --Ancient Brokensoul Bands
	}
	self:RegisterBossLoot(Sanctum, lootTable, bossName)
end  

  

function SanctumRaid:InitializeZoneDetect(ZoneDetect)
	ZoneDetect:RegisterMapID(1998,   Sanctum)
	ZoneDetect:RegisterNPCID(152253, Sanctum, 1) --The Tarragrue
	ZoneDetect:RegisterNPCID(180018, Sanctum, 2) --The Eye of the Jailer
	ZoneDetect:RegisterNPCID(178738, Sanctum, 3) --The Nine
	ZoneDetect:RegisterNPCID(175729, Sanctum, 4) --Remnant of Ner'zhul
	ZoneDetect:RegisterNPCID(175727, Sanctum, 5) --Soulrender Dormazain
	ZoneDetect:RegisterNPCID(176523, Sanctum, 6) --Painsmith Raznal
	ZoneDetect:RegisterNPCID(175731, Sanctum, 7) --Guardian of the First Ones
	ZoneDetect:RegisterNPCID(175730, Sanctum, 8) --Fatscribe Roh-Kalo
	ZoneDetect:RegisterNPCID(15990, Sanctum, 9) --Kel'Thuzad
	ZoneDetect:RegisterNPCID(180828, Sanctum, 10) --Sylvanas Windrunner
end