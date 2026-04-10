-- Name: Reward
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Reward
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5365344000001642 seconds

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
-- Decompiled on 2026-04-10 16:49:47
-- Luau version 6, Types version 3
-- Time taken: 0.004829 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Notifications_upvr = require(script.Parent.Notifications)
local Reward_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.Reward
local ClaimButton_upvr = Reward_upvr.ClaimButton
local var8_upvw = false
local var9_upvw = 30
pcall(function() -- Line 38
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: var8_upvw (read and write)
		[3]: var9_upvw (read and write)
	]]
	if ClientResolver_upvr.Resolve("Profile", "Engagement/InteractionRewardRequested") then
		var8_upvw = true
		var9_upvw = 0
	end
end)
local function startTimer_upvr() -- Line 45, Named "startTimer"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: ClaimButton_upvr (readonly)
	]]
	while 0 < var9_upvw do
		var9_upvw -= 1
		ClaimButton_upvr.TextLabel.Text = "Wait "..var9_upvw..'s'
		task.wait(1)
	end
	ClaimButton_upvr.TextLabel.Text = "Claim"
end
local tbl = {}
local Server_upvr = ReplicatedStorage.Remotes.Server
tbl[1] = function() -- Line 58
	--[[ Upvalues[6]:
		[1]: ClientResolver_upvr (readonly)
		[2]: var8_upvw (read and write)
		[3]: Notifications_upvr (readonly)
		[4]: Server_upvr (readonly)
		[5]: startTimer_upvr (readonly)
		[6]: var9_upvw (read and write)
	]]
	if not ClientResolver_upvr.Resolve("Profile", "Engagement/InteractionReward") then
		if not var8_upvw then
			Notifications_upvr.createNotification("❌ Like and favourite the game and try again!", "Red")
			var8_upvw = true
			Server_upvr.InteractionReward:FireServer("Request")
			startTimer_upvr()
		else
			if var9_upvw <= 0 then
				Server_upvr.InteractionReward:FireServer("Claim")
				return
			end
			Notifications_upvr.createNotification("❌ Like and favourite the game and try again!", "Red")
		end
	end
	Notifications_upvr.createNotification("You have already claimed this reward!", "Red")
end
UIController_upvr.bindButton(ClaimButton_upvr, true, tbl)
UIController_upvr.bindButton(Reward_upvr.Header.Exit, true, {function() -- Line 84
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Reward_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Reward_upvr)
end})
workspace.InteractionReward.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 90
	--[[ Upvalues[2]:
		[1]: Reward_upvr (readonly)
		[2]: UIController_upvr (readonly)
	]]
	if not Reward_upvr.Visible then
		UIController_upvr.toggleFrame(Reward_upvr)
	end
end)
local SocialService_upvr = game:GetService("SocialService")
workspace.EventFollow.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 96
	--[[ Upvalues[2]:
		[1]: SocialService_upvr (readonly)
		[2]: Notifications_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 97
		--[[ Upvalues[1]:
			[1]: SocialService_upvr (copied, readonly)
		]]
		return SocialService_upvr:GetEventRsvpStatusAsync("6610086722766242383")
	end)
	if not pcall_result1 then
		warn("Failed to get RSVP status:", pcall_result2)
	else
		if pcall_result2 ~= Enum.RsvpStatus.Going then
			SocialService_upvr:PromptRsvpToEventAsync("6610086722766242383")
			return
		end
		Notifications_upvr.createNotification("You're already signed up, see you at the event!", "Green")
	end
end)
return {}