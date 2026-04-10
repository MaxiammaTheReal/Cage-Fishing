-- Name: EventMerchant
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.EventMerchant
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5568552999993699 seconds

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
-- Decompiled on 2026-04-10 16:49:56
-- Luau version 6, Types version 3
-- Time taken: 0.010825 seconds

local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local Modules_2 = ReplicatedStorage_2.Modules
local ClientResolver = require(Modules_2.ClientResolver)
local Utils_upvr_2 = require(Modules_2.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local EventMerchant_upvr = require(ReplicatedStorage_2.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.EventMerchant
local function _() -- Line 36, Named "getLast24HourTimestamp"
	local os_time_result1_3 = os.time()
	if os_time_result1_3 < 1765720800 then
		return 1765720800
	end
	return math.floor((os_time_result1_3 - 1765720800) / 86400) * 86400 + 1765720800
end
for i_upvr, v in ipairs(require(Modules_2.Library).EventMerchant) do
	local SOME_4 = EventMerchant_upvr.Grid:FindFirstChild(tostring(i_upvr))
	if SOME_4 then
		SOME_4.ItemName.Text = v.Name
		SOME_4.Icon.Image = v.Image
		SOME_4.Buy.Cost.Elixir.Points.Text = Utils_upvr_2.Suffix(v.Cost.Elixir)
		local tbl_3 = {}
		local Server_upvr_2 = ReplicatedStorage_2.Remotes.Server
		tbl_3[1] = function() -- Line 69
			--[[ Upvalues[2]:
				[1]: Server_upvr_2 (readonly)
				[2]: i_upvr (readonly)
			]]
			Server_upvr_2.EventMerchant:FireServer("Buy", {
				ItemId = i_upvr;
			})
		end
		UIController_upvr.bindButton(SOME_4.Buy, true, tbl_3)
		local var46 = ClientResolver.Resolve("Profile", "EventMerchant").Stock[i_upvr]
		if var46 then
			if not tonumber(var46) then return end
			SOME_4.Stock.Text = `x{var46} Stock`
		end
	end
end
workspace.EventMerchant.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 83
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: EventMerchant_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(EventMerchant_upvr)
end)
UIController_upvr.bindButton(EventMerchant_upvr.Header.Close, true, {function() -- Line 91
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: EventMerchant_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(EventMerchant_upvr)
end})
ReplicatedStorage_2.Remotes.Client.EventMerchant.OnClientEvent:Connect(function(arg1, arg2) -- Line 97
	--[[ Upvalues[1]:
		[1]: EventMerchant_upvr (readonly)
	]]
	if arg1 == "ChangeStock" then
		local SOME = EventMerchant_upvr.Grid:FindFirstChild(tostring(arg2.ItemId))
		if not SOME then
		else
			SOME.Stock.Text = `x{arg2.NewStock} Stock`
		end
	end
end)
task.spawn(function() -- Line 111
	--[[ Upvalues[2]:
		[1]: EventMerchant_upvr (readonly)
		[2]: Utils_upvr_2 (readonly)
	]]
	while true do
		local var53
		var53 = var53(1)
		if not var53 then break end
		local os_time_result1 = os.time()
		if os_time_result1 < 1765720800 then
			var53 = 1765720800
		else
			var53 = math.floor((os_time_result1 - 1765720800) / 86400) * 86400 + 1765720800
		end
		EventMerchant_upvr.Header.RestockTime.Text = `Restocks in {Utils_upvr_2.TimeFormat(var53 + 86400 - os.time())}`
	end
end)
local any_Resolve_result1 = ClientResolver.Resolve("Profile", "Elixir")
if any_Resolve_result1 then
	EventMerchant_upvr.Balances.Elixir.Points.Text = Utils_upvr_2.FormatComma(any_Resolve_result1)
end
ClientResolver.OnChanged("Profile", "Elixir", function(arg1) -- Line 126
	--[[ Upvalues[2]:
		[1]: EventMerchant_upvr (readonly)
		[2]: Utils_upvr_2 (readonly)
	]]
	EventMerchant_upvr.Balances.Elixir.Points.Text = Utils_upvr_2.FormatComma(arg1)
end)
return {}