-- Name: AttributeStacker
-- Path: game:GetService("ReplicatedStorage").Modules.AttributeStacker
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5901942999989842 seconds

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
-- Decompiled on 2026-04-10 16:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.004170 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local function _(arg1) -- Line 15, Named "round2"
	return math.round(arg1 * 100) / 100
end
function module_upvr.GetWeightedValueMultiplier(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local WeightedValues = Library_upvr.WeightedValues
	local pairs_result1_3, pairs_result2, pairs_result3_5 = pairs(WeightedValues)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.11]
	if arg2 / Library_upvr.Items.Loot[arg1].MaxWeight * 100 <= nil then
		if WeightedValues[1 + 1] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			-- KONSTANTWARNING: GOTO [45] #36
		end
		-- KONSTANTWARNING: GOTO [43] #34
	end
	-- KONSTANTERROR: [19] 15. Error Block 15 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 59, Named "lootIdToName"
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	for i, v in pairs(Library_upvr.Items.Loot) do
		if i == arg1 then
			return v.Name
		end
	end
end
function module_upvr.GetLootValue(arg1, arg2) -- Line 67
	--[[ Upvalues[2]:
		[1]: Library_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2_2, pairs_result3_2 = pairs(Library_upvr.Items.Loot)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.6]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.2]
	if nil == arg1 then
		-- KONSTANTWARNING: GOTO [17] #12
	end
	-- KONSTANTERROR: [9] 7. Error Block 23 end (CF ANALYSIS FAILED)
end
function module_upvr.GetWeightedSizeMultiplier(arg1, arg2) -- Line 93
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local WeightedSizes = Library_upvr.WeightedSizes
	local pairs_result1_5, pairs_result2_5, pairs_result3_4 = pairs(WeightedSizes)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.11]
	if arg2 / Library_upvr.Items.Loot[arg1].MaxWeight * 100 <= nil then
		if WeightedSizes[1 + 1] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			-- KONSTANTWARNING: GOTO [45] #36
		end
		-- KONSTANTWARNING: GOTO [43] #34
	end
	-- KONSTANTERROR: [19] 15. Error Block 15 end (CF ANALYSIS FAILED)
end
local Utils_upvr = require(ReplicatedStorage.Modules.Utils)
function module_upvr.GetEnchantmentBoost(arg1, arg2) -- Line 133
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: Library_upvr (readonly)
	]]
	local var37
	for i_2, v_2 in pairs(arg2) do
		if v_2.Slot ~= "None" then
			local var38 = Library_upvr.Enchants[Utils_upvr.SplitDash(i_2)[2]]
			if var38.BoostType == arg1 then
				var37 += var38.Boost
			end
		end
	end
	return var37
end
return module_upvr