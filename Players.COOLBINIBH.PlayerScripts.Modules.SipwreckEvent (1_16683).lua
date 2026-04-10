-- Name: SipwreckEvent
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.SipwreckEvent
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5365994000003411 seconds

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
-- Decompiled on 2026-04-10 16:49:27
-- Luau version 6, Types version 3
-- Time taken: 0.001825 seconds

local Client = game:GetService("ReplicatedStorage").Remotes.Client
local tbl_upvr = {}
Client.createChestBeam.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local Beam = Instance.new("Beam")
	Beam.FaceCamera = true
	Beam.Transparency = NumberSequence.new(0)
	Beam.Texture = "rbxassetid://99869785698592"
	Beam.TextureMode = Enum.TextureMode.Static
	Beam.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
	Beam.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.5)})
	Beam.Parent = arg3
	Beam.Attachment0 = arg1
	Beam.Attachment1 = arg2
	table.insert(tbl_upvr, Beam)
end)
Client.destroyChestBeam.OnClientEvent:Connect(function() -- Line 39
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for _, v in pairs(tbl_upvr) do
		if v then
			v:Destroy()
		end
	end
	table.clear(tbl_upvr)
end)
return {}