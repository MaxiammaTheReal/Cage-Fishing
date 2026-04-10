-- Name: SellFishToPlayer
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.SellFishToPlayer
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2627363999999943 seconds

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
-- Decompiled on 2026-04-10 16:49:08
-- Luau version 6, Types version 3
-- Time taken: 0.010568 seconds

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = Players.LocalPlayer
local Centre = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("Main"):WaitForChild("Centre")
local SellFish_upvr = Centre:WaitForChild("SellFish")
local BuyFish_upvr = Centre:WaitForChild("BuyFish")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local Server = Remotes:WaitForChild("Server")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientResolver"))
local module_upvr_3 = require(Modules:WaitForChild("Utils"))
local module_upvr = require(Modules:WaitForChild("Library"))
local UIController_upvr = require(LocalPlayer_upvr.PlayerScripts.UIController)
local Character_2_upvw = LocalPlayer_upvr.Character
if not Character_2_upvw then
	Character_2_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
local tbl_upvr = {}
local var20_upvw
local var21_upvw
local var22_upvw = false
local function updateAllProximityPrompts() -- Line 36
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: SellFish_upvr (readonly)
		[3]: BuyFish_upvr (readonly)
		[4]: var22_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	local var27 = "PCache"
	local var28
	if var28 == nil then
		var27 = false
	else
		var27 = true
	end
	var28 = SellFish_upvr
	var28 = var28.Visible
	if not var28 then
		var28 = BuyFish_upvr
		var28 = var28.Visible
	end
	local var29 = var27
	if var29 then
		var29 = not var28
	end
	var22_upvw = var29
	for _, v in pairs(tbl_upvr) do
		v.Enabled = var22_upvw
	end
end
local function _() -- Line 47, Named "getEquippedFishName"
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr (readonly)
	]]
	local any_Resolve_result1_2 = module_upvr_2.Resolve("PCache", "Equipped")
	if not any_Resolve_result1_2 then
		return nil
	end
	local any_SplitDash_result1 = module_upvr_3.SplitDash(any_Resolve_result1_2)
	if any_SplitDash_result1 and any_SplitDash_result1[1] == "Loot" and module_upvr.Items.Loot[any_SplitDash_result1[2]] then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return module_upvr.Items.Loot[any_SplitDash_result1[2]].Name
	end
	return nil
end
local function setupPlayer_upvr(arg1) -- Line 59, Named "setupPlayer"
	--[[ Upvalues[6]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var22_upvw (read and write)
		[4]: var20_upvw (read and write)
		[5]: UIController_upvr (readonly)
		[6]: SellFish_upvr (readonly)
	]]
	if arg1 == LocalPlayer_upvr then
	else
		if tbl_upvr[arg1] then return end
		local Character = arg1.Character
		if not Character then return end
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		if not HumanoidRootPart then return end
		local ProximityPrompt = Instance.new("ProximityPrompt")
		ProximityPrompt.ActionText = "Sell Fish"
		ProximityPrompt.ObjectText = arg1.Name
		ProximityPrompt.HoldDuration = 0
		ProximityPrompt.MaxActivationDistance = 10
		ProximityPrompt.RequiresLineOfSight = false
		ProximityPrompt.Enabled = var22_upvw
		ProximityPrompt.Parent = HumanoidRootPart
		tbl_upvr[arg1] = ProximityPrompt
		ProximityPrompt.Triggered:Connect(function(arg1_2) -- Line 80
			--[[ Upvalues[5]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: var20_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: UIController_upvr (copied, readonly)
				[5]: SellFish_upvr (copied, readonly)
			]]
			if arg1_2 ~= LocalPlayer_upvr then
			else
				var20_upvw = arg1
				UIController_upvr.toggleFrame(SellFish_upvr)
			end
		end)
		ProximityPrompt.Destroying:Once(function() -- Line 86
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			tbl_upvr[arg1] = nil
		end)
	end
end
local SellFishOffer_upvr = Server:WaitForChild("SellFishOffer")
local SellFishResponse_upvr = Server:WaitForChild("SellFishResponse")
Remotes:WaitForChild("Client"):WaitForChild("SellFishOffer").OnClientEvent:Connect(function(arg1, arg2, arg3, arg4) -- Line 130
	--[[ Upvalues[4]:
		[1]: var21_upvw (read and write)
		[2]: BuyFish_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: UIController_upvr (readonly)
	]]
	local tbl = {}
	tbl.offerId = arg1
	tbl.sellerName = arg2
	tbl.fishName = arg3
	tbl.price = arg4
	var21_upvw = tbl
	BuyFish_upvr.TextLabel.Text = arg2.." wants to sell you \""..arg3.."\" for $"..module_upvr_3.FormatComma(arg4)
	UIController_upvr.toggleFrame(BuyFish_upvr)
end)
module_upvr_2.OnChanged("PCache", "Equipped", updateAllProximityPrompts)
SellFish_upvr:GetPropertyChangedSignal("Visible"):Connect(updateAllProximityPrompts)
BuyFish_upvr:GetPropertyChangedSignal("Visible"):Connect(updateAllProximityPrompts)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: Character_2_upvw (read and write)
	]]
	Character_2_upvw = arg1
end)
for _, v_2_upvr in pairs(Players:GetPlayers()) do
	if v_2_upvr ~= LocalPlayer_upvr then
		if v_2_upvr.Character then
			setupPlayer_upvr(v_2_upvr)
		end
		v_2_upvr.CharacterAdded:Connect(function() -- Line 151
			--[[ Upvalues[2]:
				[1]: setupPlayer_upvr (readonly)
				[2]: v_2_upvr (readonly)
			]]
			task.wait(0.5)
			setupPlayer_upvr(v_2_upvr)
		end)
	end
