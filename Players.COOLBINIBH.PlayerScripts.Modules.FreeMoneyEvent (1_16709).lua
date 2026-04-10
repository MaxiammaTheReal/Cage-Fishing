-- Name: FreeMoneyEvent
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.FreeMoneyEvent
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5478495999996085 seconds

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
-- Decompiled on 2026-04-10 16:49:53
-- Luau version 6, Types version 3
-- Time taken: 0.001607 seconds

local TweenService_upvr = game:GetService("TweenService")
local function OpenVaultDoor_upvr(arg1) -- Line 10, Named "OpenVaultDoor"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	print(arg1)
	local FreeMoneyVault = workspace:WaitForChild("FreeMoneyVault", 10)
	if not FreeMoneyVault then
	else
		local Cube_009 = FreeMoneyVault.Model["Cube.009"]
		if arg1 then
			local CFrame = FreeMoneyVault.Model.Hinge.CFrame
			TweenService_upvr:Create(Cube_009, TweenInfo.new(1.5), {
				CFrame = (CFrame) * (CFrame.Angles(0, (math.pi/2), 0) * CFrame:ToObjectSpace(Cube_009.CFrame));
			}):Play()
		else
			TweenService_upvr:Create(Cube_009, TweenInfo.new(1.5), {
				CFrame = Cube_009.CFrame * CFrame.Angles(0, (-math.pi/2), 0);
			}):Play()
		end
		print(arg1)
	end
end
require(game:GetService("ReplicatedStorage").BlinkNetwork.Blink.Client).openVaultDoor.On(function(arg1) -- Line 35
	--[[ Upvalues[1]:
		[1]: OpenVaultDoor_upvr (readonly)
	]]
	OpenVaultDoor_upvr(arg1)
end)
return {}