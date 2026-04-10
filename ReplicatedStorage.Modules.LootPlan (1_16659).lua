-- Name: LootPlan
-- Path: game:GetService("ReplicatedStorage").Modules.LootPlan
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5762348000007478 seconds

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
-- Decompiled on 2026-04-10 16:50:58
-- Luau version 6, Types version 3
-- Time taken: 0.008597 seconds

local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local tbl_4_upvr = {}
tbl_4_upvr.__index = tbl_4_upvr
local function new(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_3_upvr)
	local var4 = arg1
	if not var4 then
		var4 = tick() % 1 * 10000000000
	end
	setmetatable_result1.Randomizer = Random.new(var4)
	setmetatable_result1.Loot = {}
	setmetatable_result1.LootList = {}
	setmetatable_result1.LootCount = 0
	setmetatable_result1.TotalWeight = 0
	return setmetatable_result1
end
tbl_3_upvr.new = new
local function AddLoot(arg1, arg2, arg3) -- Line 59
	if arg1.Loot[arg2] then
		error(`Error adding loot: Loot "{arg2}"" already exists.`)
	end
	local tbl_2 = {}
	tbl_2.name = arg2
	tbl_2.weight = arg3
	arg1.Loot[arg2] = tbl_2
	arg1.LootCount += 1
	arg1.TotalWeight += arg3
	arg1:_updateLootList()
	return arg1
end
tbl_3_upvr.AddLoot = AddLoot
local function AddLootFromTable(arg1, arg2) -- Line 75
	for i, v in arg2 do
		arg1:AddLoot(i, v)
	end
	return arg1
end
tbl_3_upvr.AddLootFromTable = AddLootFromTable
function tbl_3_upvr.GetLootWeight(arg1, arg2) -- Line 83
	local var8 = arg1.Loot[arg2]
	if var8 then
		return var8.weight
	end
	error("Error getting weight: Loot with name '"..tostring(arg2).."' does not exist")
end
local function GetLootChance(arg1, arg2) -- Line 93
	local var9 = arg1.Loot[arg2]
	if var9 then
		return var9.weight / arg1.TotalWeight * 100
	end
	error("Error getting chance: Loot with name '"..tostring(arg2).."' does not exist")
end
tbl_3_upvr.GetLootChance = GetLootChance
local function RemoveLoot(arg1, arg2) -- Line 102
	local var10 = arg1.Loot[arg2]
	if var10 then
		arg1.TotalWeight -= var10.weight
		arg1.LootCount -= 1
		arg1.Loot[arg2] = nil
		arg1:_updateLootList()
	end
	return arg1
end
tbl_3_upvr.RemoveLoot = RemoveLoot
function tbl_3_upvr.ChangeLootWeight(arg1, arg2, arg3) -- Line 113
	local var11 = arg1.Loot[arg2]
	if var11 then
		arg1.TotalWeight += arg3 - var11.weight
		var11.weight = arg3
		arg1:_updateLootList()
		return arg1
	end
	error("Error changing weight: Loot with name '"..tostring(arg2).."' does not exist")
	return arg1
end
local function GetRandomLoot(arg1, arg2) -- Line 125
	local var18 = arg2 or 1
	local var19
	if 1 <= var18 then
		for _, v_2 in arg1.LootList do
			if arg1.Randomizer:NextNumber() < (v_2.weight * var18 + 0) / arg1.TotalWeight then
				var19 = v_2.name
				return var19
			end
		end
		return var19
	end
	for i_3 = arg1.LootCount, 1, -1 do
		local var23 = arg1.LootList[i_3]
		if arg1.Randomizer:NextNumber() < ((var23.weight) * (1 / var18) + 0) / arg1.TotalWeight then
			var19 = var23.name
			return var19
		end
	end
	return var19
end
tbl_3_upvr.GetRandomLoot = GetRandomLoot
function tbl_3_upvr._updateLootList(arg1) -- Line 158
	local tbl_5 = {}
	for _, v_3 in arg1.Loot do
		table.insert(tbl_5, v_3)
	end
	table.sort(tbl_5, function(arg1_2, arg2) -- Line 165
		local var31
		if arg1_2.weight >= arg2.weight then
			var31 = false
		else
			var31 = true
		end
		return var31
	end)
	arg1.LootList = tbl_5
	return arg1
end
function tbl_4_upvr.new(arg1) -- Line 176
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_4_upvr)
	local var33 = arg1
	if not var33 then
		var33 = tick() % 1 * 10000000000
	end
	setmetatable_result1_2.Randomizer = Random.new(var33)
	setmetatable_result1_2.Loot = {}
	return setmetatable_result1_2
end
function tbl_4_upvr.AddLoot(arg1, arg2, arg3) -- Line 183
	local tbl = {}
	tbl.name = arg2
	tbl.chance = arg3
	arg1.Loot[arg2] = tbl
	return arg1
end
function tbl_4_upvr.AddLootFromTable(arg1, arg2) -- Line 192
	for i_5, v_4 in arg2 do
		arg1:AddLoot(i_5, v_4)
	end
	return arg1
end
function tbl_4_upvr.GetLootChance(arg1, arg2) -- Line 199
	local var37 = arg1.Loot[arg2]
	if var37 then
		return var37.chance
	end
	error("Error getting chance: Loot with name '"..tostring(arg2).."' does not exist")
end
function tbl_4_upvr.RemoveLoot(arg1, arg2) -- Line 208
	arg1.Loot[arg2] = nil
	return arg1
end
function tbl_4_upvr.ChangeLootChance(arg1, arg2, arg3) -- Line 213
	local var38 = arg1.Loot[arg2]
	if var38 then
		var38.chance = arg3
		return arg1
	end
	error("Error changing chance: Loot with name '"..tostring(arg2).."' does not exist")
	return arg1
end
function tbl_4_upvr.GetRandomLoot(arg1, arg2, arg3) -- Line 223
	local module = {}
	for _ = 1, arg3 or 1 do
		for i_7, v_5 in arg1.Loot do
			local var46
			if arg1.Randomizer:NextNumber() < v_5.chance / 100 * (arg2 or 1) then
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var46 = module[i_7] + 1
					return var46
				end
				if not module[i_7] or not INLINED() then
					var46 = 1
				end
				module[i_7] = var46
			end
		end
	end
	return module
end
return {
	newSingle = tbl_3_upvr.new;
	newMulti = tbl_4_upvr.new;
}