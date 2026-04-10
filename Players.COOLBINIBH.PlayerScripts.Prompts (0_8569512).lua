-- Name: Prompts
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Prompts
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5449219999991328 seconds

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
-- Decompiled on 2026-04-10 16:49:07
-- Luau version 6, Types version 3
-- Time taken: 0.002496 seconds

local ExperienceNotificationService_upvr = game:GetService("ExperienceNotificationService")
local function _() -- Line 15, Named "canPromptOptIn"
	--[[ Upvalues[1]:
		[1]: ExperienceNotificationService_upvr (readonly)
	]]
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 16
		--[[ Upvalues[1]:
			[1]: ExperienceNotificationService_upvr (copied, readonly)
		]]
		return ExperienceNotificationService_upvr:CanPromptOptInAsync()
	end)
	return pcall_result1_3 and pcall_result2_2
end
require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("ClientResolver")).OnChanged("Profile", "Engagement/Time", function(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: ExperienceNotificationService_upvr (readonly)
	]]
	if arg1 == 360 then
		local pcall_result1, pcall_result2_4 = pcall(function() -- Line 16
			--[[ Upvalues[1]:
				[1]: ExperienceNotificationService_upvr (copied, readonly)
			]]
			return ExperienceNotificationService_upvr:CanPromptOptInAsync()
		end)
		if pcall_result1 and pcall_result2_4 then
			local _, _ = pcall(function() -- Line 27
				--[[ Upvalues[1]:
					[1]: ExperienceNotificationService_upvr (copied, readonly)
				]]
				ExperienceNotificationService_upvr:PromptOptIn()
			end)
		end
	end
end)
local SocialService_upvr = game:GetService("SocialService")
task.delay(240, function() -- Line 34
	--[[ Upvalues[1]:
		[1]: SocialService_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 35
		--[[ Upvalues[1]:
			[1]: SocialService_upvr (copied, readonly)
		]]
		return SocialService_upvr:GetEventRsvpStatusAsync("6610086722766242383")
	end)
	if not pcall_result1_2 then
		warn("Failed to get RSVP status:", pcall_result2)
	elseif pcall_result2 ~= Enum.RsvpStatus.Going then
		SocialService_upvr:PromptRsvpToEventAsync("6610086722766242383")
	end
end)