-- Name: Achievements
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Achievements
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.557586300001276 seconds

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
-- Decompiled on 2026-04-10 16:49:43
-- Luau version 6, Types version 3
-- Time taken: 0.005160 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Achievements_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").Centre.Achievements
local tbl_upvr = {}
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local function updateAchievement_upvr(arg1) -- Line 59, Named "updateAchievement"
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Library_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", `Engagement/{arg1}`)
	local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", `Achievements/{arg1}`)
	local var9 = tbl_upvr[arg1]
	local var10 = Library_upvr.Achievements[arg1]
	local var11
	if not var10.Milestones[any_Resolve_result1.MilestoneIndex] then
	else
		local var12 = var10.Milestones[any_Resolve_result1.MilestoneIndex]
		local Reward = var12.Reward
		if Reward.Type == "Cash" then
			var11 = '$'
		else
			var11 = ""
		end
		var9.Content.Reward.Text = `{var11}{Reward.Value}`
		var11 = var10.Description:format(var12.Goal)
		var9.Content.ItemName.Text = `{var11} ({math.min(any_Resolve_result1_2, var12.Goal)}/{var12.Goal})`
		if any_Resolve_result1_2 < var12.Goal then
		else
		end
		var9.Content.Claim.TextLabel.Text = "Claimable"
	end
end
local Achievement_upvr = ReplicatedStorage.Resources.Templates.Achievement
local Server_upvr = ReplicatedStorage.Remotes.Server
local ScrollingFrame_upvr = Achievements_upvr.Frame.ScrollingFrame
local function setAchievement_upvr(arg1, arg2) -- Line 81, Named "setAchievement"
	--[[ Upvalues[5]:
		[1]: Achievement_upvr (readonly)
		[2]: Server_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: updateAchievement_upvr (readonly)
		[5]: ScrollingFrame_upvr (readonly)
	]]
	if not arg2.IsEnable then
	else
		local clone = Achievement_upvr:Clone()
		clone.Content.Claim.MouseButton1Click:Connect(function() -- Line 87
			--[[ Upvalues[2]:
				[1]: Server_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			Server_upvr.claimMilestone:FireServer(arg1)
		end)
		tbl_upvr[arg1] = clone
		updateAchievement_upvr(arg1)
		clone.Parent = ScrollingFrame_upvr
	end
end
local Player_upvr = require(script.Parent.Player)
ReplicatedStorage.Remotes.Client.updateAchievement.OnClientEvent:Connect(updateAchievement_upvr)
UIController_upvr.bindButton(Achievements_upvr.Header.Exit, true, {function() -- Line 120
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Achievements_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Achievements_upvr)
end})
;(function() -- Line 94, Named "load"
	--[[ Upvalues[5]:
		[1]: Player_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: setAchievement_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: updateAchievement_upvr (readonly)
	]]
	if not Player_upvr.isLoaded() then
		Player_upvr.waitForLoad()
	end
	if not Player_upvr.isDataLoaded() then
		Player_upvr.waitForDataLoad()
	end
	for i, v in ClientResolver_upvr.Resolve("Profile", "Achievements"), nil do
		setAchievement_upvr(i, v)
	end
	for i_2_upvr in ClientResolver_upvr.Resolve("Profile", "Engagement"), nil do
		if tbl_upvr[i_2_upvr] then
			ClientResolver_upvr.OnChanged("Profile", `Engagement/{i_2_upvr}`, function() -- Line 109
				--[[ Upvalues[2]:
					[1]: updateAchievement_upvr (copied, readonly)
					[2]: i_2_upvr (readonly)
				]]
				updateAchievement_upvr(i_2_upvr)
			end)
		end
	end
end)()
return {}