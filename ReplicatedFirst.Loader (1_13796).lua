-- Name: Loader
-- Path: game:GetService("ReplicatedFirst").Loader
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5570468999994773 seconds

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
-- Decompiled on 2026-04-10 16:50:01
-- Luau version 6, Types version 3
-- Time taken: 0.010820 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local var2_upvw = false
ReplicatedStorage_upvr:WaitForChild("Remotes"):WaitForChild("Client"):WaitForChild("ServerSet").OnClientEvent:Connect(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = true
end)
local var4_upvw = false
local _, _ = pcall(function() -- Line 18
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	require(ReplicatedStorage_upvr:WaitForChild("Packages"):WaitForChild("GoodSignal"):WaitForChild("Signals")).Bootstrap.ClientSet:Once(function() -- Line 22
		--[[ Upvalues[1]:
			[1]: var4_upvw (copied, read and write)
		]]
		var4_upvw = true
	end)
end)
local Lighting = game:GetService("Lighting")
local StarterGui_upvr = game:GetService("StarterGui")
local Modules = ReplicatedStorage_upvr:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("Utils"))
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
local Loader_2_upvr = script:WaitForChild("Loader")
local Blur = Lighting:WaitForChild("Blur")
local IntroColorCorrection = Lighting:WaitForChild("IntroColorCorrection")
local var18_upvw
local function setTopbarEnabled(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	repeat
		local pcall_result1_3 = pcall(function() -- Line 54
			--[[ Upvalues[2]:
				[1]: StarterGui_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			StarterGui_upvr:SetCore("TopbarEnabled", arg1)
		end)
		local var21
		if not pcall_result1_3 then
			task.wait(0.1)
			var21 += 0.1
		end
	until pcall_result1_3 and 5 <= var21
end
local function setChatEnabled(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	repeat
		local pcall_result1_2 = pcall(function() -- Line 68
			--[[ Upvalues[2]:
				[1]: StarterGui_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, arg1)
		end)
		local var24
		if not pcall_result1_2 then
			task.wait(0.1)
			var24 += 0.1
		end
	until pcall_result1_2 and 5 <= var24
end
local ReplicatedFirst_upvr = game:GetService("ReplicatedFirst")
local _, _ = pcall(function() -- Line 92
	--[[ Upvalues[1]:
		[1]: ReplicatedFirst_upvr (readonly)
	]]
	ReplicatedFirst_upvr:RemoveDefaultLoadingScreen()
end)
if Loader_2_upvr then
	Loader_2_upvr.Parent = PlayerGui_upvr
end
if Blur then
	Blur.Enabled = true
end
if IntroColorCorrection then
	IntroColorCorrection.Enabled = true
end
local Frame_upvr = Loader_2_upvr:FindFirstChild("Frame")
task.spawn(function() -- Line 108
	--[[ Upvalues[3]:
		[1]: Frame_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	local ImageLabel = Frame_upvr:WaitForChild("ImageLabel")
	local TextLabel = Frame_upvr:WaitForChild("TextLabel")
	module_upvr_2.Animation(ImageLabel, {
		Rotation = -5;
	}, 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	module_upvr_2.Animation(TextLabel, {
		Rotation = -5;
	}, 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	task.wait(2)
	while not LocalPlayer_upvr:GetAttribute("ClientSet") do
		module_upvr_2.Animation(ImageLabel, {
			Rotation = -5;
		}, 4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		module_upvr_2.Animation(TextLabel, {
			Rotation = -5;
		}, 4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		task.wait(4)
		module_upvr_2.Animation(ImageLabel, {
			Rotation = 5;
		}, 4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		module_upvr_2.Animation(TextLabel, {
			Rotation = 5;
		}, 4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		task.wait(4)
	end
end)
local module_upvr = require(Modules:WaitForChild("Library"))
task.spawn(function() -- Line 165
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Loader_2_upvr (readonly)
	]]
	while not LocalPlayer_upvr:GetAttribute("ClientSet") do
		for _, v in pairs(module_upvr.Items.Loot) do
			Loader_2_upvr.Frame.ImageLabel.Image = v.Image
			if LocalPlayer_upvr:GetAttribute("ClientSet") then break end
			task.wait(0.2)
		end
	end
end)
local _, _ = pcall(function() -- Line 179
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: var18_upvw (read and write)
	]]
	if PlayerGui_upvr:FindFirstChild("Loader") and PlayerGui_upvr.Loader:FindFirstChild("Frame") then
		var18_upvw = PlayerGui_upvr.Loader.Frame:WaitForChild("AssetsLoaded")
	end
end)
setTopbarEnabled(false)
setChatEnabled(false)
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid = Character:WaitForChild("Humanoid")
if Humanoid then
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
end
local _, _ = pcall(function() -- Line 196
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
end)
;(function(arg1) -- Line 79, Named "preloadAssetsWithProgress"
	--[[ Upvalues[2]:
		[1]: var18_upvw (read and write)
		[2]: module_upvr_2 (readonly)
	]]
	for i_upvr = 1, 250 do
		local pcall_result1, pcall_result2 = pcall(function() -- Line 81
			--[[ Upvalues[3]:
				[1]: var18_upvw (copied, read and write)
				[2]: module_upvr_2 (copied, readonly)
				[3]: i_upvr (readonly)
			]]
			var18_upvw.Text = `Assets Loaded: {module_upvr_2.FormatComma(i_upvr * 8)}/2,000`
			task.wait()
		end)
		if not pcall_result1 then
			warn(pcall_result2)
		end
	end
end)()
if var18_upvw then
	var18_upvw.Text = "Loading data"
end
require(Modules:WaitForChild("ClientResolver")).Start()
repeat
	task.wait()
until (not LocalPlayer_upvr:GetAttribute("ProfileSet") or LocalPlayer_upvr:GetAttribute("ReplicaSet")) and var2_upvw
if var18_upvw then
	var18_upvw.Text = "Setting up server"
end
repeat
	task.wait()
until LocalPlayer_upvr:GetAttribute("ServerSet") and var2_upvw
if var18_upvw then
	var18_upvw.Text = "Setting up client"
end
task.wait(1)
LocalPlayer_upvr:SetAttribute("ClientStartReady", true)
repeat
	task.wait()
until LocalPlayer_upvr:GetAttribute("ClientSet") and var4_upvw
local Loader = PlayerGui_upvr:FindFirstChild("Loader")
if Loader and Loader:FindFirstChild("Frame") then
	Loader.Frame.Visible = false
end
if Blur then
	Blur.Enabled = false
end
if IntroColorCorrection then
	IntroColorCorrection:Destroy()
end
setTopbarEnabled(true)
setChatEnabled(true)
LocalPlayer_upvr:SetAttribute("GameSet", true)
print("✅ CLIENT | Loaded in "..math.round((tick() - tick()) * 1000).." ms")