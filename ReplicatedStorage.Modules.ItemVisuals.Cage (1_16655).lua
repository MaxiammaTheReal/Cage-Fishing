-- Name: Cage
-- Path: game:GetService("ReplicatedStorage").Modules.ItemVisuals.Cage
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6912358999998105 seconds

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
-- Decompiled on 2026-04-10 16:50:54
-- Luau version 6, Types version 3
-- Time taken: 0.023951 seconds

local module = {
	Type = "Cage";
}
local tbl_upvr_2 = {}
tbl_upvr_2.__index = tbl_upvr_2
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Utils_upvr = require(game.ReplicatedStorage.Modules.Utils)
local Library_upvr = require(game.ReplicatedStorage.Modules.Library)
function tbl_upvr_2.new(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_2)
	setmetatable_result1.Part = arg1
	setmetatable_result1._bobbing = false
	setmetatable_result1._originalPosition = arg1.Position
	setmetatable_result1._originalOrientation = arg1.Orientation
	setmetatable_result1._originalCFrame = arg1.CFrame
	setmetatable_result1._positionTween = nil
	setmetatable_result1._rotationTween = nil
	setmetatable_result1._random = Random.new()
	setmetatable_result1._tiltDirection = 5
	setmetatable_result1._sunken = false
	if arg2 then
		setmetatable_result1:SplashVFX()
	end
	return setmetatable_result1
end
function tbl_upvr_2._StartTweenBobbing(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	if arg1._positionTween then
		arg1._positionTween:Cancel()
	end
	if arg1._rotationTween then
		arg1._rotationTween:Cancel()
	end
	local var8 = arg1._originalOrientation - Vector3.new(2, 0, 2)
	local var9 = arg1._originalOrientation + Vector3.new(2, 0, 2)
	arg1.Part.CFrame = CFrame.new(arg1._originalPosition) * CFrame.Angles(math.rad(arg1._originalOrientation.X), math.rad(arg1._originalOrientation.Y), math.rad(arg1._originalOrientation.Z))
	local var12_upvr = CFrame.new(arg1._originalPosition) * CFrame.Angles(math.rad(var9.X), math.rad(var9.Y), math.rad(var9.Z))
	arg1._positionTween = Utils_upvr.Animation(arg1.Part, {
		CFrame = CFrame.new(arg1._originalPosition - Vector3.new(0, 0.5, 0)) * CFrame.Angles(math.rad(var8.X), math.rad(var8.Y), math.rad(var8.Z));
	}, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0, function() -- Line 89
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Utils_upvr (copied, readonly)
			[3]: var12_upvr (readonly)
		]]
		arg1._positionTween = Utils_upvr.Animation(arg1.Part, {
			CFrame = var12_upvr;
		}, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
	end)
end
function tbl_upvr_2.StartBobbing(arg1) -- Line 104
	if arg1._bobbing then
	else
		if arg1._sunken then return end
		arg1._bobbing = true
		task.delay((arg1.Part.Position.X + arg1.Part.Position.Z) % 1, function() -- Line 112
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1._bobbing then
				arg1:_StartTweenBobbing()
			end
		end)
	end
end
function tbl_upvr_2.StopBobbing(arg1) -- Line 119
	arg1._bobbing = false
	if arg1._positionTween then
		arg1._positionTween:Cancel()
		arg1._positionTween = nil
	end
	if arg1._rotationTween then
		arg1._rotationTween:Cancel()
		arg1._rotationTween = nil
	end
	if not arg1._sunken then
		arg1.Part.CFrame = CFrame.new(arg1._originalPosition) * CFrame.Angles(math.rad(arg1._originalOrientation.X), math.rad(arg1._originalOrientation.Y), math.rad(arg1._originalOrientation.Z))
	end
