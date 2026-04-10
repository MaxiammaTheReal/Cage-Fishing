-- Name: LuckyBlocks
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.LuckyBlocks
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5633763000005274 seconds

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
-- Decompiled on 2026-04-10 16:49:51
-- Luau version 6, Types version 3
-- Time taken: 0.009810 seconds

local module_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
local LuckyBlock_upvr = game:GetService("Players").LocalPlayer.PlayerGui.Main.LuckyBlock
local function _(arg1) -- Line 24, Named "lootNameToId"
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	for i, v in pairs(Library_upvr.Items.Loot) do
		if v.Name == arg1 then
			return i
		end
	end
end
local function _(arg1) -- Line 32, Named "calculateLuckStart"
	local var10 = arg1 / 10
	if 10 < arg1 then
		var10 = 1
	end
	return math.floor(990000000 * var10)
end
local random_state_upvr = Random.new()
function module_upvr.GetRandomLootItem(arg1, arg2, arg3, arg4, arg5) -- Line 45
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var44 = 0 + arg2
	local tbl = {}
	local _, ipairs_result2, ipairs_result3_2 = ipairs(arg1)
	local var49
	for i_2, v_2 in var49, ipairs_result2, ipairs_result3_2 do
		local tbl_2 = {}
		if arg3 == "Index" then
			tbl_2.Name = i_2
			tbl_2.Chance = v_2.Chance
		else
			tbl_2.Name = v_2[arg3]
			tbl_2.Chance = v_2.Chance
		end
		table.insert(tbl, tbl_2)
	end
	if arg4 then
		var49 = table.sort
		var49(tbl, function(arg1_2, arg2_2) -- Line 70
			local var52
			if arg2_2.Chance >= arg1_2.Chance then
				var52 = false
			else
				var52 = true
			end
			return var52
		end)
	end
	var49 = 0
	for i_3, v_3 in ipairs(tbl) do
		var49 += v_3.Chance
	end
	if var49 == 0 then
		i_3 = tostring(#arg1)
		v_3 = ". Processed loot table contents: "
		warn("[Randomiser] Total weight was 0. Original loot table contents: "..i_3..v_3..tostring(#tbl))
		return nil
	end
	for _, v_4 in ipairs(tbl) do
		v_4.Chance = v_4.Chance / var49 * 1000000000
	end
	if 10 < var44 then
	end
	local any_NextInteger_result1 = random_state_upvr:NextInteger(math.floor(990000000 * 1), 1000000000)
	if arg5 then
		local var61 = var44
		local var62 = var61 / 10
		if 10 < var61 then
			var62 = 1
		end
		any_NextInteger_result1 = Random.new(arg5):NextNumber(math.floor(990000000 * var62), 1000000000)
	end
	for _, v_5 in ipairs(tbl) do
		local var66 = 0 + v_5.Chance
		if any_NextInteger_result1 <= var66 then
			return v_5.Name
		end
	end
	warn("[Randomiser] Fallback triggered - roll exceeded cumulative: ", any_NextInteger_result1, '>', var66)
	if not tbl[1] or not tbl[1].Name then
	end
	return nil
end
require(script.Parent.Parent.UIController).bindButton(LuckyBlock_upvr.Exit, true, {function() -- Line 114
	--[[ Upvalues[1]:
		[1]: LuckyBlock_upvr (readonly)
	]]
	LuckyBlock_upvr.Visible = false
end})
local RunService_upvr = game:GetService("RunService")
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local Notifications_upvr = require(script.Parent.Notifications)
ReplicatedStorage_upvr.Remotes.Client.LuckyBlock.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4) -- Line 120
	--[[ Upvalues[7]:
		[1]: LuckyBlock_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Library_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: Utils_upvr (readonly)
		[7]: Notifications_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if not arg1 then return end
	if not arg2 or #arg2 <= 0 then return end
	if not arg3 then return end
	local ScrollingFrame = LuckyBlock_upvr.Frame.ScrollingFrame
	for _, v_6 in pairs(ScrollingFrame:GetChildren()) do
		if v_6:IsA("ImageLabel") then
			v_6:Destroy()
		end
	end
	local var81 = 1
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 50. Error Block 66 start (CF ANALYSIS FAILED)
	local var82 = Library_upvr.Items.Loot[nil]
	local Rarity = var82.Rarity
	local clone = ReplicatedStorage_upvr.Resources.Interface.RollFrame:Clone()
	clone.ImageLabel.Image = var82.Image
	clone.Rarity.TextLabel.Text = Rarity
	clone.TextLabel.Text = var82.Name
	local SOME = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(Rarity)
	if SOME then
		SOME:Clone().Parent = clone
		SOME:Clone().Parent = clone.Rarity
	end
	clone.LayoutOrder = var81
	clone.Name = tostring(var81)
	clone.Parent = ScrollingFrame
	if var81 == 95 then
	end
	-- KONSTANTERROR: [65] 50. Error Block 66 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 30. Error Block 51 start (CF ANALYSIS FAILED)
	if var81 == 95 then
	end
	-- KONSTANTERROR: [37] 30. Error Block 51 end (CF ANALYSIS FAILED)
end)
return module_upvr