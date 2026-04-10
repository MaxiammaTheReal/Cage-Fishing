-- Name: Begging
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Begging
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5741636000002472 seconds

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
-- Decompiled on 2026-04-10 16:49:29
-- Luau version 6, Types version 3
-- Time taken: 0.015267 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Consumers_upvr = require(script.Parent.Consumers)
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Main = LocalPlayer_upvr.PlayerGui:WaitForChild("Main")
local BeggingRequest_upvr = Main.Centre.BeggingRequest
local BeggingOffer_upvr = Main.Centre.BeggingOffer
local Character_upvr = LocalPlayer_upvr.Character
if not Character_upvr then
	Character_upvr = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Client = ReplicatedStorage.Remotes.Client
local Server_upvr = ReplicatedStorage.Remotes.Server
local tbl_upvr = {}
local var14_upvw = false
local var15_upvw
local var16_upvw
local Utils_upvr = require(ReplicatedStorage.Modules.Utils)
local AttributeStacker_upvr = require(ReplicatedStorage.Modules.AttributeStacker)
local function updateAllProximityPrompt() -- Line 134
	--[[ Upvalues[6]:
		[1]: ClientResolver_upvr (readonly)
		[2]: BeggingOffer_upvr (readonly)
		[3]: BeggingRequest_upvr (readonly)
		[4]: var14_upvw (read and write)
		[5]: LocalPlayer_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	local var50 = "PCache"
	local var51
	if var51 == nil then
		var50 = false
	else
		var50 = true
	end
	var51 = BeggingOffer_upvr
	var51 = var51.Visible
	if not var51 then
		var51 = BeggingRequest_upvr
		var51 = var51.Visible
	end
	local var52 = var50
	if var52 then
		var52 = not LocalPlayer_upvr:GetAttribute("inRequest")
		if var52 then
			var52 = not var51
		end
	end
	var14_upvw = var52
	for i in tbl_upvr do
		i.Enabled = var14_upvw
	end
end
Client.kickPlayer.OnClientEvent:Connect(Consumers_upvr.playKickAnimation)
Client.setPlayerBeg.OnClientEvent:Connect(function(arg1, arg2) -- Line 77, Named "setupPlayer"
	--[[ Upvalues[11]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: BeggingRequest_upvr (readonly)
		[3]: Character_upvr (readonly)
		[4]: ClientResolver_upvr (readonly)
		[5]: Utils_upvr (readonly)
		[6]: AttributeStacker_upvr (readonly)
		[7]: Library_upvr (readonly)
		[8]: var15_upvw (read and write)
		[9]: UIController_upvr (readonly)
		[10]: tbl_upvr (readonly)
		[11]: var14_upvw (read and write)
	]]
	if arg1 == LocalPlayer_upvr then
		arg2:Destroy()
	else
		if not arg2 then
			warn(`{arg1} doesn't have a ProximityPrompt!`)
			return
		end
		local Name_upvr = arg1.Name
		arg2.Triggered:Connect(function(arg1_3) -- Line 83
			--[[ Upvalues[12]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: BeggingRequest_upvr (copied, readonly)
				[3]: Character_upvr (copied, readonly)
				[4]: ClientResolver_upvr (copied, readonly)
				[5]: Utils_upvr (copied, readonly)
				[6]: AttributeStacker_upvr (copied, readonly)
				[7]: Name_upvr (readonly)
				[8]: Library_upvr (copied, readonly)
				[9]: var15_upvw (copied, read and write)
				[10]: arg1 (readonly)
				[11]: arg2 (readonly)
				[12]: UIController_upvr (copied, readonly)
			]]
			local var30
			if arg1_3 ~= LocalPlayer_upvr then
			else
				if LocalPlayer_upvr:GetAttribute("hasBeggedFromPlayer") then return end
				local any_Resolve_result1 = ClientResolver_upvr.Resolve("PCache", "Equipped")
				local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", "Inventory/"..any_Resolve_result1)
				local _2 = Utils_upvr.SplitDash(any_Resolve_result1)[2]
				if not any_Resolve_result1_2 then
					warn("localPlayer doesn't have equippedLoot in their inventory!")
				end
				local _1 = any_Resolve_result1_2.Mutations[1]
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var30 = _1
					return var30
				end
				if not _1 or not INLINED() then
					var30 = ""
				end
				BeggingRequest_upvr.TextLabel.Text = `Beg {Name_upvr} to buy your {any_Resolve_result1_2.Weight} kg {var30} {Library_upvr.Items.Loot[_2].Name} ?`
				var15_upvw = arg1
				for _, v_2 in BeggingRequest_upvr.Options:GetChildren() do
					var30 = v_2:IsA("TextButton")
					if var30 then
						var30 = v_2.Price
						var30.Text = `${AttributeStacker_upvr.GetLootValue(_2, any_Resolve_result1_2) * tonumber(v_2.Name)}`
					end
				end
				arg2.Enabled = false
				Character_upvr.HumanoidRootPart.Anchored = true
				UIController_upvr.toggleFrame(BeggingRequest_upvr)
			end
		end)
		arg2.Destroying:Once(function() -- Line 113
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			tbl_upvr[arg2] = nil
		end)
		arg2.Enabled = var14_upvw
		arg2:SetAttribute("Type", "Player")
		tbl_upvr[arg2] = true
	end
end)
Client.sendBegOffer.OnClientEvent:Connect(function(arg1) -- Line 120, Named "onReceiveOffer"
	--[[ Upvalues[4]:
		[1]: BeggingOffer_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: var16_upvw (read and write)
		[4]: UIController_upvr (readonly)
	]]
	local _1_2 = arg1.lootData.Mutations[1]
	local var40
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var40 = _1_2
		return var40
	end
	if not _1_2 or not INLINED_2() then
		var40 = ""
	end
	BeggingOffer_upvr.TextLabel.Text = `{arg1.from.Name} is begging you to buy their {arg1.lootData.Weight} kg {var40} {Library_upvr.Items.Loot[arg1.lootId].Name} for ${arg1.price}`
	BeggingOffer_upvr.Options.Buy.Price.Text = `${arg1.price}`
	var16_upvw = arg1.from
	UIController_upvr.toggleFrame(BeggingOffer_upvr)
	task.delay(15, function() -- Line 131
		--[[ Upvalues[3]:
			[1]: var16_upvw (copied, read and write)
			[2]: UIController_upvr (copied, readonly)
			[3]: BeggingOffer_upvr (copied, readonly)
		]]
		if var16_upvw then
			UIController_upvr.toggleFrame(BeggingOffer_upvr)
		end
	end)
end)
ClientResolver_upvr.OnChanged("PCache", "Equipped", updateAllProximityPrompt)
workspace.Consumers.Models.ChildAdded:Connect(function(arg1) -- Line 44, Named "setupConsumer"
	--[[ Upvalues[6]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Character_upvr (readonly)
		[3]: Consumers_upvr (readonly)
		[4]: Server_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: var14_upvw (read and write)
	]]
	local class_ProximityPrompt_upvr = arg1:FindFirstChildOfClass("ProximityPrompt")
	if not class_ProximityPrompt_upvr then
		class_ProximityPrompt_upvr = (function() -- Line 45
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			repeat
				task.wait()
				proximityPrompt = arg1:FindFirstChildOfClass("ProximityPrompt") -- Setting global
			until proximityPrompt ~= nil
		end)()
	end
	class_ProximityPrompt_upvr.ObjectText = "NPC"
	class_ProximityPrompt_upvr.ActionText = "Beg to Buy"
	local HumanoidRootPart_upvr = arg1.HumanoidRootPart
	class_ProximityPrompt_upvr.Triggered:Connect(function(arg1_2) -- Line 53
		--[[ Upvalues[7]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: Character_upvr (copied, readonly)
			[3]: HumanoidRootPart_upvr (readonly)
			[4]: class_ProximityPrompt_upvr (readonly)
			[5]: Consumers_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: Server_upvr (copied, readonly)
		]]
		if arg1_2 ~= LocalPlayer_upvr then
		else
			if LocalPlayer_upvr:GetAttribute("hasBegggedFromNPC") then return end
			class_ProximityPrompt_upvr.Enabled = false
			Consumers_upvr.pauseMovement(arg1)
			Server_upvr.begNPC:FireServer(arg1.Name, (Character_upvr.HumanoidRootPart.Position - HumanoidRootPart_upvr.Position).Unit)
			task.wait(5)
			Consumers_upvr.playMovement(arg1)
		end
	end)
	arg1.Destroying:Once(function() -- Line 69
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: class_ProximityPrompt_upvr (readonly)
		]]
		tbl_upvr[class_ProximityPrompt_upvr] = nil
	end)
	class_ProximityPrompt_upvr.Enabled = var14_upvw
	class_ProximityPrompt_upvr:SetAttribute("Type", "Consumer")
	tbl_upvr[class_ProximityPrompt_upvr] = true
end)
LocalPlayer_upvr.AttributeChanged:Connect(updateAllProximityPrompt)
BeggingRequest_upvr:GetPropertyChangedSignal("Visible"):Connect(updateAllProximityPrompt)
BeggingOffer_upvr:GetPropertyChangedSignal("Visible"):Connect(updateAllProximityPrompt)
UIController_upvr.bindButton(BeggingRequest_upvr.Header.Exit, true, {function() -- Line 191
	--[[ Upvalues[3]:
		[1]: Character_upvr (readonly)
		[2]: UIController_upvr (readonly)
		[3]: BeggingRequest_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(BeggingRequest_upvr)
	Character_upvr.HumanoidRootPart.Anchored = not BeggingRequest_upvr.Visible
end})
;(function() -- Line 144, Named "setupBeggingRequest"
	--[[ Upvalues[4]:
		[1]: BeggingRequest_upvr (readonly)
		[2]: Server_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: UIController_upvr (readonly)
	]]
	for _, v_upvr in BeggingRequest_upvr.Options:GetChildren() do
		if v_upvr:IsA("TextButton") then
			v_upvr.MouseButton1Click:Connect(function() -- Line 150
				--[[ Upvalues[5]:
					[1]: Server_upvr (copied, readonly)
					[2]: var15_upvw (copied, read and write)
					[3]: v_upvr (readonly)
					[4]: UIController_upvr (copied, readonly)
					[5]: BeggingRequest_upvr (copied, readonly)
				]]
				Server_upvr.begPlayer:FireServer(var15_upvw, v_upvr.Name)
				UIController_upvr.toggleFrame(BeggingRequest_upvr)
			end)
		end
	end
end)()
;(function() -- Line 158, Named "setupBeggingOffer"
	--[[ Upvalues[4]:
		[1]: BeggingOffer_upvr (readonly)
		[2]: UIController_upvr (readonly)
		[3]: Server_upvr (readonly)
		[4]: var16_upvw (read and write)
	]]
	local function _(arg1) -- Line 162, Named "response"
		--[[ Upvalues[4]:
			[1]: UIController_upvr (copied, readonly)
			[2]: BeggingOffer_upvr (copied, readonly)
			[3]: Server_upvr (copied, readonly)
			[4]: var16_upvw (copied, read and write)
		]]
		UIController_upvr.toggleFrame(BeggingOffer_upvr)
		Server_upvr.responseBegRequest:FireServer(var16_upvw, arg1)
		var16_upvw = nil
	end
	BeggingOffer_upvr.Options.Buy.MouseButton1Click:Connect(function() -- Line 170
		--[[ Upvalues[4]:
			[1]: UIController_upvr (copied, readonly)
			[2]: BeggingOffer_upvr (copied, readonly)
			[3]: Server_upvr (copied, readonly)
			[4]: var16_upvw (copied, read and write)
		]]
		UIController_upvr.toggleFrame(BeggingOffer_upvr)
		Server_upvr.responseBegRequest:FireServer(var16_upvw, "Accepted")
		var16_upvw = nil
	end)
	BeggingOffer_upvr.Options.Reject.MouseButton1Click:Connect(function() -- Line 171
		--[[ Upvalues[4]:
			[1]: UIController_upvr (copied, readonly)
			[2]: BeggingOffer_upvr (copied, readonly)
			[3]: Server_upvr (copied, readonly)
			[4]: var16_upvw (copied, read and write)
		]]
		UIController_upvr.toggleFrame(BeggingOffer_upvr)
		Server_upvr.responseBegRequest:FireServer(var16_upvw, "Declined")
		var16_upvw = nil
	end)
end)()
return {}