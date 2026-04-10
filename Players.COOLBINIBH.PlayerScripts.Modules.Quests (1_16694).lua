-- Name: Quests
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Quests
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5624514999999519 seconds

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
-- Decompiled on 2026-04-10 16:49:38
-- Luau version 6, Types version 3
-- Time taken: 0.010557 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local Utils_upvr = require(ReplicatedStorage.Modules.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local tbl_upvr = {
	CashRarity = "Common";
}
local Quests_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").Centre.Quests
local ScrollingFrame_upvr = Quests_upvr.Frame.ScrollingFrame
local module_upvr = {
	_getObjective = function(arg1, arg2) -- Line 58, Named "_getObjective"
		local var9
		if arg2.Mutation ~= "None" then
			var9 = `{arg2.Mutation} `
		else
			var9 = ""
		end
		return `Quest #{arg1}: Get a {var9}{arg2.LootName}`
	end;
	_clear = function() -- Line 62, Named "_clear"
		--[[ Upvalues[1]:
			[1]: ScrollingFrame_upvr (readonly)
		]]
		for _, v in ScrollingFrame_upvr:GetChildren() do
			if not v:IsA("UIGridLayout") then
				v:Destroy()
			end
		end
	end;
	_getLootKeyByType = function(arg1, arg2) -- Line 66, Named "_getLootKeyByType"
		--[[ Upvalues[2]:
			[1]: ClientResolver_upvr (readonly)
			[2]: Utils_upvr (readonly)
		]]
		for i_2, v_2 in ClientResolver_upvr.Resolve("Profile", "Inventory"), nil do
			local any_SplitDash_result1 = Utils_upvr.SplitDash(i_2)
			if any_SplitDash_result1[1] == "Loot" and any_SplitDash_result1[2] == arg1 and (arg2 == "None" or table.find(v_2.Mutations, arg2)) or arg2 ~= "None" or 0 >= #v_2.Mutations then
				return i_2
			end
		end
	end;
}
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local Quest_upvr = ReplicatedStorage.Resources.Templates.Quest
local RarityGradients_upvr = ReplicatedStorage.Resources.RarityGradients
local Server_upvr = ReplicatedStorage.Remotes.Server
function module_upvr._load(arg1) -- Line 84
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Quest_upvr (readonly)
		[5]: RarityGradients_upvr (readonly)
		[6]: UIController_upvr (readonly)
		[7]: Server_upvr (readonly)
		[8]: ScrollingFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	module_upvr._clear()
	for i_3_upvr, v_3 in arg1 do
		local Loot = Library_upvr.Items.Loot
		local var32
		if v_3.RewardClass ~= "Cash" then
			Loot = Library_upvr.Items[v_3.RewardClass][v_3.RewardId]
		else
			Loot = {}
			Loot.Rarity = tbl_upvr.CashRarity
		end
		local clone = Quest_upvr:Clone()
		local Reward = clone.Content.Reward
		local Claim = clone.Content.Claim
		var32 = v_3.Mutation
		local var36
		var32 = v_3.IsCompleted
		if var32 then
			var36 = "Claimed"
		elseif module_upvr._getLootKeyByType(v_3.LootId, var32) then
			var36 = "Claimable"
		else
			var36 = "Uncompleted"
		end
		if var36 == "Uncompleted" then
			var32 = Color3.fromRGB(255, 255, 127)
		else
			var32 = Color3.fromRGB(176, 255, 201)
		end
		clone.Name = v_3.LootName
		clone.LayoutOrder = i_3_upvr
		local var37 = Claim
		UIController_upvr.bindButton(var37, true, {function() -- Line 128
			--[[ Upvalues[2]:
				[1]: Server_upvr (copied, readonly)
				[2]: i_3_upvr (readonly)
			]]
			Server_upvr.claimQuest:FireServer(i_3_upvr)
		end})
		Claim.TextLabel.Text = var36
		Claim.TextLabel.TextColor3 = var32
		Claim.UIStroke.Color = var32
		if var36 == "Uncompleted" then
			var37 = false
		else
			var37 = true
		end
		Claim.UIGradient.Enabled = var37
		if var36 ~= "Uncompleted" then
			-- KONSTANTWARNING: GOTO [148] #100
		end
		Claim.Uncompleted.Enabled = true
		clone.Content.QuestName.Text = module_upvr._getObjective(i_3_upvr, v_3)
		if v_3.RewardClass ~= "Cash" then
		else
		end
		Reward.Text = `${v_3.CashValue} Cash`
		clone.Content.LootIcon.Image = Loot[v_3.LootId].Image
		clone.Content.Order.TextLabel.Text = 1
		RarityGradients_upvr[Loot.Rarity]:Clone().Parent = Reward
		clone.Parent = ScrollingFrame_upvr
	end
end
local Timer_upvr = Quests_upvr.Frame.Timer
function module_upvr._setTimer() -- Line 155
	--[[ Upvalues[2]:
		[1]: Timer_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	task.spawn(function() -- Line 157
		--[[ Upvalues[2]:
			[1]: Timer_upvr (copied, readonly)
			[2]: Utils_upvr (copied, readonly)
		]]
		while task.wait(1) do
			local os_time_result1 = os.time()
			local os_date_result1 = os.date("!*t", os_time_result1)
			Timer_upvr.Text = `Quests refresh in {Utils_upvr.TimeFormat(os.time({
				year = os_date_result1.year;
				month = os_date_result1.month;
				day = os_date_result1.day + 1;
				hour = 0;
				minute = 0;
				second = 0;
			}) - os_time_result1)}`
		end
	end)
end
local Player_upvr = require(script.Parent.Player)
local var46_upvw
function module_upvr._setup() -- Line 180
	--[[ Upvalues[4]:
		[1]: Player_upvr (readonly)
		[2]: var46_upvw (read and write)
		[3]: ClientResolver_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	task.spawn(function() -- Line 181
		--[[ Upvalues[4]:
			[1]: Player_upvr (copied, readonly)
			[2]: var46_upvw (copied, read and write)
			[3]: ClientResolver_upvr (copied, readonly)
			[4]: module_upvr (copied, readonly)
		]]
		if not Player_upvr.isLoaded() then
			Player_upvr.waitForLoad()
		end
		if not Player_upvr.isDataLoaded() then
			Player_upvr.waitForDataLoad()
		end
		var46_upvw = ClientResolver_upvr.Resolve("Profile", "Quests/Tasks")
		module_upvr._load(var46_upvw)
		module_upvr._setTimer()
		ClientResolver_upvr.OnArraySet("Profile", "Inventory", function(arg1, arg2) -- Line 190
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: var46_upvw (copied, read and write)
			]]
			module_upvr._load(var46_upvw)
		end)
	end)
end
UIController_upvr.bindButton(Quests_upvr.Header.Exit, true, {function() -- Line 198
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Quests_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Quests_upvr)
end})
ReplicatedStorage.Remotes.Client.updateQuests.OnClientEvent:Connect(module_upvr._load)
module_upvr._setup()
return module_upvr