end
Players.PlayerAdded:Connect(function(arg1) -- Line 158
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: setupPlayer_upvr (readonly)
	]]
	if arg1 == LocalPlayer_upvr then
	else
		arg1.CharacterAdded:Connect(function() -- Line 160
			--[[ Upvalues[2]:
				[1]: setupPlayer_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			task.wait(0.5)
			setupPlayer_upvr(arg1)
		end)
	end
end)
Players.PlayerRemoving:Connect(function(arg1) -- Line 166
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if tbl_upvr[arg1] then
		tbl_upvr[arg1]:Destroy()
		tbl_upvr[arg1] = nil
	end
end)
;(function() -- Line 91, Named "setupSellFishFrame"
	--[[ Upvalues[7]:
		[1]: UIController_upvr (readonly)
		[2]: SellFish_upvr (readonly)
		[3]: var20_upvw (read and write)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr (readonly)
		[7]: SellFishOffer_upvr (readonly)
	]]
	UIController_upvr.bindButton(SellFish_upvr.Sell, true, {function() -- Line 93
		--[[ Upvalues[7]:
			[1]: var20_upvw (copied, read and write)
			[2]: SellFish_upvr (copied, readonly)
			[3]: module_upvr_2 (copied, readonly)
			[4]: module_upvr_3 (copied, readonly)
			[5]: module_upvr (copied, readonly)
			[6]: SellFishOffer_upvr (copied, readonly)
			[7]: UIController_upvr (copied, readonly)
		]]
		local var43
		if not var20_upvw then
		else
			var43 = SellFish_upvr
			var43 = var43.PriceBox
			var43 = var43.Text
			local tonumber_result1 = tonumber(var43)
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var43 = 0
				return tonumber_result1 <= var43
			end
			if not tonumber_result1 or INLINED() then return end
			local any_Resolve_result1 = module_upvr_2.Resolve("PCache", "Equipped")
			if not any_Resolve_result1 then
				var43 = nil
			else
				local any_SplitDash_result1_2 = module_upvr_3.SplitDash(any_Resolve_result1)
				if any_SplitDash_result1_2 and any_SplitDash_result1_2[1] == "Loot" and module_upvr.Items.Loot[any_SplitDash_result1_2[2]] then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var43 = module_upvr.Items.Loot[any_SplitDash_result1_2[2]].Name
				else
					var43 = nil
				end
			end
			if not var43 then return end
			SellFishOffer_upvr:FireServer(var20_upvw.UserId, var43, tonumber_result1)
			UIController_upvr.toggleFrame(SellFish_upvr)
			var20_upvw = nil
		end
	end})
	UIController_upvr.bindButton(SellFish_upvr.Exit, true, {function() -- Line 109
		--[[ Upvalues[3]:
			[1]: UIController_upvr (copied, readonly)
			[2]: SellFish_upvr (copied, readonly)
			[3]: var20_upvw (copied, read and write)
		]]
		UIController_upvr.toggleFrame(SellFish_upvr)
		var20_upvw = nil
	end})
end)()
;(function() -- Line 116, Named "setupBuyFishFrame"
	--[[ Upvalues[4]:
		[1]: var21_upvw (read and write)
		[2]: SellFishResponse_upvr (readonly)
		[3]: UIController_upvr (readonly)
		[4]: BuyFish_upvr (readonly)
	]]
	local function _(arg1) -- Line 117, Named "respond"
		--[[ Upvalues[4]:
			[1]: var21_upvw (copied, read and write)
			[2]: SellFishResponse_upvr (copied, readonly)
			[3]: UIController_upvr (copied, readonly)
			[4]: BuyFish_upvr (copied, readonly)
		]]
		if not var21_upvw then
		else
			SellFishResponse_upvr:FireServer(var21_upvw.offerId, arg1)
			UIController_upvr.toggleFrame(BuyFish_upvr)
			var21_upvw = nil
		end
	end
	UIController_upvr.bindButton(BuyFish_upvr.Accept, true, {function() -- Line 124
		--[[ Upvalues[4]:
			[1]: var21_upvw (copied, read and write)
			[2]: SellFishResponse_upvr (copied, readonly)
			[3]: UIController_upvr (copied, readonly)
			[4]: BuyFish_upvr (copied, readonly)
		]]
		if not var21_upvw then
		else
			SellFishResponse_upvr:FireServer(var21_upvw.offerId, true)
			UIController_upvr.toggleFrame(BuyFish_upvr)
			var21_upvw = nil
		end
	end})
	UIController_upvr.bindButton(BuyFish_upvr.Decline, true, {function() -- Line 125
		--[[ Upvalues[4]:
			[1]: var21_upvw (copied, read and write)
			[2]: SellFishResponse_upvr (copied, readonly)
			[3]: UIController_upvr (copied, readonly)
			[4]: BuyFish_upvr (copied, readonly)
		]]
		if not var21_upvw then
		else
			SellFishResponse_upvr:FireServer(var21_upvw.offerId, false)
			UIController_upvr.toggleFrame(BuyFish_upvr)
			var21_upvw = nil
		end
	end})
	UIController_upvr.bindButton(BuyFish_upvr.Exit, true, {function() -- Line 126
		--[[ Upvalues[4]:
			[1]: var21_upvw (copied, read and write)
			[2]: SellFishResponse_upvr (copied, readonly)
			[3]: UIController_upvr (copied, readonly)
			[4]: BuyFish_upvr (copied, readonly)
		]]
		if not var21_upvw then
		else
			SellFishResponse_upvr:FireServer(var21_upvw.offerId, false)
			UIController_upvr.toggleFrame(BuyFish_upvr)
			var21_upvw = nil
		end
	end})
end)()