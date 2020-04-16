local function RGB(r, g, b)
    return { r / 255, g / 255, b / 255, 1 }
end


local seg_time = 30

local day_segs = 10
local dusk_segs = 4
local night_segs = 2

local day_time = seg_time * day_segs
local total_day_time = seg_time * 16

local day_time = seg_time * day_segs
local dusk_time = seg_time * dusk_segs
local night_time = seg_time * night_segs

TUNING = GLOBAL.TUNING

-- [              DSTU Related Overrides                  ]

TUNING.DSTU = 
{
	----------------------------------------------------------------------------
    --Acid colour
    ----------------------------------------------------------------------------
	ACID_TEXT_COLOUR = RGB(180, 200, 0),
    ----------------------------------------------------------------------------
    --Food changes
    ----------------------------------------------------------------------------
    --Global appearance rate of foods
    FOOD_CARROT_PLANTED_APPEARANCE_PERCENT = 0.2, 
    FOOD_BERRY_NORMAL_APPEARANCE_PERCENT = 0.2, 
    FOOD_BERRY_JUICY_APPEARANCE_PERCENT = 0.2, 
    FOOD_MUSHROOM_GREEN_APPEARANCE_PERCENT = 0.3, 
    FOOD_MUSHROOM_BLUE_APPEARANCE_PERCENT = 0.15, 
    FOOD_MUSHROOM_RED_APPEARANCE_PERCENT = 0.7, 
    
    --Growth time increases
    STONE_FRUIT_GROWTH_INCREASE = 3,
    TREE_GROWTH_TIME_INCREASE = 1.05,

    --Food stats
    FOOD_BUTTERFLY_WING_HEALTH = 5, -- 3
    FOOD_BUTTERFLY_WING_HUNGER = 2.5,
    FOOD_BUTTERFLY_WING_PERISHTIME = total_day_time / 2,
    FOOD_SEEDS_HUNGER = 1.5,
    
    --Food production
    FOOD_HONEY_PRODUCTION_PER_STAGE = {0,1,2,4},

    --Respawn time increases
    BUNNYMAN_RESPAWN_TIME_DAYS = 3,
	
	----------------------------------------------------------------------------
    --Winter Fire spreading
    ----------------------------------------------------------------------------
	WINTER_FIRE_MOD = 0.34,
    ----------------------------------------------------------------------------
    --Acid rain event tuning
    ----------------------------------------------------------------------------
    ACID_RAIN_DAMAGE_TICK = 2,
    ACID_RAIN_START_AFTER_DAY = 70,
    ACID_RAIN_DISEASE_CHANCE = 0.1, --each 5-10 seconds
    TOADSTOOL_ACIDMUSHROOM = {
        RADIUS = 2.5,

        WAVE_MAX_ATTACKS = 7,
        WAVE_MIN_ATTACKS = 5,
        WAVE_ATTACK_DELAY = .75,
        WAVE_ATTACK_DELAY_VARIANCE = 1,
        WAVE_MERGE_ATTACKS_DIST_SQ = math.pow(4 * 3, 2), -- 4 == TILE_SCALE

        NUM_WARNINGS = 12,
        WARNING_DELAY = 1,
        WARNING_DELAY_VARIANCE = .3,
    },

    ----------------------------------------------------------------------------
    --Cooking recipe changes
    ----------------------------------------------------------------------------
    --Recipe stat changes
    RECIPE_CHANGE_STEW_COOKTIME = 180, --in seconds
    RECIPE_CHANGE_PEROGI_PERISH = TUNING.PERISH_MED, --in days (from 20 to 10)
    RECIPE_CHANGE_BACONEGG_PERISH = TUNING.PERISH_MED,
    RECIPE_CHANGE_MEATBALL_HUNGER = TUNING.CALORIES_SMALL*4, -- (12.5 * 4) = 50, from 62.5
    RECIPE_CHANGE_BUTTERMUFFIN_HEALTH = TUNING.HEALING_MED/2,
    
    --Limits to fillers
    CROCKPOT_RECIPE_TWIG_LIMIT = 2,
    CROCKPOT_RECIPE_ICE_LIMIT = 2,
    CROCKPOT_RECIPE_ICE_PLUS_TWIG_LIMIT = 2,

    --Monster meat meat dilution
    MONSTER_MEAT_RAW_MONSTER_VALUE = 2.5,
    MONSTER_MEAT_COOKED_MONSTER_VALUE = 2.0,
    MONSTER_MEAT_DRIED_MONSTER_VALUE = 1.5,
    MONSTER_MEAT_MEAT_REDUCTION_PER_MEAT = 1.0,

    ----------------------------------------------------------------------------
    --Recipe changes
    ----------------------------------------------------------------------------
    --Celestial portal costs
    RECIPE_MOONROCK_IDOL_MOONSTONE_COST = 5,
    RECIPE_CELESTIAL_UPGRADE_GLASS_COST = 20,

    ----------------------------------------------------------------------------
    --Mob changes
    ----------------------------------------------------------------------------
    --Generics
    MONSTER_BAT_CAVE_NR_INCREASE = 3,
    MONSTER_CATCOON_HEALTH_CHANGE = TUNING.CATCOON_LIFE * 2.5,
    
    --Mctusk
    MONSTER_MCTUSK_HEALTH_INCREASE = 3,
    MONSTER_MCTUSK_HOUND_NUMBER = 5,

    --Hounds
    MONSTER_HOUNDS_PER_WAVE_INCREASE = 1.5, --Controlled by player settings

    ----------------------------------------------------------------------------
    --Player changes
    ----------------------------------------------------------------------------
	
    WORTOX_HEALTH = 120,
	
    --Tripover chance on walking with 100 wetness
    TRIPOVER_HEALTH_DAMAGE = 10,
    TRIPOVER_ONMAXWET_CHANCE_PER_SEC = 0.10,
    TRIPOVER_KNOCKABCK_RADIUS = 2,
    TRIPOVER_ONMAXWET_COOLDOWN = 5,

    --Weapon slip increase
    SLIPCHANCE_INCREASE_X = 3,

    ----------------------------------------------------------------------------
    --Character changes
    ----------------------------------------------------------------------------
    --Woodie
    GOOSE_WATER_WETNESS_RATE = 3,

    --Wolfgang
    WOLFGANG_SANITY_MULTIPLIER = 1.5, --prev was 1.1

    --WX78
    WX78_MOISTURE_DAMAGE_INCREASE = 3,

    --Wormwood
    WORMWOOD_BURN_TIME = 6.66, --orig 4.3
    WORMWOOD_FIRE_DAMAGE = 1.50, -- orig 1.25
    --Growth time increase for stone fruits
    STONE_FRUIT_GROWTH_INCREASE = 3,
	
	--Mobs
	RAIDRAT_HEALTH = 100,
	RAIDRAT_DAMAGE = 20,
	RAIDRAT_ATTACK_PERIOD = 2,
	RAIDRAT_ATTACK_RANGE = 1,
	RAIDRAT_RUNSPEED = 8,
	RAIDRAT_WALKSPEED = 4,
	RAIDRAT_SPAWNRATE = seg_time / 5,
	RAIDRAT_SPAWNRATE_VARIANCE = (seg_time / 5) * 0.5,
	
	--Weather Start Date
    WEATHERHAZARD_START_DATE = 23,

	HARDER_SHADOWS = GetModConfigData("harder_shadows"),
    MAX_DISTANCE_TO_SHADOWS = 1225, -- 35^2

    CREEPINGFEAR_SPEED = 4.8,
    CREEPINGFEAR_HEALTH = 1600,
    CREEPINGFEAR_DAMAGE = 60,
    CREEPINGFEAR_ATTACK_PERIOD = 2.3,
    CREEPINGFEAR_RANGE_1 = 3.0,
    CREEPINGFEAR_RANGE_2 = 4.2,
    CREEPINGFEAR_SPAWN_THRESH = 0, -- 10%

    DREADEYE_SPEED = 7,
    DREADEYE_HEALTH = 350,
    DREADEYE_DAMAGE = 35,
    DREADEYE_ATTACK_PERIOD = 2,
    DREADEYE_RANGE_1 = 1.8,
    DREADEYE_RANGE_2 = 1.8,
    DREADEYE_SPAWN_THRESH = 0.20,
	
	TOADLING_DAMAGE = 50,
	TOADLING_HEALTH = 1000,
	TOADLING_ATTACK_PERIOD = 2,
	TOADLING_WALK_SPEED = 5,
	TOADLING_RUN_SPEED = 6,
	TOADLING_TARGET_DIST = 12,

}

TUNING.DISEASE_DELAY_TIME = total_day_time * 50 / 1.5
TUNING.DISEASE_DELAY_TIME_VARIANCE = total_day_time * 20
TUNING.DISEASE_WARNING_TIME = total_day_time * 5
TUNING.SANITY_BECOME_INSANE_THRESH = 40/200 -- 20%
TUNING.SANITY_BECOME_SANE_THRESH  = 45/200 -- 22.5%
TUNING.WET_FUEL_PENALTY = 0.20 

-- [              DST Related Overrides                  ]
