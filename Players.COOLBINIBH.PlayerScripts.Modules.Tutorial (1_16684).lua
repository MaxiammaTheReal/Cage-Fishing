-- Name: Tutorial
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Tutorial
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5584956999991846 seconds

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
-- Decompiled on 2026-04-10 16:49:28
-- Luau version 6, Types version 3
-- Time taken: 0.013520 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local ClientResolver_upvr = require(Modules.ClientResolver)
local Utils_upvr = require(Modules.Utils)
local LocalPlayer_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local TutorialText_upvr = PlayerGui_upvr.Main.Bottom.TutorialText
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local function dictionaryCount_upvr(arg1, arg2) -- Line 37, Named "dictionaryCount"
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	if not arg1 then
		return 0
	end
	local pairs_result1_4, pairs_result2_5, pairs_result3 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 19. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 19. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 9. Error Block 13 start (CF ANALYSIS FAILED)
	if arg2 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [21.8]
		if nil == arg2 then
			-- KONSTANTWARNING: GOTO [21] #19
		end
	else
	end
	-- KONSTANTERROR: [9] 9. Error Block 13 end (CF ANALYSIS FAILED)
end
local function PushMessage_upvr(arg1) -- Line 56, Named "PushMessage"
	--[[ Upvalues[3]:
		[1]: TutorialText_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	for i = 1, #arg1 do
		TutorialText_upvr.Text = string.sub(arg1, 1, i)
		if (0 + 4) % 8 == 0 then
			Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Snap, true)
		end
		task.wait(0.04)
	end
end
local function createBeam_upvr(arg1, arg2) -- Line 73, Named "createBeam"
	local Beam = Instance.new("Beam")
	Beam.FaceCamera = true
	Beam.Transparency = NumberSequence.new(0)
	Beam.Texture = "rbxassetid://99869785698592"
	Beam.TextureMode = Enum.TextureMode.Static
	Beam.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
	Beam.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.5)})
	Beam.Parent = arg2.Parent
	Beam.Attachment0 = arg1
	Beam.Attachment1 = arg2
	return Beam
end
if not ClientResolver_upvr.Resolve("Profile", "Engagement/Tutorial1") then
	local HumanoidRootPart_upvr = Character.HumanoidRootPart
	local getPlayerPlot_result1_upvr = (function() -- Line 98, Named "getPlayerPlot"
		--[[ Upvalues[2]:
			[1]: ClientResolver_upvr (readonly)
			[2]: LocalPlayer_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1_3, pairs_result2_3, pairs_result3_3 = pairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 19. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 19. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 11. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.7]
		-- KONSTANTERROR: [12] 11. Error Block 2 end (CF ANALYSIS FAILED)
	end)()
	local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
	local var23_upvw = false
	task.spawn(function() -- Line 118
		--[[ Upvalues[11]:
			[1]: TutorialText_upvr (readonly)
			[2]: PushMessage_upvr (readonly)
			[3]: PlayerGui_upvr (readonly)
			[4]: Utils_upvr (readonly)
			[5]: ClientResolver_upvr (readonly)
			[6]: dictionaryCount_upvr (readonly)
			[7]: createBeam_upvr (readonly)
			[8]: HumanoidRootPart_upvr (readonly)
			[9]: getPlayerPlot_result1_upvr (readonly)
			[10]: Server_upvr (readonly)
			[11]: var23_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
		TutorialText_upvr.Visible = true
		PushMessage_upvr("Welcome to Cage Fishing!")
		task.wait(3)
		local clone = script.HotbarArrow:Clone()
		local var49
		for i_2, v in pairs(PlayerGui_upvr.Main.Bottom.Hotbar:GetChildren()) do
			if v:IsA("TextButton") then
				var49 = v.Name
				if Utils_upvr.SplitDash(var49) then
					var49 = Utils_upvr
					var49 = var49.SplitDash(v.Name)
					if var49[1] == "Cage" then
						clone.Visible = true
						clone.Parent = v
					end
				end
			end
		end
		PushMessage_upvr("Equip the wooden cage.")
		repeat
			task.wait(0.1)
			if ClientResolver_upvr.Resolve("PCache", "Equipped") then break end
			i_2 = "Structures"
		until 0 < dictionaryCount_upvr(ClientResolver_upvr.Resolve("Profile", i_2))
		clone:Destroy()
		PushMessage_upvr("Walk to the water and click to place cage.")
		repeat
			task.wait(0.1)
		until 0 < dictionaryCount_upvr(ClientResolver_upvr.Resolve("Profile", "Structures"))
		createBeam_upvr(HumanoidRootPart_upvr.RootAttachment, workspace.Plots[getPlayerPlot_result1_upvr].Positions.Water.Attachment):Destroy()
		local pairs_result1, pairs_result2_2, pairs_result3_5 = pairs(ClientResolver_upvr.Resolve("Profile", "Structures"))
		-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [142] 107. Error Block 18 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [142] 107. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [140] 105. Error Block 77 start (CF ANALYSIS FAILED)
		PushMessage_upvr("Sink the cage.")
		repeat
			task.wait(0.1)
			var49 = "Structures/"
		until ClientResolver_upvr.Resolve("Profile", var49..nil.."/Sunken")
		PushMessage_upvr("Wait for the cage to catch some fish.")
		repeat
			task.wait(0.1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var49 = "Structures/"..nil.."/Contents"
		until 0 < dictionaryCount_upvr(ClientResolver_upvr.Resolve("Profile", var49))
		Server_upvr.Tutorial:FireServer()
		PushMessage_upvr("Bring the cage back.")
		repeat
			task.wait(0.1)
			var49 = "Structures/"
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		until not ClientResolver_upvr.Resolve("Profile", var49..nil.."/Sunken")
		PushMessage_upvr("Collect the fish.")
		repeat
			task.wait(0.1)
			var49 = "Inventory"
		until 0 < dictionaryCount_upvr(ClientResolver_upvr.Resolve("Profile", var49), "Loot")
		local function _() -- Line 182, Named "shopItems"
			--[[ Upvalues[1]:
				[1]: ClientResolver_upvr (copied, readonly)
			]]
			for _, v_2 in pairs(ClientResolver_upvr.Resolve("Profile", "Inventory")) do
				if v_2.Location == "Shop" then
					return true
				end
			end
		end
		PushMessage_upvr("Sell the fish at your shop.")
		var49 = workspace.Plots[getPlayerPlot_result1_upvr]
		var49 = var49.InteractionParts
		var49 = var49.FishShopZone
		var49 = var49.Attachment
		var49 = true
		PlayerGui_upvr.Main.Left.Shop.Arrow.Visible = var49
		-- KONSTANTERROR: [140] 105. Error Block 77 end (CF ANALYSIS FAILED)
	end)
end
return {}