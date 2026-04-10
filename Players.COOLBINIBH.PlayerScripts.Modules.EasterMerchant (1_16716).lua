-- Name: EasterMerchant
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.EasterMerchant
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5661534000009851 seconds

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
-- Decompiled on 2026-04-10 16:50:00
-- Luau version 6, Types version 3
-- Time taken: 0.009570 seconds

local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local Modules_2 = ReplicatedStorage_2.Modules
local ClientResolver_2 = require(Modules_2.ClientResolver)
local Utils_upvr = require(Modules_2.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local EasterMerchant_upvr = require(ReplicatedStorage_2.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.EasterMerchant
local function _() -- Line 36, Named "getLast24HourTimestamp"
	local os_time_result1_4 = os.time()
	if os_time_result1_4 < 1765720800 then
		return 1765720800
	end
	return math.floor((os_time_result1_4 - 1765720800) / 86400) * 86400 + 1765720800
end
for i_upvr, v in ipairs(require(Modules_2.Library).EasterMerchant) do
	local SOME_3 = EasterMerchant_upvr.Grid:FindFirstChild(tostring(i_upvr))
	if SOME_3 then
		SOME_3.ItemName.Text = v.Name
		SOME_3.Icon.Image = v.Image
		SOME_3.Buy.Cost.Elixir.Points.Text = Utils_upvr.Suffix(v.Cost.EventPoints21)
		local tbl_4 = {}
		local Server_upvr_2 = ReplicatedStorage_2.Remotes.Server
		tbl_4[1] = function() -- Line 69
			--[[ Upvalues[2]:
				[1]: Server_upvr_2 (readonly)
				[2]: i_upvr (readonly)
			]]
			Server_upvr_2.EasterMerchant:FireServer("Buy", {
				ItemId = i_upvr;
			})
		end
		UIController_upvr.bindButton(SOME_3.Buy, true, tbl_4)
		local var45 = ClientResolver_2.Resolve("Profile", "EasterMerchant").Stock[i_upvr]
		if var45 then
			if not tonumber(var45) then return end
			SOME_3.Stock.Text = `x{var45} Stock`
		end
	end
end
UIController_upvr.bindButton(EasterMerchant_upvr.Header.Close, true, {function() -- Line 87
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: EasterMerchant_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(EasterMerchant_upvr)
end})
ReplicatedStorage_2.Remotes.Client.EasterMerchant.OnClientEvent:Connect(function(arg1, arg2) -- Line 93
	--[[ Upvalues[1]:
		[1]: EasterMerchant_upvr (readonly)
	]]
	if arg1 == "ChangeStock" then
		local SOME = EasterMerchant_upvr.Grid:FindFirstChild(tostring(arg2.ItemId))
		if not SOME then
		else
			SOME.Stock.Text = `x{arg2.NewStock} Stock`
		end
	end
end)
task.spawn(function() -- Line 107
	--[[ Upvalues[2]:
		[1]: EasterMerchant_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	while true do
		local var51
		var51 = var51(1)
		if not var51 then break end
		local os_time_result1_3 = os.time()
		if os_time_result1_3 < 1765720800 then
			var51 = 1765720800
		else
			var51 = math.floor((os_time_result1_3 - 1765720800) / 86400) * 86400 + 1765720800
		end
		EasterMerchant_upvr.Header.RestockTime.Text = `Restocks in {Utils_upvr.TimeFormat(var51 + 86400 - os.time())}`
	end
end)
local any_Resolve_result1_2 = ClientResolver_2.Resolve("Profile", "EasterTokens")
if any_Resolve_result1_2 then
	EasterMerchant_upvr.Balances.Elixir.Points.Text = Utils_upvr.FormatComma(any_Resolve_result1_2)
end
ClientResolver_2.OnChanged("Profile", "EasterTokens", function(arg1) -- Line 122
	--[[ Upvalues[2]:
		[1]: EasterMerchant_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	EasterMerchant_upvr.Balances.Elixir.Points.Text = Utils_upvr.FormatComma(arg1)
end)
return {}