-- Name: DailyGifts
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.DailyGifts
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5540479999999661 seconds

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
-- Decompiled on 2026-04-10 16:49:31
-- Luau version 6, Types version 3
-- Time taken: 0.005300 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local ClientResolver_upvr = require(Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local DailyGifts_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.DailyGifts
local tbl_upvr = {}
for _, v_upvr in pairs(DailyGifts_upvr:GetDescendants()) do
	if v_upvr:IsA("TextButton") and tonumber(v_upvr.Name) then
		tbl_upvr[tonumber(v_upvr.Name)] = v_upvr
		UIController_upvr.bindButton(v_upvr, true, {function() -- Line 39
			--[[ Upvalues[3]:
				[1]: v_upvr (readonly)
				[2]: ClientResolver_upvr (readonly)
				[3]: ReplicatedStorage_upvr (readonly)
			]]
			ReplicatedStorage_upvr.Remotes.Server.DailyGift:FireServer()
			if ClientResolver_upvr.Resolve("Profile", "Engagement/LastClaim") + 86400 <= os.time() and ClientResolver_upvr.Resolve("Profile", "Engagement/Streak") + 1 == tonumber(v_upvr.Name) then
				v_upvr.Claim.TextLabel.Visible = false
				v_upvr.Claim.ImageLabel.Visible = true
			end
		end})
	end
end
UIController_upvr.bindButton(DailyGifts_upvr.Header.Exit, true, {function() -- Line 60
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: DailyGifts_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(DailyGifts_upvr)
end})
task.spawn(function() -- Line 66
	--[[ Upvalues[2]:
		[1]: ClientResolver_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Engagement/Streak")
	if 8 <= any_Resolve_result1 then
		any_Resolve_result1 = 7
	end
	for i_2 = 1, any_Resolve_result1 do
		tbl_upvr[tonumber(i_2)].Claim.Visible = true
		tbl_upvr[tonumber(i_2)].Claim.ImageLabel.Visible = true
	end
	if ClientResolver_upvr.Resolve("Profile", "Engagement/LastClaim") + 86400 <= os.time() and any_Resolve_result1 < 7 then
		i_2 = any_Resolve_result1 + 1
		tbl_upvr[i_2].Claim.Visible = true
		i_2 = any_Resolve_result1 + 1
		tbl_upvr[i_2].Claim.TextLabel.Visible = true
	end
end)
local Timer_upvr = DailyGifts_upvr.Timer
local Utils_upvr = require(Modules.Utils)
task.spawn(function() -- Line 85
	--[[ Upvalues[4]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Timer_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	while task.wait(1) do
		local any_Resolve_result1_3 = ClientResolver_upvr.Resolve("Profile", "Engagement/LastClaim")
		local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", "Engagement/Streak")
		if 7 <= any_Resolve_result1_2 then break end
		if os.time() < any_Resolve_result1_3 + 86400 then
			Timer_upvr.Text = "Day "..tostring(any_Resolve_result1_2 + 1).." reward in: "..Utils_upvr.TimeFormat(any_Resolve_result1_3 + 86400 - os.time())
		else
			Timer_upvr.Text = "✅ Day "..tostring(any_Resolve_result1_2 + 1).." reward ready!"
			if any_Resolve_result1_3 + 86400 <= os.time() and any_Resolve_result1_2 < 7 then
				local var25 = tbl_upvr[any_Resolve_result1_2 + 1]
				var25.Claim.Visible = true
				var25.Claim.TextLabel.Visible = true
			end
		end
	end
end)
return {}