end
local Resources_upvr = ReplicatedStorage_upvr.Resources
local Main_upvr = LocalPlayer_upvr.PlayerGui.Main
function tbl_upvr_2.CageIcon(arg1, arg2, arg3) -- Line 144
	--[[ Upvalues[4]:
		[1]: Resources_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: Main_upvr (readonly)
		[4]: Utils_upvr (readonly)
	]]
	local var17_upvr = arg2 * -1
	if not arg1._icon then
		local clone = Resources_upvr.Interface.CageProgressionIcon:Clone()
		clone.Image = Library_upvr.Items.Cage[arg3].Image
		clone.Name = arg1.Part.Name
		clone.Parent = Main_upvr.Left.Progression
		arg1._icon = clone
	end
	Utils_upvr.Animation(arg1._icon, {
		Position = UDim2.new(0.5, 0, var17_upvr / 100, 0);
	}, 2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	task.spawn(function() -- Line 171
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var17_upvr (readonly)
		]]
		local var23 = tonumber(arg1._icon.Depth.Text:match("%d+")) or 0
		for i = 1, 10 do
			arg1._icon.Depth.Text = "◁  "..math.floor(var23 + (var17_upvr - var23) * (i / 10) + 0.5)..'m'
			task.wait(0.2)
		end
	end)
