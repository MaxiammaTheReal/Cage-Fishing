-- Name: NewYearsEvent
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Effects.NewYearsEvent
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5488803000007465 seconds

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
-- Decompiled on 2026-04-10 16:49:09
-- Luau version 6, Types version 3
-- Time taken: 0.003916 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local CameraShaker_upvr = require(ReplicatedStorage_upvr.Modules.CameraShaker)
local CurrentCamera_upvr = workspace.CurrentCamera
local any_new_result1_upvr = CameraShaker_upvr.new(Enum.RenderPriority.Camera.Value + 1, function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	local var5 = CurrentCamera_upvr
	var5.CFrame *= arg1
end)
any_new_result1_upvr:Start()
local tbl_upvr = {}
local TweenService_upvr = game:GetService("TweenService")
local CameraNewYears_upvr = workspace.CameraLocations.CameraNewYears
ReplicatedStorage_upvr.Remotes.Client.Replication.OnClientEvent:Connect(function(arg1, arg2) -- Line 19
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: CameraShaker_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: CurrentCamera_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: CameraNewYears_upvr (readonly)
	]]
	if arg1 == "StartShake" then
		tbl_upvr.Shake = true
		while tbl_upvr.Shake do
			any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Bump)
			task.wait(0.5)
		end
	end
	if arg1 == "EndShake" then
		tbl_upvr.Shake = nil
	end
	if arg1 == "Fov" then
		TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(arg2.Time), {
			FieldOfView = arg2.Fov;
		}):Play()
	end
	if arg1 == "DeactivateCamera" then
		tbl_upvr.ActiveCamera = nil
		CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
	end
	if arg1 == "Explosion" then
		local clone_upvr = ReplicatedStorage_upvr.Resources.Miscs.NewYearsExplosions[math.random(1, 3)]:Clone()
		clone_upvr.Position = arg2.Position
		clone_upvr.Parent = workspace
		for _, v in pairs(clone_upvr:GetDescendants()) do
			if v:IsA("ParticleEmitter") then
				v:Emit(v:GetAttribute("EmitCount"))
			end
		end
		task.delay(3, function() -- Line 57
			--[[ Upvalues[1]:
				[1]: clone_upvr (readonly)
			]]
			clone_upvr:Destroy()
		end)
		any_new_result1_upvr:Shake(CameraShaker_upvr.Presets.Explosion)
	end
	if arg1 == "ActivateCamera" then
		clone_upvr = CurrentCamera_upvr
		clone_upvr.CameraType = Enum.CameraType.Scriptable
		clone_upvr = CurrentCamera_upvr
		clone_upvr.CFrame = workspace.CameraLocations.CameraNewYears.CFrame
		clone_upvr = tbl_upvr
		clone_upvr.ActiveCamera = true
		while true do
			clone_upvr = tbl_upvr.ActiveCamera
			if not clone_upvr then break end
			clone_upvr = CurrentCamera_upvr
			clone_upvr.CFrame = CFrame.lookAt(CameraNewYears_upvr.Position, arg2.LookAtInstance.Position)
			clone_upvr = task.wait
			clone_upvr()
		end
	end
end)