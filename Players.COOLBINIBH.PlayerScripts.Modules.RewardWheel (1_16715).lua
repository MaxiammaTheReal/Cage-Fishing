-- Name: RewardWheel
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.RewardWheel
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5516138000002684 seconds

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
-- Decompiled on 2026-04-10 16:49:59
-- Luau version 6, Types version 3
-- Time taken: 0.009111 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local PlayerGui_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer.PlayerGui
local RewardWheel_upvr = PlayerGui_upvr.Main.Centre.RewardWheel
local wheelbg_upvr = RewardWheel_upvr.wheelbg
local balance_upvr = RewardWheel_upvr.action.balance
local spinCost_upvr = RewardWheel_upvr.action.spinCost
local Server_upvr = ReplicatedStorage.Remotes.Server
local WheelSpin_upvr = ReplicatedStorage.Resources.Sounds.SFX.WheelSpin
local var12_upvw = false
local function createSegmentLabels_upvr(arg1) -- Line 42, Named "createSegmentLabels"
	--[[ Upvalues[1]:
		[1]: wheelbg_upvr (readonly)
	]]
	for _, v in wheelbg_upvr:GetChildren() do
		if v.Name == "SegmentLabel" then
			v:Destroy()
		end
	end
	for i_2, v_2 in arg1 do
		local Frame_2 = Instance.new("Frame")
		Frame_2.Name = "SegmentLabel"
		Frame_2.BackgroundTransparency = 1
		Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_2.Size = UDim2.new(1, 0, 1, 0)
		Frame_2.Rotation = (i_2 - 1) * 45 + 22.5
		Frame_2.Parent = wheelbg_upvr
		local Frame = Instance.new("Frame")
		Frame.Name = "Holder"
		Frame.BackgroundTransparency = 1
		Frame.AnchorPoint = Vector2.new(0.5, 0)
		Frame.Position = UDim2.new(0.5, 0, 0.1, 0)
		Frame.Size = UDim2.new(0.14, 0, 0.35, 0)
		Frame.Parent = Frame_2
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Name = "Icon"
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0)
		ImageLabel.Position = UDim2.new(0.5, 0, 0, 0)
		ImageLabel.Size = UDim2.new(1, 0, 0.45, 0)
		ImageLabel.Image = v_2.ImageId or ""
		ImageLabel.ScaleType = Enum.ScaleType.Crop
		ImageLabel.Parent = Frame
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Name = "Text"
		TextLabel.BackgroundTransparency = 1
		TextLabel.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel.Position = UDim2.new(0.5, 0, 0.35, 0)
		TextLabel.Size = UDim2.new(1.2, 0, 0.45, 0)
		local Text = v_2.Text
		if not Text then
			Text = v_2.Name
		end
		TextLabel.Text = Text
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextScaled = true
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.TextStrokeTransparency = 0.5
		TextLabel.Parent = Frame
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.TextStrokeTransparency = 0.5
		TextLabel.Parent = Frame
	end
end
local function _() -- Line 101, Named "setupWheel"
	--[[ Upvalues[2]:
		[1]: Server_upvr (readonly)
		[2]: createSegmentLabels_upvr (readonly)
	]]
	local any_InvokeServer_result1 = Server_upvr.RewardWheel:InvokeServer("GetConfig")
	if any_InvokeServer_result1 then
		createSegmentLabels_upvr(any_InvokeServer_result1)
	end
end
local function updateCoinDisplay_upvr() -- Line 108, Named "updateCoinDisplay"
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: balance_upvr (readonly)
		[3]: spinCost_upvr (readonly)
	]]
	balance_upvr.Text = `You have {ClientResolver_upvr.Resolve("Profile", "BloodmoonCoins") or 0} bloodmoon coins!`
	spinCost_upvr.Text = `{20} coins to spin`
