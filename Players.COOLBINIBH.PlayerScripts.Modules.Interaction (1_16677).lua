-- Name: Interaction
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Interaction
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6914959999994608 seconds

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
-- Decompiled on 2026-04-10 16:49:21
-- Luau version 6, Types version 3
-- Time taken: 0.020585 seconds

local module_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local Utils_upvr = require(Modules.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local LocalPlayer = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer.PlayerGui
local Character = LocalPlayer.Character
if not Character then
	Character = LocalPlayer.CharacterAdded:Wait()
end
local EasterTokens_upvr = ReplicatedStorage_upvr.Remotes.Server.EasterTokens
local ClientResolver_upvr = require(Modules.ClientResolver)
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
local function FindHoldingFishWithinRequirement_upvr() -- Line 27, Named "FindHoldingFishWithinRequirement"
	--[[ Upvalues[2]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Library_upvr (readonly)
	]]
	local any_Resolve_result1 = ClientResolver_upvr.Resolve("PCache", "Equipped")
	if not any_Resolve_result1 then return end
	local string_split_result1 = string.split(any_Resolve_result1, '-')
	if string_split_result1[1] ~= "Loot" or not Library_upvr.Items.Loot[tonumber(string_split_result1[2])] then return end
	return any_Resolve_result1, tonumber(string_split_result1[2]), Library_upvr.Items.Loot[tonumber(string_split_result1[2])]
end
local tbl_8_upvr = {}
local tbl_26 = {
	Interacting = false;
	Message = "Hey! Want me to value your fish?";
}
local tbl_19 = {}
local tbl_7 = {
	Message = "What's this worth?";
}
local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
local function Action(arg1) -- Line 45
	--[[ Upvalues[3]:
		[1]: Server_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	local any_InvokeServer_result1 = Server_upvr.Merchant:InvokeServer("Appraise")
	if any_InvokeServer_result1 then
		module_upvr.PushMessage(arg1[1], "That fish is worth C$"..Utils_upvr.FormatComma(any_InvokeServer_result1))
	else
		module_upvr.PushMessage(arg1[1], "Equip a fish first!")
	end
end
tbl_7.Action = Action
tbl_19[1] = tbl_7
local tbl_35 = {
	Message = "That's all, thanks!";
}
local function Action(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.resetInteraction(arg1[1])
end
tbl_35.Action = Action
tbl_19[2] = tbl_35
local tbl_9 = {
	Message = "";
}
local function Action(arg1) -- Line 62
end
tbl_9.Action = Action
tbl_19[3] = tbl_9
local tbl_17 = {
	Message = "";
}
local function Action(arg1) -- Line 67
end
tbl_17.Action = Action
tbl_19[4] = tbl_17
tbl_26.Options = tbl_19
tbl_8_upvr.Merchant = tbl_26
local tbl_16 = {
	Interacting = false;
	Message = "Hey! Need any help?";
}
local tbl_12 = {}
local tbl_11 = {
	Message = "Show me the bait!";
}
local function Action(arg1) -- Line 78
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(PlayerGui_upvr.Main.Centre.BaitShop)
end
tbl_11.Action = Action
tbl_12[1] = tbl_11
local tbl_23 = {
	Message = "That's all, thanks!";
}
local function Action(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.resetInteraction(arg1[1])
end
tbl_23.Action = Action
tbl_12[2] = tbl_23
local tbl_33 = {
	Message = "";
}
local function Action(arg1) -- Line 90
end
tbl_33.Action = Action
tbl_12[3] = tbl_33
local tbl_24 = {
	Message = "";
}
local function Action(arg1) -- Line 95
end
tbl_24.Action = Action
tbl_12[4] = tbl_24
tbl_16.Options = tbl_12
tbl_8_upvr.Trader = tbl_16
local tbl_13 = {
	Interacting = false;
	Message = "Hey! Need any help?";
}
local tbl_22 = {}
local tbl_31 = {
	Message = "Show me quests!";
}
local function Action(arg1) -- Line 107
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(PlayerGui_upvr.Main.Centre.Quests)
end
tbl_31.Action = Action
tbl_22[1] = tbl_31
local tbl_20 = {
	Message = "That's all, thanks!";
}
local function Action(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.resetInteraction(arg1[1])
end
tbl_20.Action = Action
tbl_22[2] = tbl_20
local tbl_32 = {
	Message = "";
}
local function Action(arg1) -- Line 119
end
tbl_32.Action = Action
tbl_22[3] = tbl_32
local tbl_5 = {
	Message = "";
}
local function Action(arg1) -- Line 124
end
tbl_5.Action = Action
tbl_22[4] = tbl_5
tbl_13.Options = tbl_22
tbl_8_upvr.Quest = tbl_13
local tbl_14 = {
	Interacting = false;
	Message = "Hey! Need any help?";
}
local tbl_4 = {}
local tbl_2 = {
	Message = "Milestones";
}
local function Action(arg1) -- Line 136
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(PlayerGui_upvr.Main.Centre.Achievements)
end
tbl_2.Action = Action
tbl_4[1] = tbl_2
local tbl_21 = {
	Message = "That's all, thanks!";
}
local function Action(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.resetInteraction(arg1[1])
end
tbl_21.Action = Action
tbl_4[2] = tbl_21
local tbl_3 = {
	Message = "";
}
local function Action(arg1) -- Line 148
end
tbl_3.Action = Action
tbl_4[3] = tbl_3
local tbl_29 = {
	Message = "";
}
local function Action(arg1) -- Line 153
end
tbl_29.Action = Action
tbl_4[4] = tbl_29
tbl_14.Options = tbl_4
tbl_8_upvr.Achievement = tbl_14
local tbl_6 = {
	Interacting = false;
	Message = "Hey! Want to trade in easter points?";
}
local tbl = {}
local tbl_34 = {
	Message = "Trade in your easter mutation.";
}
local function Action(arg1) -- Line 165
	--[[ Upvalues[2]:
		[1]: FindHoldingFishWithinRequirement_upvr (readonly)
		[2]: EasterTokens_upvr (readonly)
	]]
	local FindHoldingFishWithinRequirement_result1, _, _ = FindHoldingFishWithinRequirement_upvr()
	EasterTokens_upvr:FireServer("EasterTokens1", {
		FishId = FindHoldingFishWithinRequirement_result1;
	})
end
tbl_34.Action = Action
tbl[1] = tbl_34
local tbl_30 = {
	Message = "Trade in all easter mutations.";
}
local function Action(arg1) -- Line 172
	--[[ Upvalues[1]:
		[1]: EasterTokens_upvr (readonly)
	]]
	EasterTokens_upvr:FireServer("EasterTokens2")
end
tbl_30.Action = Action
tbl[2] = tbl_30
local tbl_10 = {
	Message = "Open Easter Shop.";
}
local function Action(arg1) -- Line 178
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(PlayerGui_upvr.Main.Centre.EasterMerchant)
end
tbl_10.Action = Action
tbl[3] = tbl_10
tbl[4] = {
	Message = "That's all, thanks!";
	Action = function(arg1) -- Line 184, Named "Action"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.resetInteraction(arg1[1])
	end;
}
tbl_6.Options = tbl
tbl_8_upvr.Easter = tbl_6
local tbl_15_upvr = {
	Merchant = function(arg1) -- Line 193, Named "Merchant"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.DisplayOptions(arg1)
	end;
	Trader = function(arg1) -- Line 196, Named "Trader"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.DisplayOptions(arg1)
	end;
	Quest = function(arg1) -- Line 199, Named "Quest"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.DisplayOptions(arg1)
	end;
	Achievement = function(arg1) -- Line 202, Named "Achievement"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.DisplayOptions(arg1)
	end;
	Easter = function(arg1) -- Line 205, Named "Easter"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.DisplayOptions(arg1)
	end;
}
local clone_upvr = ReplicatedStorage_upvr.Resources.BillboardGui.InteractionResponse:Clone()
local Attachment = Instance.new("Attachment")
Attachment.Position = Vector3.new(0, 1, 0)
Attachment.Parent = Character.HumanoidRootPart
clone_upvr.Adornee = Attachment
clone_upvr.Parent = PlayerGui_upvr.BillboardGui
function module_upvr.PushMessage(arg1, arg2, arg3) -- Line 222
	--[[ Upvalues[3]:
		[1]: tbl_8_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	local var66_upvw
	if type(arg1) == "string" then
		if not tbl_8_upvr[arg1] then return end
		var66_upvw = workspace.InteractionPrompts[arg1].HumanoidRootPart.Attachment.BillboardGui.Frame
	else
		if not arg1.HumanoidRootPart:FindFirstChild("Attachment") then return end
		if not arg1.HumanoidRootPart.Attachment:FindFirstChild("BillboardGui") then return end
		var66_upvw = arg1.HumanoidRootPart.Attachment.BillboardGui.Frame
	end
	var66_upvw.Frame.Visible = true
	var66_upvw.Visible = true
	Utils_upvr.Animation(var66_upvw, {
		Size = UDim2.new(1, 0, var66_upvw.Size.Y.Scale, 0);
	}, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 246
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: var66_upvw (read and write)
			[3]: Utils_upvr (copied, readonly)
			[4]: ReplicatedStorage_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg3 (readonly)
			[7]: tbl_8_upvr (copied, readonly)
		]]
		local var70 = arg2
		var66_upvw.TextLabel.Visible = true
		for i = 1, #var70 do
			var66_upvw.TextLabel.Text = string.sub(var70, 1, i)
			if (0 + 4) % 8 == 0 then
				Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Snap, true, workspace.InteractionPrompts[arg1].HumanoidRootPart, 50)
			end
			task.wait(0.04)
		end
		if arg3 then
			i = arg1
			if tbl_8_upvr[i].Interacting then
				arg3()
				return
			end
			var66_upvw.TextLabel.Text = ""
		end
	end)
end
function module_upvr.DisplayOptions(arg1) -- Line 273
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	local _1_upvr = arg1[1]
	_1_upvr.Frame.Visible = true
	local _2_upvr = arg1[2]
	Utils_upvr.Animation(_1_upvr.Frame, {
		Size = UDim2.new(0.4, 0, _1_upvr.Frame.Size.Y.Scale, 0);
	}, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 286
		--[[ Upvalues[3]:
			[1]: _1_upvr (readonly)
			[2]: tbl_8_upvr (copied, readonly)
			[3]: _2_upvr (readonly)
		]]
		_1_upvr.Frame.Frame.Visible = true
		local tbl_27 = {}
		for _, v in ipairs(_1_upvr.Frame.Buttons:GetChildren()) do
			if v:IsA("ImageButton") then
				tbl_27[tonumber(v.Name)] = v
			end
		end
		for i_3 = 1, #tbl_8_upvr[_2_upvr].Options do
			local Message = tbl_8_upvr[_2_upvr].Options[i_3].Message
			for i_4 = 1, #Message do
				tbl_27[i_3].TextLabel.Text = string.sub(Message, 1, i_4)
				task.wait()
			end
			task.wait(0.05)
		end
	end)
end
local InteractionPrompts_upvr = workspace.InteractionPrompts
function module_upvr.resetInteraction(arg1) -- Line 309
	--[[ Upvalues[4]:
		[1]: InteractionPrompts_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: clone_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
	]]
	if not InteractionPrompts_upvr[arg1] then
	else
		local Frame_upvr = InteractionPrompts_upvr[arg1].HumanoidRootPart.Attachment.BillboardGui.Frame
		Frame_upvr.Frame.Visible = false
		Utils_upvr.Animation(Frame_upvr, {
			Size = UDim2.new(0, 0, Frame_upvr.Size.Y.Scale, 0);
		}, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 325
			--[[ Upvalues[1]:
				[1]: Frame_upvr (readonly)
			]]
			Frame_upvr.TextLabel.Text = ""
			Frame_upvr.Visible = false
		end)
		clone_upvr.Frame.Frame.Visible = false
		Utils_upvr.Animation(clone_upvr.Frame, {
			Size = UDim2.new(0, 0, clone_upvr.Frame.Size.Y.Scale, 0);
		}, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 340
			--[[ Upvalues[1]:
				[1]: clone_upvr (copied, readonly)
			]]
			clone_upvr.Frame.Visible = false
			for _, v_5 in pairs(clone_upvr.Frame.Buttons:GetChildren()) do
				if v_5:IsA("ImageButton") then
					v_5.TextLabel.Text = ""
				end
			end
		end)
		tbl_8_upvr[arg1].Interacting = false
		InteractionPrompts_upvr[arg1].HumanoidRootPart.ProximityPrompt.Enabled = true
	end
end
for _, v_2_upvr in pairs(clone_upvr.Frame.Buttons:GetChildren()) do
	if v_2_upvr:IsA("ImageButton") then
		local tbl_28 = {}
		local var104_upvw = false
		tbl_28[1] = function(arg1, arg2) -- Line 361
			--[[ Upvalues[3]:
				[1]: var104_upvw (read and write)
				[2]: tbl_8_upvr (readonly)
				[3]: v_2_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [44] 34. Error Block 10 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [44] 34. Error Block 10 end (CF ANALYSIS FAILED)
		end
		tbl_28[2] = function(arg1, arg2) -- Line 378
			--[[ Upvalues[2]:
				[1]: v_2_upvr (readonly)
				[2]: Utils_upvr (readonly)
			]]
			v_2_upvr.ImageColor3 = Color3.fromRGB(160, 160, 160)
			Utils_upvr.Animation(v_2_upvr, {
				Size = UDim2.new(arg2.X.Scale * 0.95, arg2.X.Offset, arg2.Y.Scale * 0.95, arg2.Y.Offset);
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end
		tbl_28[3] = function(arg1, arg2) -- Line 389
			--[[ Upvalues[2]:
				[1]: v_2_upvr (readonly)
				[2]: Utils_upvr (readonly)
			]]
			v_2_upvr.ImageColor3 = Color3.fromRGB(124, 124, 124)
			local tbl_25 = {}
			tbl_25.Size = arg2
			Utils_upvr.Animation(v_2_upvr, tbl_25, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		end
		tbl_28[4] = function(arg1, arg2) -- Line 399
			--[[ Upvalues[2]:
				[1]: v_2_upvr (readonly)
				[2]: Utils_upvr (readonly)
			]]
			v_2_upvr.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Utils_upvr.Animation(v_2_upvr, {
				Size = UDim2.new(arg2.X.Scale * 1.05, arg2.X.Offset, arg2.Y.Scale * 1.05, arg2.Y.Offset);
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end
		tbl_28[5] = function(arg1, arg2) -- Line 410
			--[[ Upvalues[2]:
				[1]: v_2_upvr (readonly)
				[2]: Utils_upvr (readonly)
			]]
			v_2_upvr.ImageColor3 = Color3.fromRGB(124, 124, 124)
			local tbl_18 = {}
			tbl_18.Size = arg2
			Utils_upvr.Animation(v_2_upvr, tbl_18, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		end
		UIController_upvr.bindButton(v_2_upvr, false, tbl_28)
	end
end
for _, v_3_upvr in pairs(workspace.InteractionZones:GetChildren()) do
	if tbl_8_upvr[v_3_upvr.Name] then
		require(Modules.Zone).new(v_3_upvr).localPlayerExited:Connect(function() -- Line 428
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: v_3_upvr (readonly)
			]]
			module_upvr.resetInteraction(v_3_upvr.Name)
		end)
	end
end
for _, v_4 in pairs(workspace.InteractionPrompts:GetChildren()) do
	if v_4:IsA("Model") and v_4:FindFirstChild("HumanoidRootPart") and v_4.HumanoidRootPart:FindFirstChild("ProximityPrompt") then
		local Name_upvr = v_4.Name
		if not tbl_8_upvr[Name_upvr] then return end
		local ProximityPrompt_upvr = v_4.HumanoidRootPart.ProximityPrompt
		local function _() -- Line 441
			--[[ Upvalues[6]:
				[1]: tbl_8_upvr (readonly)
				[2]: Name_upvr (readonly)
				[3]: ProximityPrompt_upvr (readonly)
				[4]: module_upvr (readonly)
				[5]: tbl_15_upvr (readonly)
				[6]: clone_upvr (readonly)
			]]
			tbl_8_upvr[Name_upvr].Interacting = true
			ProximityPrompt_upvr.Enabled = false
			module_upvr.PushMessage(Name_upvr, tbl_8_upvr[Name_upvr].Message, function() -- Line 446
				--[[ Upvalues[3]:
					[1]: tbl_15_upvr (copied, readonly)
					[2]: Name_upvr (copied, readonly)
					[3]: clone_upvr (copied, readonly)
				]]
				tbl_15_upvr[Name_upvr]({clone_upvr, Name_upvr})
			end)
		end
	end
end
return module_upvr