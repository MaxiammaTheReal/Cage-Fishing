-- Name: Client
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.Client
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.258081800000582 seconds

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
-- Decompiled on 2026-04-10 16:49:04
-- Luau version 6, Types version 3
-- Time taken: 0.006357 seconds

-- KONSTANTERROR: [0] 1. Error Block 97 start (CF ANALYSIS FAILED)
local _ = {
	CHECK_RADIUS = 50;
	MOVEMENT_THRESHOLD = 1;
	CHECK_INTERVAL = 0.1;
}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Services"))
local LocalPlayer = module_upvr.Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
repeat
	task.wait()
until LocalPlayer:GetAttribute("ClientStartReady")
for _, v in ipairs(ReplicatedStorage_upvr.ClientPackages:GetChildren()) do
	if v:IsA("ScreenGui") then
		v.Parent = PlayerGui
	else
		v.Parent = PlayerScripts
	end
end
local _ = {
	ClientResolver = require(Modules.ClientResolver);
	Inventory = false;
}
-- KONSTANTERROR: [0] 1. Error Block 97 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [190] 125. Error Block 11 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [190] 125. Error Block 11 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [195] 128. Error Block 12 start (CF ANALYSIS FAILED)
require(script.Parent.UIStrokeAdjuster):TagScreenGui(PlayerGui.Main)
local Bottom_upvr = PlayerGui.Main.Bottom
local var16_upvw
pcall(function() -- Line 67
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Bottom_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: var16_upvw (read and write)
	]]
	if module_upvr.UserInputService.TouchEnabled and not module_upvr.UserInputService.KeyboardEnabled then
		Bottom_upvr.Hotbar_Large:Destroy()
		Bottom_upvr.Hotbar_Small.Visible = true
		Bottom_upvr.Hotbar_Small.Name = "Hotbar"
		ReplicatedStorage_upvr.Resources.Interface.HotbarFrame_Large:Destroy()
		ReplicatedStorage_upvr.Resources.Interface.HotbarFrame_Small.Name = "HotbarFrame"
		var16_upvw = "Touch"
	else
		Bottom_upvr.Hotbar_Small:Destroy()
		Bottom_upvr.Hotbar_Large.Visible = true
		Bottom_upvr.Hotbar_Large.Name = "Hotbar"
		ReplicatedStorage_upvr.Resources.Interface.HotbarFrame_Small:Destroy()
		ReplicatedStorage_upvr.Resources.Interface.HotbarFrame_Large.Name = "HotbarFrame"
		var16_upvw = "NonTouch"
	end
end)
-- KONSTANTERROR: [195] 128. Error Block 12 end (CF ANALYSIS FAILED)