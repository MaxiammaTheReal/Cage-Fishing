-- Name: EventRewards
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.EventRewards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5455051999997522 seconds

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
-- Decompiled on 2026-04-10 16:49:49
-- Luau version 6, Types version 3
-- Time taken: 0.002928 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local ClientResolver = require(Modules.ClientResolver)
local Utils_upvr = require(Modules.Utils)
local PlayerGui_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer.PlayerGui
local function _(arg1, arg2) -- Line 32, Named "changeTime"
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local SOME = PlayerGui_upvr.Main.Bottom.Potions:FindFirstChild(arg1.."Time")
	if not SOME then
	else
		SOME.TextLabel.Text = Utils_upvr.TimeFormat(arg2)
		if not SOME.Visible then
			SOME.Visible = true
		end
		if arg2 <= 0 then
			SOME.Visible = false
		end
	end
end
ClientResolver.OnChanged("Profile", "Boosts/LuckTime", function(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local LuckTime = PlayerGui_upvr.Main.Bottom.Potions:FindFirstChild("LuckTime")
	if not LuckTime then
	else
		LuckTime.TextLabel.Text = Utils_upvr.TimeFormat(arg1)
		if not LuckTime.Visible then
			LuckTime.Visible = true
		end
		if arg1 <= 0 then
			LuckTime.Visible = false
		end
	end
end)
ClientResolver.OnChanged("Profile", "Boosts/SuperLuckTime", function(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local SuperLuckTime = PlayerGui_upvr.Main.Bottom.Potions:FindFirstChild("SuperLuckTime")
	if not SuperLuckTime then
	else
		SuperLuckTime.TextLabel.Text = Utils_upvr.TimeFormat(arg1)
		if not SuperLuckTime.Visible then
			SuperLuckTime.Visible = true
		end
		if arg1 <= 0 then
			SuperLuckTime.Visible = false
		end
	end
end)
ClientResolver.OnChanged("Profile", "Boosts/UltraLuckTime", function(arg1) -- Line 53
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local UltraLuckTime = PlayerGui_upvr.Main.Bottom.Potions:FindFirstChild("UltraLuckTime")
	if not UltraLuckTime then
	else
		UltraLuckTime.TextLabel.Text = Utils_upvr.TimeFormat(arg1)
		if not UltraLuckTime.Visible then
			UltraLuckTime.Visible = true
		end
		if arg1 <= 0 then
			UltraLuckTime.Visible = false
		end
	end
end)
return {}