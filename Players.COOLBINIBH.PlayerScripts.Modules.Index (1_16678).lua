-- Name: Index
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Index
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7166100999984337 seconds

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
-- Decompiled on 2026-04-10 16:49:22
-- Luau version 6, Types version 3
-- Time taken: 0.049934 seconds

local ReplicatedStorage_upvr_2 = game:GetService("ReplicatedStorage")
local Services_upvr = require(ReplicatedStorage_upvr_2.Modules.Services)
local Modules_2 = ReplicatedStorage_upvr_2.Modules
local ClientResolver_upvr_2 = require(Modules_2.ClientResolver)
local Library_upvr = require(Modules_2.Library)
local Utils_upvr = require(Modules_2.Utils)
local UIController_upvr_2 = require(script.Parent.Parent.UIController)
local Index_upvr_2 = Services_upvr.Players.LocalPlayer.PlayerGui.Main.Centre.Index
local Fish_upvr_2 = Index_upvr_2.Fish
local Cages_upvr_2 = Index_upvr_2.Cages
local Statistics_upvr_2 = Index_upvr_2.Statistics
local IndexProgress_2 = Index_upvr_2.IndexProgress
local Bar_upvr = IndexProgress_2.CanvasGroup.Bar
local IndexRewards_upvr_2 = IndexProgress_2.CanvasGroup.IndexRewards
local function updateIndexProgress_upvr() -- Line 34, Named "updateIndexProgress"
	--[[ Upvalues[4]:
		[1]: Library_upvr (readonly)
		[2]: ClientResolver_upvr_2 (readonly)
		[3]: Bar_upvr (readonly)
		[4]: IndexRewards_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var198 = 0
	for _ in pairs(Library_upvr.Items.Loot) do
		var198 += 1
	end
	for _, v in pairs(ClientResolver_upvr_2.Resolve("Profile", "Index")) do
		if v.Found then
			local var205 = 0 + 1
		end
	end
	if 0 >= var198 or not (var205 / var198) then
		local var206 = 0
	end
	Bar_upvr.Size = UDim2.new(var206, 0, 1, 0)
	IndexRewards_upvr_2.Text = string.format("Found: %d/%d (%d%%)", var205, var198, math.floor(var206 * 100))
end
updateIndexProgress_upvr()
local Stats_upvr_2 = Statistics_upvr_2.Stats
local function loadProfileData_upvr(arg1, arg2, arg3) -- Line 55, Named "loadProfileData"
	--[[ Upvalues[6]:
		[1]: Library_upvr (readonly)
		[2]: ReplicatedStorage_upvr_2 (readonly)
		[3]: Statistics_upvr_2 (readonly)
		[4]: ClientResolver_upvr_2 (readonly)
		[5]: Utils_upvr (readonly)
		[6]: Stats_upvr_2 (readonly)
	]]
	local var214 = Library_upvr.Items[arg2][arg1]
	local Color_2 = ReplicatedStorage_upvr_2.Resources.RarityGradients[var214.Rarity].Color
	Statistics_upvr_2.Tip.Visible = false
	Statistics_upvr_2.Profile.Visible = true
	Statistics_upvr_2.Stats.Visible = true
	Statistics_upvr_2.FishName.Visible = true
	Statistics_upvr_2.Profile.FishIcon.Image = ""
	for _, v_2 in pairs(Statistics_upvr_2.Stats:GetChildren()) do
		if v_2:IsA("TextLabel") then
			v_2.Visible = false
		end
	end
	for i_4, _ in pairs(ClientResolver_upvr_2.Resolve("Profile", "Inventory")) do
		if Utils_upvr.SplitDash(i_4)[2] == arg1 then
		end
	end
	for i_5, v_4 in pairs(Statistics_upvr_2.Profile.CageIcon:GetChildren()) do
		if v_4:IsA("Model") then
			v_4:Destroy()
		end
	end
	if arg2 == "Loot" then
		Stats_upvr_2.Location.Visible = true
		Statistics_upvr_2.FishName.Text = "???"
		Statistics_upvr_2.Profile.FishIcon.Image = var214.Image
		i_5 = 0
		v_4 = 0
		Statistics_upvr_2.Profile.FishIcon.ImageColor3 = Color3.fromRGB(0, i_5, v_4)
		local any_Resolve_result1_4 = ClientResolver_upvr_2.Resolve("Profile", "Index")
		i_5 = "Loot-"
		v_4 = arg1
		if any_Resolve_result1_4[i_5..v_4] then
			i_5 = "Loot-"
			v_4 = arg1
			if any_Resolve_result1_4[i_5..v_4].Found then
				i_5 = 255
				v_4 = 255
				Statistics_upvr_2.Profile.FishIcon.ImageColor3 = Color3.fromRGB(i_5, v_4, 255)
				Statistics_upvr_2.FishName.Text = var214.Name
			end
		end
		i_5 = "Found in: "
		v_4 = var214.Region
		Stats_upvr_2.Location.Text = i_5..v_4
	end
	if arg2 == "Cage" then
		Stats_upvr_2.MaxDistance.Visible = true
		Stats_upvr_2.MaxDepth.Visible = true
		Stats_upvr_2.Capacity.Visible = true
		Stats_upvr_2.Luck.Visible = true
		Statistics_upvr_2.FishName.Text = var214.Name
		i_5 = var214.MinRegion
		Stats_upvr_2.MaxDistance.Text = "Max Region: "..i_5
		i_5 = var214.MaxDepth
		v_4 = 'm'
		Stats_upvr_2.MaxDepth.Text = "Max Depth: "..i_5..v_4
		i_5 = var214.Capacity
		v_4 = " Fish"
		Stats_upvr_2.Capacity.Text = "Capacity: "..i_5..v_4
		i_5 = var214.Luck * 100
		v_4 = '%'
		Stats_upvr_2.Luck.Text = "Luck Boost: "..i_5..v_4
		if arg3 then
			local clone_2 = arg3:Clone()
			clone_2.Parent = Statistics_upvr_2.Profile.CageIcon
			i_5 = "CageModel1005"
			if clone_2:FindFirstChild(i_5) then
				i_5 = 0
				v_4 = 0
				Statistics_upvr_2.Profile.CageIcon.ImageColor3 = Color3.fromRGB(i_5, v_4, 0)
			else
				i_5 = 255
				v_4 = 255
				Statistics_upvr_2.Profile.CageIcon.ImageColor3 = Color3.fromRGB(i_5, v_4, 255)
			end
		end
	end
	Statistics_upvr_2.Profile.Rarity.UIGradient.Color = Color_2
	Statistics_upvr_2.Profile.UIStroke.UIGradient.Color = Color_2
	Statistics_upvr_2.Profile.Rarity.TextLabel.Text = var214.Rarity
end
for _, v_5_upvr in pairs(Fish_upvr_2:GetChildren()) do
	if v_5_upvr:IsA("Frame") and tonumber(v_5_upvr.Name) and v_5_upvr:FindFirstChild("TextButton") and v_5_upvr.TextButton:FindFirstChild("FishIcon") then
		local Size_2_upvr = v_5_upvr.TextButton.FishIcon.Size
		local Size_upvr_2 = v_5_upvr.TextButton.Check.TextButton.Size
		local var232 = Library_upvr.Items.Loot[tonumber(v_5_upvr.Name)]
		v_5_upvr.TextButton.FishName.Text = "???"
		v_5_upvr.TextButton.FishIcon.Image = var232.Image
		local any_Resolve_result1_2 = ClientResolver_upvr_2.Resolve("Profile", "Index")
		if any_Resolve_result1_2 and any_Resolve_result1_2["Loot-"..v_5_upvr.Name] and any_Resolve_result1_2["Loot-"..v_5_upvr.Name].Found then
			v_5_upvr.TextButton.FishIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
			v_5_upvr.TextButton.FishName.Text = var232.Name
		end
		v_5_upvr.TextButton.Rarity.TextLabel.Text = var232.Rarity
		v_5_upvr.TextButton.Rarity.UIGradient.Color = ReplicatedStorage_upvr_2.Resources.RarityGradients[var232.Rarity].Color
		UIController_upvr_2.bindButton(v_5_upvr.TextButton, false, {function() -- Line 161
			--[[ Upvalues[4]:
				[1]: Utils_upvr (readonly)
				[2]: v_5_upvr (readonly)
				[3]: Size_2_upvr (readonly)
				[4]: loadProfileData_upvr (readonly)
			]]
			Utils_upvr.Animation(v_5_upvr.TextButton.FishIcon, {
				Size = Size_2_upvr;
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			loadProfileData_upvr(tonumber(v_5_upvr.Name), "Loot")
		end, false, false, function() -- Line 175
			--[[ Upvalues[3]:
				[1]: Utils_upvr (readonly)
				[2]: v_5_upvr (readonly)
				[3]: Size_2_upvr (readonly)
			]]
			Utils_upvr.Animation(v_5_upvr.TextButton.FishIcon, {
				Size = UDim2.new(Size_2_upvr.X.Scale * 1.05, 0, Size_2_upvr.Y.Scale * 1.1, 0);
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end, function() -- Line 186
			--[[ Upvalues[3]:
				[1]: Utils_upvr (readonly)
				[2]: v_5_upvr (readonly)
				[3]: Size_2_upvr (readonly)
			]]
			Utils_upvr.Animation(v_5_upvr.TextButton.FishIcon, {
				Size = Size_2_upvr;
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end})
		local tbl = {}
		local Server_upvr = ReplicatedStorage_upvr_2.Remotes.Server
		tbl[1] = function() -- Line 204
			--[[ Upvalues[3]:
				[1]: v_5_upvr (readonly)
				[2]: ClientResolver_upvr_2 (readonly)
				[3]: Server_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [74] 57. Error Block 6 start (CF ANALYSIS FAILED)
			v_5_upvr.TextButton.Check.TextButton.Text = "✓"
			v_5_upvr.TextButton.DeleteStroke.Enabled = false
			v_5_upvr.TextButton.Delete.Visible = false
			do
				return
			end
			-- KONSTANTERROR: [74] 57. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [101] 74. Error Block 7 start (CF ANALYSIS FAILED)
			print("notify they cannot create an index for a fish they havent found yet!")
			-- KONSTANTERROR: [101] 74. Error Block 7 end (CF ANALYSIS FAILED)
		end
		tbl[2] = false
		tbl[3] = false
		tbl[4] = function() -- Line 229
			--[[ Upvalues[3]:
				[1]: Utils_upvr (readonly)
				[2]: v_5_upvr (readonly)
				[3]: Size_upvr_2 (readonly)
			]]
			Utils_upvr.Animation(v_5_upvr.TextButton.Check.TextButton, {
				Size = UDim2.new(Size_upvr_2.X.Scale * 1.1, 0, Size_upvr_2.Y.Scale * 1.1, 0);
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end
		tbl[5] = function() -- Line 240
			--[[ Upvalues[3]:
				[1]: Utils_upvr (readonly)
				[2]: v_5_upvr (readonly)
				[3]: Size_upvr_2 (readonly)
			]]
			Utils_upvr.Animation(v_5_upvr.TextButton.Check.TextButton, {
				Size = Size_upvr_2;
			}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end
		UIController_upvr_2.bindButton(v_5_upvr.TextButton.Check.TextButton, false, tbl)
	end
end
for _, v_6_upvr in pairs(Cages_upvr_2:GetChildren()) do
	Size_2_upvr = v_6_upvr:IsA("Frame")
	if Size_2_upvr then
		Size_upvr_2 = v_6_upvr.Name
		Size_2_upvr = tonumber(Size_upvr_2)
		if Size_2_upvr then
			Size_2_upvr = v_6_upvr:FindFirstChild("TextButton")
			if Size_2_upvr then
				Size_2_upvr = v_6_upvr.TextButton:FindFirstChild("CageIcon")
				if Size_2_upvr then
					Size_2_upvr = v_6_upvr.TextButton
					Size_2_upvr = Size_2_upvr.CageIcon
					Size_2_upvr = Size_2_upvr.Size
					local var251_upvr = Size_2_upvr
					Size_upvr_2 = Library_upvr.Items.Cage[tonumber(v_6_upvr.Name)]
					local var252 = Size_upvr_2
					v_6_upvr.TextButton.CageName.Text = var252.Name
					v_6_upvr.TextButton.Rarity.TextLabel.Text = var252.Rarity
					v_6_upvr.TextButton.Rarity.UIGradient.Color = ReplicatedStorage_upvr_2.Resources.RarityGradients[var252.Rarity].Color
					local tbl_9 = {}
					local CageModel_upvr_2 = v_6_upvr.TextButton.CageIcon.CageModel
					tbl_9[1] = function() -- Line 275
						--[[ Upvalues[5]:
							[1]: Utils_upvr (readonly)
							[2]: v_6_upvr (readonly)
							[3]: var251_upvr (readonly)
							[4]: loadProfileData_upvr (readonly)
							[5]: CageModel_upvr_2 (readonly)
						]]
						Utils_upvr.Animation(v_6_upvr.TextButton.CageIcon, {
							Size = var251_upvr;
						}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						loadProfileData_upvr(tonumber(v_6_upvr.Name), "Cage", CageModel_upvr_2)
					end
					tbl_9[2] = false
					tbl_9[3] = false
					tbl_9[4] = function() -- Line 289
						--[[ Upvalues[3]:
							[1]: Utils_upvr (readonly)
							[2]: v_6_upvr (readonly)
							[3]: var251_upvr (readonly)
						]]
						Utils_upvr.Animation(v_6_upvr.TextButton.CageIcon, {
							Size = UDim2.new(var251_upvr.X.Scale * 1.1, 0, var251_upvr.Y.Scale * 1.1, 0);
						}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					end
					tbl_9[5] = function() -- Line 300
						--[[ Upvalues[3]:
							[1]: Utils_upvr (readonly)
							[2]: v_6_upvr (readonly)
							[3]: var251_upvr (readonly)
						]]
						Utils_upvr.Animation(v_6_upvr.TextButton.CageIcon, {
							Size = var251_upvr;
						}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					end
					UIController_upvr_2.bindButton(v_6_upvr.TextButton, false, tbl_9)
				end
			end
		end
	end
end
for i_8, v_7 in pairs(ClientResolver_upvr_2.Resolve("Profile", "Index")) do
	var252 = v_7.Enabled
	if not var252 then
		var252 = Utils_upvr.SplitDash(i_8)[2]
		local var264 = var252
		CageModel_upvr_2 = var264
		Fish_upvr_2[tostring(CageModel_upvr_2)].TextButton.Check.TextButton.Text = "❌"
		CageModel_upvr_2 = var264
		Fish_upvr_2[tostring(CageModel_upvr_2)].TextButton.DeleteStroke.Enabled = true
		CageModel_upvr_2 = var264
		Fish_upvr_2[tostring(CageModel_upvr_2)].TextButton.Delete.Visible = true
	end
end
UIController_upvr_2.bindButton(Index_upvr_2.Header.Exit, true, {function() -- Line 330
	--[[ Upvalues[2]:
		[1]: UIController_upvr_2 (readonly)
		[2]: Index_upvr_2 (readonly)
	]]
	UIController_upvr_2.toggleFrame(Index_upvr_2)
end})
ClientResolver_upvr_2.OnArraySet("Profile", "Index", function(arg1, arg2) -- Line 336
	--[[ Upvalues[4]:
		[1]: Utils_upvr (readonly)
		[2]: Fish_upvr_2 (readonly)
		[3]: Library_upvr (readonly)
		[4]: updateIndexProgress_upvr (readonly)
	]]
	local _2 = Utils_upvr.SplitDash(arg1)[2]
	if Fish_upvr_2:FindFirstChild(tostring(_2)) then
		Fish_upvr_2[_2].TextButton.FishIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
		Fish_upvr_2[_2].TextButton.FishName.Text = Library_upvr.Items.Loot[_2].Name
	end
	updateIndexProgress_upvr()
end)
UIController_upvr_2.bindButton(Index_upvr_2.Menu.Cages, true, {function() -- Line 349
	--[[ Upvalues[1]:
		[1]: Index_upvr_2 (readonly)
	]]
	for _, v_8 in pairs(Index_upvr_2:GetChildren()) do
		if v_8:IsA("ScrollingFrame") then
			v_8.Visible = false
		end
	end
	Index_upvr_2.Cages.Visible = true
end})
UIController_upvr_2.bindButton(Index_upvr_2.Menu.Fish, true, {function() -- Line 364
	--[[ Upvalues[1]:
		[1]: Index_upvr_2 (readonly)
	]]
	for _, v_9 in pairs(Index_upvr_2:GetChildren()) do
		if v_9:IsA("ScrollingFrame") then
			v_9.Visible = false
		end
	end
	Index_upvr_2.Fish.Visible = true
end})
local var284_upvw = 0
Cages_upvr_2:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 377
	--[[ Upvalues[4]:
		[1]: Statistics_upvr_2 (readonly)
		[2]: Cages_upvr_2 (readonly)
		[3]: var284_upvw (read and write)
		[4]: Services_upvr (readonly)
	]]
	Statistics_upvr_2.Tip.Visible = true
	Statistics_upvr_2.Profile.Visible = false
	Statistics_upvr_2.Stats.Visible = false
	Statistics_upvr_2.FishName.Visible = false
	if Cages_upvr_2.Visible then
		Statistics_upvr_2.Profile.FishIcon.Image = ""
		while Cages_upvr_2.Visible do
			var284_upvw += 0.026179938779914945
			for _, v_10 in Services_upvr.CollectionService:GetTagged("CageViewport"), nil do
				local var289
				if var289 then
					var289 = v_10:FindFirstChild("CageModel")
				end
				if v_10 and var289 then
					if not v_10:FindFirstChild("ViewportCamera") then
						local Camera = Instance.new("Camera")
						Camera.Name = "ViewportCamera"
						Camera.Parent = v_10
						v_10.CurrentCamera = Camera
						if not var289.PrimaryPart then
							local class_BasePart_2 = var289:FindFirstChildWhichIsA("BasePart")
							if class_BasePart_2 then
								var289.PrimaryPart = class_BasePart_2
							end
						end
					end
					if Camera then
						if var289.PrimaryPart then
							local Position = var289.PrimaryPart.Position
							local Size = var289.PrimaryPart.Size
							local maximum_2 = math.max(Size.X, Size.Y, Size.Z)
							local var295 = maximum_2 * 1.25
							Camera.CFrame = CFrame.new(Position + Vector3.new(math.sin(var284_upvw) * var295, maximum_2 * 0.75, math.cos(var284_upvw) * var295), Position)
						end
					end
				end
			end
			task.wait(0.03)
		end
	end
end)
Fish_upvr_2:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 429
	--[[ Upvalues[1]:
		[1]: Statistics_upvr_2 (readonly)
	]]
	for _, v_11 in pairs(Statistics_upvr_2.Profile.CageIcon:GetChildren()) do
		if v_11:IsA("Model") then
			v_11:Destroy()
		end
	end
	Statistics_upvr_2.Tip.Visible = true
	Statistics_upvr_2.Profile.Visible = false
	Statistics_upvr_2.Stats.Visible = false
	Statistics_upvr_2.FishName.Visible = false
end)
Instance.new("Camera").Parent = Statistics_upvr_2.Profile.CageIcon
return {}