end
local function _() -- Line 114, Named "playTickSound"
	--[[ Upvalues[2]:
		[1]: WheelSpin_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	local clone = WheelSpin_upvr:Clone()
	clone.Parent = PlayerGui_upvr
	clone.PlayOnRemove = true
	clone:Destroy()
end
local function _(arg1) -- Line 121, Named "getCurrentSegment"
	local var31 = arg1 % 360
	if var31 < 0 then
		var31 += 360
	end
	return math.floor(var31 / 45) + 1
end
local var32_upvw = 0
local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local Notifications_upvr = require(script.Parent.Notifications)
local function spinWheel_upvr(arg1, arg2) -- Line 127, Named "spinWheel"
	--[[ Upvalues[9]:
		[1]: var12_upvw (read and write)
		[2]: wheelbg_upvr (readonly)
		[3]: var32_upvw (read and write)
		[4]: RunService_upvr (readonly)
		[5]: WheelSpin_upvr (readonly)
		[6]: PlayerGui_upvr (readonly)
		[7]: TweenService_upvr (readonly)
		[8]: Notifications_upvr (readonly)
		[9]: Server_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	if var12_upvw then return end
	var12_upvw = true
	local Rotation = wheelbg_upvr.Rotation
	local var37 = Rotation % 360
	if var37 < 0 then
		var37 += 360
	end
	local randint = math.random(6, 9)
	local var39 = (randint * 360) + ((360) - ((arg1 - 1) * 45 + 22.5) + math.random(-15, 15)) - var37
	if var39 < randint * 360 then
		var39 += 360
	end
	local var40 = Rotation % 360
	if var40 < 0 then
		var40 += 360
	end
	var32_upvw = math.floor(var40 / 45) + 1
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [136] 108. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [136] 108. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 46. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [136.3497]
	-- KONSTANTERROR: [53] 46. Error Block 10 end (CF ANALYSIS FAILED)
end
UIController_upvr.bindButton(RewardWheel_upvr.action.action.spin, true, {function() -- Line 222, Named "onSpinClicked"
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: Server_upvr (readonly)
		[3]: spinWheel_upvr (readonly)
		[4]: updateCoinDisplay_upvr (readonly)
	]]
	if var12_upvw then
	else
		local any_InvokeServer_result1_3 = Server_upvr.RewardWheel:InvokeServer("Spin")
		if not any_InvokeServer_result1_3 then return end
		if not any_InvokeServer_result1_3.success then return end
		spinWheel_upvr(any_InvokeServer_result1_3.rewardIndex, any_InvokeServer_result1_3.rewardName)
		task.delay(0.5, updateCoinDisplay_upvr)
	end
end})
UIController_upvr.bindButton(RewardWheel_upvr.close, true, {function() -- Line 255
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: RewardWheel_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(RewardWheel_upvr)
end})
local BloodmoonFortuneWheel = workspace:FindFirstChild("BloodmoonFortuneWheel")
if BloodmoonFortuneWheel then
	BloodmoonFortuneWheel.PromptAtt.ProximityPrompt.Triggered:Connect(function() -- Line 264
		--[[ Upvalues[2]:
			[1]: UIController_upvr (readonly)
			[2]: RewardWheel_upvr (readonly)
		]]
		UIController_upvr.toggleFrame(RewardWheel_upvr)
	end)
end
balance_upvr.Text = `You have {ClientResolver_upvr.Resolve("Profile", "BloodmoonCoins") or 0} bloodmoon coins!`
spinCost_upvr.Text = `{20} coins to spin`
ClientResolver_upvr.OnChanged("Profile", "BloodmoonCoins", function(arg1) -- Line 272
	--[[ Upvalues[1]:
		[1]: balance_upvr (readonly)
	]]
	balance_upvr.Text = `You have {arg1 or 0} bloodmoon coins!`
end)
local any_InvokeServer_result1_2 = Server_upvr.RewardWheel:InvokeServer("GetConfig")
if any_InvokeServer_result1_2 then
	createSegmentLabels_upvr(any_InvokeServer_result1_2)
end
return {}