end
function tbl_upvr_2.Sink(arg1, arg2) -- Line 183
	--[[ Upvalues[3]:
		[1]: Utils_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if arg1._sunken then
		return false
	end
	arg1._sunken = true
	arg1:StopBobbing()
	if not arg2 then
		arg1:SplashVFX()
	end
	task.wait(0.1)
	if not arg2 then
		Utils_upvr.Animation(arg1.Part, {
			CFrame = arg1.Part.CFrame * CFrame.new(0, Library_upvr.Items.Cage[Utils_upvr.SplitDash(arg1.Part.Name)[2]].MaxDepth * -1, 0);
		}, 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0, function() -- Line 200
			--[[ Upvalues[3]:
				[1]: Utils_upvr (copied, readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			Utils_upvr.Animation(workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters[arg1.Part.Name], {
				Transparency = 0.75;
			}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		end)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.Part.CFrame = arg1.Part.CFrame * CFrame.new(0, Library_upvr.Items.Cage[Utils_upvr.SplitDash(arg1.Part.Name)[2]].MaxDepth * -1, 0)
		workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters[arg1.Part.Name].Transparency = 0.75
	end
	return true
end
function tbl_upvr_2.Return(arg1) -- Line 221
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if not arg1._sunken then
		return false
	end
	task.delay(1, function() -- Line 226
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:SplashVFX()
	end)
	Utils_upvr.Animation(arg1.Part, {
		CFrame = CFrame.new(arg1._originalPosition) * CFrame.Angles(math.rad(arg1._originalOrientation.X), math.rad(arg1._originalOrientation.Y), math.rad(arg1._originalOrientation.Z));
	}, 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0, function() -- Line 236
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Utils_upvr (copied, readonly)
			[3]: LocalPlayer_upvr (copied, readonly)
		]]
		arg1._sunken = false
		if Utils_upvr.SplitDash(arg1.Part.Name)[2] < 7 then
			arg1:StartBobbing()
		end
		Utils_upvr.Animation(workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters[arg1.Part.Name], {
			Transparency = 1;
		}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end)
	return true
end
function tbl_upvr_2.HideFromPlayer(arg1) -- Line 257
	arg1:StopBobbing()
	for _, v in ipairs(arg1.Part:GetDescendants()) do
		if v:IsA("BasePart") or v:IsA("Decal") then
			v.Transparency = 1
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
end
function tbl_upvr_2.FishShadowApproach(arg1, arg2) -- Line 269
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local SOME_2 = workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters:FindFirstChild(arg1.Part.Name)
	if not SOME_2 then
	else
		local Position_upvr = SOME_2.Position
		local clone_2_upvr = arg2:Clone()
		local Size_upvr = clone_2_upvr.Size
		clone_2_upvr.Anchored = true
		clone_2_upvr.CanCollide = false
		clone_2_upvr.Size = Vector3.new(Size_upvr.X, 0, Size_upvr.Z)
		clone_2_upvr.Name = "FishShadow"
		clone_2_upvr.Parent = workspace.FishShadows
		local radians = math.rad(math.random(0, 359))
		local var41 = Position_upvr + Vector3.new(math.cos(radians), 0, math.sin(radians)) * math.random(10, 15)
		local vector3_2 = Vector3.new(var41.X, Position_upvr.Y + 0.05, var41.Z)
		local Unit = (Position_upvr - vector3_2).Unit
		local var44 = Size_upvr.Z / 2
		local var45 = vector3_2 - Unit * var44
		local var46_upvr = Position_upvr - Unit * (var44 + 6)
		local function _(arg1_2, arg2_2) -- Line 298, Named "createFlatFacingCFrame"
			return CFrame.new(arg1_2, Vector3.new(arg2_2.X, arg1_2.Y, arg2_2.Z)) * CFrame.Angles(0, math.pi, 0)
		end
		clone_2_upvr.CFrame = CFrame.new(var45, Vector3.new(Position_upvr.X, var45.Y, Position_upvr.Z)) * CFrame.Angles(0, math.pi, 0)
		local any_Create_result1_upvr_2 = game:GetService("TweenService"):Create(clone_2_upvr, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
			CFrame = CFrame.new(var46_upvr, Vector3.new(Position_upvr.X, var46_upvr.Y, Position_upvr.Z)) * CFrame.Angles(0, math.pi, 0);
		})
		local var50_upvr = Position_upvr - Unit * var44
		local var51_upvw
		var51_upvw = any_Create_result1_upvr_2.Completed:Connect(function() -- Line 313
			--[[ Upvalues[8]:
				[1]: clone_2_upvr (readonly)
				[2]: var46_upvr (readonly)
				[3]: var50_upvr (readonly)
				[4]: Size_upvr (readonly)
				[5]: Position_upvr (readonly)
				[6]: var51_upvw (read and write)
				[7]: any_Create_result1_upvr_2 (readonly)
				[8]: arg1 (readonly)
			]]
			clone_2_upvr.Parent = workspace.Debris.Fish
			clone_2_upvr.Transparency = 1
			task.wait()
			clone_2_upvr.Transparency = 0
			local NumberValue_upvr = Instance.new("NumberValue")
			NumberValue_upvr.Value = 0
			local any_Create_result1_upvr = game:GetService("TweenService"):Create(NumberValue_upvr, TweenInfo.new(1.5, Enum.EasingStyle.Linear), {
				Value = 1;
			})
			any_Create_result1_upvr:Play()
			local any_Connect_result1_upvw = NumberValue_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 333
				--[[ Upvalues[6]:
					[1]: NumberValue_upvr (readonly)
					[2]: var46_upvr (copied, readonly)
					[3]: var50_upvr (copied, readonly)
					[4]: Size_upvr (copied, readonly)
					[5]: clone_2_upvr (copied, readonly)
					[6]: Position_upvr (copied, readonly)
				]]
				local Value = NumberValue_upvr.Value
				local any_Lerp_result1 = var46_upvr:Lerp(var50_upvr, Value)
				local vector3 = Vector3.new(any_Lerp_result1.X, var46_upvr.Y + math.sin(math.pi * Value) * 5, any_Lerp_result1.Z)
				clone_2_upvr.Size = Vector3.new(Size_upvr.X, math.clamp(Size_upvr.Y * Value * 3, 0, Size_upvr.Y), Size_upvr.Z)
				local var59 = Position_upvr
				local var60 = CFrame.new(vector3, Vector3.new(var59.X, vector3.Y, var59.Z)) * CFrame.Angles(0, math.pi, 0) * CFrame.Angles(math.rad(-30 + 80 * Value), 0, 0)
				clone_2_upvr.CFrame = var60 + var60.LookVector * -(Size_upvr.Z / 2)
			end)
			local var63_upvw
			var63_upvw = any_Create_result1_upvr.Completed:Connect(function() -- Line 357
				--[[ Upvalues[8]:
					[1]: any_Connect_result1_upvw (read and write)
					[2]: NumberValue_upvr (readonly)
					[3]: clone_2_upvr (copied, readonly)
					[4]: var63_upvw (read and write)
					[5]: var51_upvw (copied, read and write)
					[6]: any_Create_result1_upvr (readonly)
					[7]: any_Create_result1_upvr_2 (copied, readonly)
					[8]: arg1 (copied, readonly)
				]]
				any_Connect_result1_upvw:Disconnect()
				NumberValue_upvr:Destroy()
				if clone_2_upvr and clone_2_upvr.Parent then
					clone_2_upvr:Destroy()
				end
				var63_upvw:Disconnect()
				var51_upvw:Disconnect()
				any_Create_result1_upvr:Destroy()
				any_Create_result1_upvr_2:Destroy()
				arg1:SplashVFX()
			end)
		end)
		any_Create_result1_upvr_2:Play()
	end
end
local tbl_upvr = {}
local random_state_upvr = Random.new()
function tbl_upvr_2.ShakeVFX(arg1) -- Line 376
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: random_state_upvr (readonly)
		[4]: Utils_upvr (readonly)
	]]
	local var66_upvr = workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters[arg1.Part.Name]
	if not var66_upvr then
	else
		if tbl_upvr[var66_upvr] then return end
		tbl_upvr[var66_upvr] = var66_upvr.CFrame
		Utils_upvr.Animation(var66_upvr, {
			CFrame = tbl_upvr[var66_upvr] * CFrame.new(random_state_upvr:NextInteger(-25, 25) / 50, 0, random_state_upvr:NextInteger(-25, 25) / 50);
		}, 0.35, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0, true, 0, function() -- Line 399
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: var66_upvr (readonly)
			]]
			tbl_upvr[var66_upvr] = nil
		end)
	end
