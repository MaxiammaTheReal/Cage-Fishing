-- Name: ElixirMachine
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.ElixirMachine
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6162474000011571 seconds

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
-- Decompiled on 2026-04-10 16:49:58
-- Luau version 6, Types version 3
-- Time taken: 0.013288 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local ElixirMachine_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").Centre.ElixirMachine
local tbl_upvr = {}
local function _() -- Line 59, Named "ResetConnections"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for _, v in tbl_upvr do
		v:Disconnect()
	end
	table.clear(tbl_upvr)
end
local function FindHoldingFishWithinRequirement() -- Line 66
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: ElixirMachine_upvr (readonly)
	]]
	local any_Resolve_result1 = ClientResolver_upvr.Resolve("PCache", "Equipped")
	if not any_Resolve_result1 then return end
	local string_split_result1 = string.split(any_Resolve_result1, '-')
	if string_split_result1[1] ~= "Loot" or not Library_upvr.Items.Loot[tonumber(string_split_result1[2])] then
		ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
		return
	end
	return any_Resolve_result1, tonumber(string_split_result1[2]), Library_upvr.Items.Loot[tonumber(string_split_result1[2])]
end
local function _() -- Line 80, Named "Reset"
	--[[ Upvalues[2]:
		[1]: ElixirMachine_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
	ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
	ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
	ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
	for _, v_2 in tbl_upvr do
		v_2:Disconnect()
	end
	table.clear(tbl_upvr)
end
local Player_upvr = require(script.Parent.Player)
workspace.ElixirPrompt.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 234
	--[[ Upvalues[3]:
		[1]: ElixirMachine_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: UIController_upvr (readonly)
	]]
	ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
	ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
	ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
	ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
	for _, v_8 in tbl_upvr do
		v_8:Disconnect()
	end
	table.clear(tbl_upvr)
	UIController_upvr.toggleFrame(ElixirMachine_upvr)
end)
;(function() -- Line 90, Named "load"
	--[[ Upvalues[8]:
		[1]: ClientResolver_upvr (readonly)
		[2]: ElixirMachine_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: Player_upvr (readonly)
		[5]: UIController_upvr (readonly)
		[6]: Library_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	ClientResolver_upvr.OnChanged("Profile", "Elixir", function() -- Line 91, Named "UpdateElixir"
		--[[ Upvalues[3]:
			[1]: ClientResolver_upvr (copied, readonly)
			[2]: ElixirMachine_upvr (copied, readonly)
			[3]: Utils_upvr (copied, readonly)
		]]
		ElixirMachine_upvr.Header.ElixirCount.Text = "Elixir: "..Utils_upvr.FormatComma(ClientResolver_upvr.Resolve("Profile", "Elixir"))
	end)
	if not Player_upvr.isLoaded() then
		Player_upvr.waitForLoad()
	end
	if not Player_upvr.isDataLoaded() then
		Player_upvr.waitForDataLoad()
	end
	UIController_upvr.bindButton(ElixirMachine_upvr.Header.Exit, true, {function() -- Line 101
		--[[ Upvalues[2]:
			[1]: UIController_upvr (copied, readonly)
			[2]: ElixirMachine_upvr (copied, readonly)
		]]
		UIController_upvr.toggleFrame(ElixirMachine_upvr)
	end})
	local function FindHoldingFishWithinRequirement_upvr() -- Line 107, Named "FindHoldingFishWithinRequirement"
		--[[ Upvalues[3]:
			[1]: ClientResolver_upvr (copied, readonly)
			[2]: Library_upvr (copied, readonly)
			[3]: ElixirMachine_upvr (copied, readonly)
		]]
		local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("PCache", "Equipped")
		if not any_Resolve_result1_2 then return end
		local string_split_result1_2 = string.split(any_Resolve_result1_2, '-')
		if string_split_result1_2[1] ~= "Loot" or not Library_upvr.Items.Loot[tonumber(string_split_result1_2[2])] then
			ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
			return
		end
		return any_Resolve_result1_2, tonumber(string_split_result1_2[2]), Library_upvr.Items.Loot[tonumber(string_split_result1_2[2])]
	end
	UIController_upvr.bindButton(ElixirMachine_upvr.ExtractElixir.Insert, true, {function() -- Line 121
		--[[ Upvalues[6]:
			[1]: ElixirMachine_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: FindHoldingFishWithinRequirement_upvr (readonly)
			[4]: Library_upvr (copied, readonly)
			[5]: Utils_upvr (copied, readonly)
			[6]: ReplicatedStorage_upvr (copied, readonly)
		]]
		ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
		ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
		ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
		ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
		for i_3, v_3 in tbl_upvr do
			v_3:Disconnect()
		end
		table.clear(tbl_upvr)
		local FindHoldingFishWithinRequirement_result1_upvr, _, FindHoldingFishWithinRequirement_upvr_result3_2 = FindHoldingFishWithinRequirement_upvr()
		if FindHoldingFishWithinRequirement_result1_upvr then
			v_3 = Library_upvr
			v_3 = v_3.Items
			v_3 = v_3.Loot
			i_3 = v_3[_]
			i_3 = i_3.Name
			v_3 = Library_upvr.Values.Loot[i_3]
			v_3 = v_3.Value
			ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = FindHoldingFishWithinRequirement_upvr_result3_2.Image
			ElixirMachine_upvr.ExtractElixir.Extract.Tip.Text = "You get: "..Utils_upvr.FormatComma(v_3).." Elixir"
			local class_UIGradient = ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.Rarity:FindFirstChildOfClass("UIGradient")
			if class_UIGradient then
				class_UIGradient:Destroy()
			end
			ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(FindHoldingFishWithinRequirement_upvr_result3_2.Rarity):Clone().Parent = ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.Rarity
			ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.Rarity.TextLabel.Text = FindHoldingFishWithinRequirement_upvr_result3_2.Rarity
			table.insert(tbl_upvr, ElixirMachine_upvr.ExtractElixir.Extract.MouseButton1Down:Connect(function() -- Line 140
				--[[ Upvalues[4]:
					[1]: ReplicatedStorage_upvr (copied, readonly)
					[2]: FindHoldingFishWithinRequirement_result1_upvr (readonly)
					[3]: ElixirMachine_upvr (copied, readonly)
					[4]: tbl_upvr (copied, readonly)
				]]
				ReplicatedStorage_upvr.Remotes.Server.ElixirMachine:FireServer("ExtractElixir", {
					FishId = FindHoldingFishWithinRequirement_result1_upvr;
				})
				ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
				ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
				ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
				ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
				for _, v_4 in tbl_upvr do
					v_4:Disconnect()
				end
				table.clear(tbl_upvr)
			end))
			ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = true
		end
	end})
	UIController_upvr.bindButton(ElixirMachine_upvr.MutateFish.Insert, true, {function() -- Line 154
		--[[ Upvalues[6]:
			[1]: ElixirMachine_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: FindHoldingFishWithinRequirement_upvr (readonly)
			[4]: Library_upvr (copied, readonly)
			[5]: Utils_upvr (copied, readonly)
			[6]: ReplicatedStorage_upvr (copied, readonly)
		]]
		ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
		ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
		ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
		ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
		for i_5, v_5 in tbl_upvr do
			v_5:Disconnect()
		end
		table.clear(tbl_upvr)
		local FindHoldingFishWithinRequirement_upvr_result1_upvr, _, FindHoldingFishWithinRequirement_upvr_result3 = FindHoldingFishWithinRequirement_upvr()
		if FindHoldingFishWithinRequirement_upvr_result1_upvr then
			v_5 = Library_upvr
			v_5 = v_5.Items
			v_5 = v_5.Loot
			i_5 = v_5[_]
			i_5 = i_5.Name
			v_5 = Library_upvr.Values.Loot[i_5]
			v_5 = v_5.Value
			ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = FindHoldingFishWithinRequirement_upvr_result3.Image
			ElixirMachine_upvr.MutateFish.Mutate.Tip.Text = "Cost: "..Utils_upvr.FormatComma(math.ceil(v_5 * 0.75)).." Elixir"
			local class_UIGradient_2 = ElixirMachine_upvr.MutateFish.MutateView.TextButton.Rarity:FindFirstChildOfClass("UIGradient")
			if class_UIGradient_2 then
				class_UIGradient_2:Destroy()
			end
			ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(FindHoldingFishWithinRequirement_upvr_result3.Rarity):Clone().Parent = ElixirMachine_upvr.MutateFish.MutateView.TextButton.Rarity
			ElixirMachine_upvr.MutateFish.MutateView.TextButton.Rarity.TextLabel.Text = FindHoldingFishWithinRequirement_upvr_result3.Rarity
			table.insert(tbl_upvr, ElixirMachine_upvr.MutateFish.Mutate.MouseButton1Down:Connect(function() -- Line 176
				--[[ Upvalues[4]:
					[1]: ReplicatedStorage_upvr (copied, readonly)
					[2]: FindHoldingFishWithinRequirement_upvr_result1_upvr (readonly)
					[3]: ElixirMachine_upvr (copied, readonly)
					[4]: tbl_upvr (copied, readonly)
				]]
				ReplicatedStorage_upvr.Remotes.Server.ElixirMachine:FireServer("ProcessMutation", {
					FishId = FindHoldingFishWithinRequirement_upvr_result1_upvr;
				})
				ElixirMachine_upvr.ExtractElixir.ExtractView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
				ElixirMachine_upvr.MutateFish.MutateView.TextButton.FishIcon.Image = "rbxassetid://88075348644782"
				ElixirMachine_upvr.ExtractElixir.Extract.Tip.Visible = false
				ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = false
				for _, v_6 in tbl_upvr do
					v_6:Disconnect()
				end
				table.clear(tbl_upvr)
			end))
			ElixirMachine_upvr.MutateFish.Mutate.Tip.Visible = true
		end
	end})
	local var51 = 0
	for i_7, _ in next, Library_upvr.ElixirData.MutationChances do
		local clone = script.TextLabel:Clone()
		clone.Text = i_7
		clone.LayoutOrder = var51
		clone.Name = var51
		ReplicatedStorage_upvr.Resources.EventGradients[i_7]:Clone().Parent = clone
		clone.Parent = ElixirMachine_upvr.ScrollingFrame
		local _
	end
	local function Loopin_upvr() -- Line 202, Named "Loopin"
		--[[ Upvalues[2]:
			[1]: ElixirMachine_upvr (copied, readonly)
			[2]: Loopin_upvr (readonly)
		]]
		print("looping")
		local var55 = #ElixirMachine_upvr.ScrollingFrame:GetChildren() - 1
		for i_8 = 0, var55 do
			local SOME = ElixirMachine_upvr.ScrollingFrame:FindFirstChild(i_8)
			if SOME then
				SOME.BackgroundTransparency = 0
			end
			task.wait(3 / var55)
			if SOME then
				SOME.BackgroundTransparency = 1
			end
		end
		if ElixirMachine_upvr.Visible then
			Loopin_upvr()
		end
	end
	ElixirMachine_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 223
		--[[ Upvalues[2]:
			[1]: ElixirMachine_upvr (copied, readonly)
			[2]: Loopin_upvr (readonly)
		]]
		if ElixirMachine_upvr.Visible then
			Loopin_upvr()
		end
	end)
	UIController_upvr.bindButton(ElixirMachine_upvr.ExtractElixir.Extract, true, {function() -- Line 229
	end})
	UIController_upvr.bindButton(ElixirMachine_upvr.MutateFish.Mutate, true, {function() -- Line 230
	end})
end)()
ElixirMachine_upvr.Header.ElixirCount.Text = "Elixir: "..Utils_upvr.FormatComma(ClientResolver_upvr.Resolve("Profile", "Elixir"))
return {}