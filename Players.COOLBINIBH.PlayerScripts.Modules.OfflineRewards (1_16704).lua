-- Name: OfflineRewards
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.OfflineRewards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5572960999998031 seconds

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
-- Decompiled on 2026-04-10 16:49:48
-- Luau version 6, Types version 3
-- Time taken: 0.006466 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local Modules = ReplicatedStorage_upvr.Modules
local Library_upvr = require(Modules.Library)
local UIController_upvr = require(script.Parent.Parent.UIController)
local LocalPlayer_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local OfflineRewards_upvr = PlayerGui_upvr.Main.Centre.OfflineRewards
local function _(arg1) -- Line 37, Named "nameToId"
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	for i, v in pairs(Library_upvr.Items.Loot) do
		if v.Name == arg1 then
			return i
		end
	end
end
local Utils_upvr = require(Modules.Utils)
local Inventory_upvr = require(script.Parent.Inventory)
local Rewards_upvr = OfflineRewards_upvr.Rewards
ReplicatedStorage_upvr.Remotes.Client.OfflineRewards.OnClientEvent:Connect(function(arg1) -- Line 45
	--[[ Upvalues[7]:
		[1]: UIController_upvr (readonly)
		[2]: OfflineRewards_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: Library_upvr (readonly)
		[6]: Inventory_upvr (readonly)
		[7]: Rewards_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	UIController_upvr.toggleFrame(OfflineRewards_upvr)
	local pairs_result1_2, pairs_result2_3, pairs_result3_2 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 38. Error Block 14 start (CF ANALYSIS FAILED)
	local var21
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [55.7]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.5]
	nil.ItemName.Text = Inventory_upvr.GetNameString(nil, nil[2])
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.ItemImage.Image = Library_upvr.Items.Loot[var21].Image
	local SOME = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(Library_upvr.Items.Loot[var21].Rarity)
	if SOME then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		SOME:Clone().Parent = nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.Parent = Rewards_upvr
	-- KONSTANTERROR: [54] 38. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
end)
local tbl = {}
local ClientResolver_upvr = require(Modules.ClientResolver)
tbl[1] = function() -- Line 75
	--[[ Upvalues[4]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: UIController_upvr (readonly)
		[4]: OfflineRewards_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2, pairs_result3_3 = pairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.7]
	-- KONSTANTERROR: [12] 11. Error Block 2 end (CF ANALYSIS FAILED)
end
UIController_upvr.bindButton(OfflineRewards_upvr.Options.Collect, true, tbl)
UIController_upvr.bindButton(OfflineRewards_upvr.Header.Exit, true, {function() -- Line 100
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: OfflineRewards_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(OfflineRewards_upvr)
end})
local TouchEnabled = UserInputService.TouchEnabled
if TouchEnabled then
	TouchEnabled = not UserInputService.KeyboardEnabled
end
if TouchEnabled then
	OfflineRewards_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: PlayerGui_upvr (readonly)
			[2]: OfflineRewards_upvr (readonly)
		]]
		local Hotbar = PlayerGui_upvr.Main.Bottom:FindFirstChild("Hotbar")
		if Hotbar then
			if OfflineRewards_upvr.Visible then
				Hotbar.Visible = false
				return
			end
			Hotbar.Visible = true
		end
	end)
end
return {}