end
local CollectionService_upvr = game:GetService("CollectionService")
function tbl_upvr_2.SplashVFX(arg1) -- Line 405
	--[[ Upvalues[4]:
		[1]: Utils_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: CollectionService_upvr (readonly)
	]]
	Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Splash, false, arg1.Part, 50)
	local SOME = workspace.Debris.Players[LocalPlayer_upvr.Name].CageSetters:FindFirstChild(arg1.Part.Name)
	if SOME then
		local Part_upvr = Instance.new("Part")
		Part_upvr.CastShadow = false
		Part_upvr.Anchored = true
		Part_upvr.CanCollide = false
		Part_upvr.Shape = Enum.PartType.Cylinder
		Part_upvr.Size = Vector3.new(0.30000, 1, 1)
		Part_upvr.BrickColor = BrickColor.new(0, 0, 255)
		Part_upvr.Transparency = 0.05
		Part_upvr.CFrame = SOME.CFrame * CFrame.Angles(0, 0, (math.pi/2)) * CFrame.new(0.3, 0, 0)
		CollectionService_upvr:AddTag(Part_upvr, "SplashPart")
		Part_upvr.Parent = workspace.Debris.Players[LocalPlayer_upvr.Name].VFX
		local var72 = arg1.Part.Size.X * 1.5
		Utils_upvr.Animation(Part_upvr, {
			Size = Vector3.new(0.3, var72, var72);
			Transparency = 1;
		}, 2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 437
			--[[ Upvalues[1]:
				[1]: Part_upvr (readonly)
			]]
			Part_upvr:Destroy()
		end)
	end
end
local tbl_upvr_3 = {}
local Registry_upvr = require(script.Registry)
function module.Handle(arg1, arg2, arg3, arg4) -- Line 447
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: Registry_upvr (readonly)
	]]
	if not arg2 then
	else
		if not tbl_upvr_3[arg2] then
			local var77 = arg3
			if arg4 then
				var77 = false
			end
			tbl_upvr_3[arg2] = tbl_upvr_2.new(arg2, var77)
			Registry_upvr.Register(tostring(arg2), tbl_upvr_3[arg2])
		end
		local var78 = tbl_upvr_3[arg2]
		if arg1 == "StartBobbing" then
			return var78:StartBobbing()
		end
		if arg1 == "StopBobbing" then
			return var78:StopBobbing()
		end
		if arg1 == "Sink" then
			return var78:Sink(arg4)
		end
		if arg1 == "Return" then
			return var78:Return()
		end
		if arg1 == "Hide" then
			return var78:HideFromPlayer()
		end
	end
end
return module