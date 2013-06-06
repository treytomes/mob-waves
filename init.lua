dofile(minetest.get_modpath("zombies").."/api.lua")

mobs:register_mob("zombies:zombie", {
	type = "monster",
	hp_max = 8,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_zombie.x",
	textures = {"mobs_zombie.png"},
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	view_range = 35,
	walk_velocity = 1.1,
	run_velocity = 3,
	damage = 2,
	drops = {},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 39,
		walk_start = 41,
		walk_end = 72,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
})
mobs:register_spawn("zombies:zombie", {"default:desert_sand", "default:dirt_with_grass", "default:sand"}, 20, -1, 7000, 100, 31000)

minetest.log("action", "zombies loaded")
