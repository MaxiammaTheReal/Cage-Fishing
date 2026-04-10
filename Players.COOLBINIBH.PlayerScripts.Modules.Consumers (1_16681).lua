-- Name: Consumers
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Consumers
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7000122999997984 seconds

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
-- Decompiled on 2026-04-10 16:49:25
-- Luau version 6, Types version 3
-- Time taken: 0.041101 seconds

-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
local tbl_8_upvr = {
	WalkSpeed = 16;
}
local tbl_5_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local tbl_6_upvr = {}
local function _(arg1) -- Line 24, Named "cancelMovement"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1 and tbl_5_upvr[arg1.Name] then
		tbl_5_upvr[arg1.Name]._cancelled = true
	end
end
local function _(arg1) -- Line 30, Named "pauseMovement"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1 and tbl_5_upvr[arg1.Name] then
		local var8 = tbl_5_upvr[arg1.Name]
		var8.movementTween:Pause()
		var8.walkTrack:Stop()
	end
end
local function _(arg1) -- Line 39, Named "playMovement"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1 and tbl_5_upvr[arg1.Name] then
		local var9 = tbl_5_upvr[arg1.Name]
		var9.movementTween:Play()
		var9.walkTrack:Play()
	end
end
local Resources_upvr = ReplicatedStorage_upvr.Resources
local TweenService_upvr = game:GetService("TweenService")
local function _(arg1, arg2) -- Line 48, Named "playKickAnimation"
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: Resources_upvr (readonly)
		[3]: TweenService_upvr (readonly)
	]]
	local var12 = tbl_5_upvr[arg1]
	if not var12 then
	else
		local NPC = var12.NPC
		local class_Humanoid_6 = NPC:FindFirstChildOfClass("Humanoid")
		local HumanoidRootPart_5 = NPC:FindFirstChild("HumanoidRootPart")
		local Position_2 = HumanoidRootPart_5.Position
		local Position = arg2.Position
		local clone_upvr = Resources_upvr.Miscs.BegFeedback:Clone()
		local randint = math.random(1, #clone_upvr.BillboardGui:GetChildren())
		clone_upvr.BillboardGui[`{randint}`].TextTransparency = 0
		clone_upvr.BillboardGui[`{randint}`].TextStrokeTransparency = 0
		local any_Create_result1_upvr = TweenService_upvr:Create(clone_upvr, TweenInfo.new(5), {
			CFrame = clone_upvr.CFrame * CFrame.new(0, 2, 0);
		})
		TweenService_upvr:Create(clone_upvr.BillboardGui[`{randint}`], TweenInfo.new(5), {
			TextTransparency = 1;
			TextStrokeTransparency = 1;
		}):Play()
		any_Create_result1_upvr:Play()
		clone_upvr.Parent = NPC.Head
		any_Create_result1_upvr.Completed:Once(function() -- Line 71
			--[[ Upvalues[2]:
				[1]: any_Create_result1_upvr (readonly)
				[2]: clone_upvr (readonly)
			]]
			any_Create_result1_upvr:Destroy()
			clone_upvr:Destroy()
		end)
		HumanoidRootPart_5.CFrame = CFrame.lookAt(Position_2, Vector3.new(Position.X, Position_2.Y, Position.Z))
		task.wait(0.5)
		local class_Animator = class_Humanoid_6:FindFirstChildOfClass("Animator")
		if not class_Animator then
			class_Animator = Instance.new("Animator")
			class_Animator.Parent = class_Humanoid_6
		end
		local Animation_6 = Instance.new("Animation")
		Animation_6.Name = "KickAnimation"
		Animation_6.AnimationId = "rbxassetid://135386787566939"
		local any_LoadAnimation_result1_2_upvr = class_Animator:LoadAnimation(Animation_6)
		any_LoadAnimation_result1_2_upvr.Looped = false
		any_LoadAnimation_result1_2_upvr:Play()
		any_LoadAnimation_result1_2_upvr.Ended:Once(function() -- Line 91
			--[[ Upvalues[1]:
				[1]: any_LoadAnimation_result1_2_upvr (readonly)
			]]
			any_LoadAnimation_result1_2_upvr:Destroy()
		end)
	end
end
local function _(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 94, Named "moveNPC"
	--[[ Upvalues[5]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: tbl_6_upvr (readonly)
	]]
	task.spawn(function() -- Line 95
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: tbl_5_upvr (copied, readonly)
			[3]: tbl_8_upvr (copied, readonly)
			[4]: arg5 (readonly)
			[5]: arg3 (readonly)
			[6]: arg2 (read and write)
			[7]: Utils_upvr (copied, readonly)
			[8]: RunService_upvr (copied, readonly)
			[9]: arg4 (readonly)
			[10]: arg6 (readonly)
			[11]: tbl_6_upvr (copied, readonly)
		]]
		local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
		local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
		local var61
		if not class_Humanoid or not HumanoidRootPart then
		else
			local Name_upvr = arg1.Name
			local var63 = arg1
			if var63 then
				var61 = tbl_5_upvr
				if var61[var63.Name] then
					var61 = tbl_5_upvr
					var61 = true
					var61[var63.Name]._cancelled = var61
				end
			end
			local tbl = {}
			var61 = arg1
			tbl.NPC = var61
			var61 = false
			tbl._cancelled = var61
			tbl_5_upvr[Name_upvr] = tbl
			local var65_upvr = tbl_5_upvr[Name_upvr]
			var61 = tbl_8_upvr
			var61 = var61.WalkSpeed
			class_Humanoid.WalkSpeed = var61 or 10
			local Animate_4 = arg1:FindFirstChild("Animate")
			if Animate_4 then
				var61 = Animate_4:Destroy
				var61()
			end
			var61 = class_Humanoid:FindFirstChildOfClass("Animator")
			if not var61 then
				var61 = Instance.new("Animator")
				var61.Parent = class_Humanoid
			end
			if typeof(arg5) == "number" and arg3 then
				arg2 += (arg3.CFrame.RightVector) * (math.random(-arg5 * 100, arg5 * 100) / 100)
			end
			local Animation_4 = Instance.new("Animation")
			Animation_4.Name = "WalkAnimation"
			Animation_4.AnimationId = "rbxassetid://180426354"
			local any_LoadAnimation_result1_10 = var61:LoadAnimation(Animation_4)
			var65_upvr.walkTrack = any_LoadAnimation_result1_10
			any_LoadAnimation_result1_10.Name = "WalkTrack"
			any_LoadAnimation_result1_10.Looped = true
			any_LoadAnimation_result1_10:Play()
			arg2 = Vector3.new(arg2.X, 6.046, arg2.Z)
			local Unit_3 = (arg2 - HumanoidRootPart.Position).Unit
			HumanoidRootPart.CFrame = CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + Unit_3)
			local var70 = (HumanoidRootPart.Position - arg2).Magnitude / (tbl_8_upvr.WalkSpeed or 10)
			local var71_upvw = false
			var65_upvr.movementTween = Utils_upvr.Animation(HumanoidRootPart, {
				CFrame = CFrame.lookAt(Vector3.new(arg2.X, 6.046, arg2.Z), Vector3.new(arg2.X, 6.046, arg2.Z) + Unit_3);
			}, var70, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 148
				--[[ Upvalues[1]:
					[1]: var71_upvw (read and write)
				]]
				var71_upvw = true
			end)
			while tick() < tick() + var70 + 1 do
				if var65_upvr._cancelled then return end
				if (HumanoidRootPart.Position - arg2).Magnitude < 0.25 then break end
				if var71_upvw then break end
				RunService_upvr.Heartbeat:Wait()
			end
			if any_LoadAnimation_result1_10 then
				any_LoadAnimation_result1_10:Stop()
				any_LoadAnimation_result1_10:Destroy()
			end
			for _, v_3 in ipairs(var61:GetPlayingAnimationTracks()) do
				v_3:Stop()
			end
			local Animation_10 = Instance.new("Animation")
			Animation_10.Name = "IdleAnimation"
			Animation_10.AnimationId = "rbxassetid://180435571"
			local any_LoadAnimation_result1_11 = var61:LoadAnimation(Animation_10)
			any_LoadAnimation_result1_11.Name = "IdleTrack"
			any_LoadAnimation_result1_11.Looped = true
			any_LoadAnimation_result1_11:Play()
			if arg3 then
				if arg3:IsA("BasePart") then
					Utils_upvr.Animation(HumanoidRootPart, {
						CFrame = CFrame.new(Vector3.new(HumanoidRootPart.Position.X, 6.046, HumanoidRootPart.Position.Z), Vector3.new(HumanoidRootPart.Position.X, 6.046, HumanoidRootPart.Position.Z) + arg3.CFrame.LookVector);
					}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				end
			end
			task.delay(arg4 or 5, function() -- Line 192
				--[[ Upvalues[6]:
					[1]: tbl_5_upvr (copied, readonly)
					[2]: Name_upvr (readonly)
					[3]: var65_upvr (readonly)
					[4]: arg1 (copied, readonly)
					[5]: arg6 (copied, readonly)
					[6]: tbl_6_upvr (copied, readonly)
				]]
				if tbl_5_upvr[Name_upvr] == var65_upvr and not var65_upvr._cancelled then
					arg1:Destroy()
					tbl_5_upvr[Name_upvr] = nil
					if not arg6 then
						table.remove(tbl_6_upvr, table.find(tbl_6_upvr, Name_upvr))
					end
				end
			end)
		end
	end)
end
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
ReplicatedStorage_upvr.Remotes.Client.Consumer.OnClientEvent:Connect(function(arg1, arg2) -- Line 206
	--[[ Upvalues[7]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
		[5]: Utils_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: tbl_6_upvr (readonly)
	]]
	if arg1 == "Start" then
		local _1 = arg2[1]
		local _2 = arg2[2]
		local _3 = arg2[3]
		if _1 == nil or _2 == nil or _3 == nil then return end
		local SOME = workspace.Consumers.Waypoints:FindFirstChild("Lane".._1.."_1")
		local SOME_upvr = workspace.Consumers.Waypoints:FindFirstChild("Lane".._1.."_2")
		local SOME_2 = ReplicatedStorage_upvr.Resources.Consumers:FindFirstChild("Consumer".._2)
		if not SOME or not SOME_upvr or not SOME_2 then return end
		local clone_2_upvr = SOME_2:Clone()
		clone_2_upvr.Name = "Consumer-".._3
		clone_2_upvr.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(SOME.Position.X, 6.046, SOME.Position.Z))
		local clone = ReplicatedStorage_upvr.Resources.Interface.ConsumerTag:Clone()
		clone.Consumer.Text = Library_upvr.Consumers[_2].Name
		clone.Rarity.Text = Library_upvr.Consumers[_2].Rarity
		clone.Multiplier.Text = "Multiplier: x"..Library_upvr.Consumers[_2].Multiplier
		ReplicatedStorage_upvr.Resources.RarityGradients[Library_upvr.Consumers[_2].Rarity]:Clone().Parent = clone.Rarity
		clone.Parent = clone_2_upvr.HumanoidRootPart.Attachment
		clone_2_upvr.ModelStreamingMode = Enum.ModelStreamingMode.Persistent
		clone_2_upvr.Parent = workspace.Consumers.Models
		local var92_upvr = true
		local Position_3_upvw = SOME_upvr.Position
		local const_number_upvr_2 = 0
		local var95_upvr
		task.spawn(function() -- Line 95
			--[[ Upvalues[11]:
				[1]: clone_2_upvr (readonly)
				[2]: tbl_5_upvr (copied, readonly)
				[3]: tbl_8_upvr (copied, readonly)
				[4]: var92_upvr (readonly)
				[5]: SOME_upvr (readonly)
				[6]: Position_3_upvw (read and write)
				[7]: Utils_upvr (copied, readonly)
				[8]: RunService_upvr (copied, readonly)
				[9]: const_number_upvr_2 (readonly)
				[10]: var95_upvr (readonly)
				[11]: tbl_6_upvr (copied, readonly)
			]]
			local class_Humanoid_2 = clone_2_upvr:FindFirstChildOfClass("Humanoid")
			local HumanoidRootPart_2 = clone_2_upvr:FindFirstChild("HumanoidRootPart")
			local var102
			if not class_Humanoid_2 or not HumanoidRootPart_2 then
			else
				local Name_upvr_2 = clone_2_upvr.Name
				local var104 = clone_2_upvr
				if var104 then
					var102 = tbl_5_upvr
					if var102[var104.Name] then
						var102 = tbl_5_upvr
						var102 = true
						var102[var104.Name]._cancelled = var102
					end
				end
				local tbl_2 = {}
				var102 = clone_2_upvr
				tbl_2.NPC = var102
				var102 = false
				tbl_2._cancelled = var102
				tbl_5_upvr[Name_upvr_2] = tbl_2
				local var106_upvr = tbl_5_upvr[Name_upvr_2]
				var102 = tbl_8_upvr
				var102 = var102.WalkSpeed
				class_Humanoid_2.WalkSpeed = var102 or 10
				local Animate_3 = clone_2_upvr:FindFirstChild("Animate")
				if Animate_3 then
					var102 = Animate_3:Destroy
					var102()
				end
				var102 = class_Humanoid_2:FindFirstChildOfClass("Animator")
				if not var102 then
					var102 = Instance.new("Animator")
					var102.Parent = class_Humanoid_2
				end
				if typeof(var92_upvr) == "number" and SOME_upvr then
					Position_3_upvw += (SOME_upvr.CFrame.RightVector) * (math.random(-var92_upvr * 100, var92_upvr * 100) / 100)
				end
				local Animation_3 = Instance.new("Animation")
				Animation_3.Name = "WalkAnimation"
				Animation_3.AnimationId = "rbxassetid://180426354"
				local any_LoadAnimation_result1_7 = var102:LoadAnimation(Animation_3)
				var106_upvr.walkTrack = any_LoadAnimation_result1_7
				any_LoadAnimation_result1_7.Name = "WalkTrack"
				any_LoadAnimation_result1_7.Looped = true
				any_LoadAnimation_result1_7:Play()
				Position_3_upvw = Vector3.new(Position_3_upvw.X, 6.046, Position_3_upvw.Z)
				local Unit = (Position_3_upvw - HumanoidRootPart_2.Position).Unit
				HumanoidRootPart_2.CFrame = CFrame.lookAt(HumanoidRootPart_2.Position, HumanoidRootPart_2.Position + Unit)
				local var111 = (HumanoidRootPart_2.Position - Position_3_upvw).Magnitude / (tbl_8_upvr.WalkSpeed or 10)
				local var112_upvw = false
				var106_upvr.movementTween = Utils_upvr.Animation(HumanoidRootPart_2, {
					CFrame = CFrame.lookAt(Vector3.new(Position_3_upvw.X, 6.046, Position_3_upvw.Z), Vector3.new(Position_3_upvw.X, 6.046, Position_3_upvw.Z) + Unit);
				}, var111, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 148
					--[[ Upvalues[1]:
						[1]: var112_upvw (read and write)
					]]
					var112_upvw = true
				end)
				while tick() < tick() + var111 + 1 do
					if var106_upvr._cancelled then return end
					if (HumanoidRootPart_2.Position - Position_3_upvw).Magnitude < 0.25 then break end
					if var112_upvw then break end
					RunService_upvr.Heartbeat:Wait()
				end
				if any_LoadAnimation_result1_7 then
					any_LoadAnimation_result1_7:Stop()
					any_LoadAnimation_result1_7:Destroy()
				end
				for _, v_4 in ipairs(var102:GetPlayingAnimationTracks()) do
					v_4:Stop()
				end
				local Animation_5 = Instance.new("Animation")
				Animation_5.Name = "IdleAnimation"
				Animation_5.AnimationId = "rbxassetid://180435571"
				local any_LoadAnimation_result1_9 = var102:LoadAnimation(Animation_5)
				any_LoadAnimation_result1_9.Name = "IdleTrack"
				any_LoadAnimation_result1_9.Looped = true
				any_LoadAnimation_result1_9:Play()
				if SOME_upvr then
					if SOME_upvr:IsA("BasePart") then
						Utils_upvr.Animation(HumanoidRootPart_2, {
							CFrame = CFrame.new(Vector3.new(HumanoidRootPart_2.Position.X, 6.046, HumanoidRootPart_2.Position.Z), Vector3.new(HumanoidRootPart_2.Position.X, 6.046, HumanoidRootPart_2.Position.Z) + SOME_upvr.CFrame.LookVector);
						}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					end
				end
				task.delay(const_number_upvr_2 or 5, function() -- Line 192
					--[[ Upvalues[6]:
						[1]: tbl_5_upvr (copied, readonly)
						[2]: Name_upvr_2 (readonly)
						[3]: var106_upvr (readonly)
						[4]: clone_2_upvr (copied, readonly)
						[5]: var95_upvr (copied, readonly)
						[6]: tbl_6_upvr (copied, readonly)
					]]
					if tbl_5_upvr[Name_upvr_2] == var106_upvr and not var106_upvr._cancelled then
						clone_2_upvr:Destroy()
						tbl_5_upvr[Name_upvr_2] = nil
						if not var95_upvr then
							table.remove(tbl_6_upvr, table.find(tbl_6_upvr, Name_upvr_2))
						end
					end
				end)
			end
		end)
	end
end)
local const_number_upvw = 0
task.spawn(function() -- Line 246
	--[[ Upvalues[8]:
		[1]: tbl_6_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: const_number_upvw (read and write)
		[4]: tbl_5_upvr (readonly)
		[5]: tbl_8_upvr (readonly)
		[6]: Utils_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	while task.wait(0.5) do
		local var199
		if 5 > var199 then
			var199 = 0
			local pairs_result1_3, _, pairs_result3_2 = pairs(ClientResolver_upvr.Resolve("Profile", "Inventory"))
			local var203
			for i, v in pairs_result1_3, var203, pairs_result3_2 do
				if v.Location == "Shop" then
					var199 += 1
				end
			end
			if var199 ~= 0 then
				var203 = nil
				i = workspace
				i = i.Consumers
				i = i.Models:GetChildren()
				local pairs_result1, pairs_result2_upvr, pairs_result3_upvw = pairs(i)
				for i_2, var210 in pairs_result1, pairs_result2_upvr, pairs_result3_upvw do
					if not var210:GetAttribute("AtShop") then
						local Magnitude_2 = (workspace.Consumers.Waypoints["Shop"..const_number_upvw].Position - var210.HumanoidRootPart.Position).Magnitude
						if not var203 then
							var203 = var210
							local var208_upvw = var203
						elseif Magnitude_2 < Magnitude_2 and Magnitude_2 <= 30 then
							var208_upvw = var210
						end
					end
				end
				if var208_upvw then
					pairs_result2_upvr = 0
					if pairs_result2_upvr < const_number_upvw and Magnitude_2 < 25 then
						pairs_result2_upvr = workspace
						pairs_result2_upvr = pairs_result2_upvr.Consumers
						pairs_result2_upvr = pairs_result2_upvr.Waypoints
						i_2 = "Shop"
						var210 = const_number_upvw
						pairs_result3_upvw = i_2..var210
						local var209_upvr = pairs_result2_upvr[pairs_result3_upvw]
						i_2 = "AtShop"
						var210 = true
						pairs_result2_upvr = var208_upvw:SetAttribute
						pairs_result2_upvr(i_2, var210)
						pairs_result2_upvr = var208_upvw
						pairs_result3_upvw = var209_upvr.Position
						i_2 = task.spawn
						local const_number_upvr_4 = 4
						local const_number_upvr_3 = 5
						local var213_upvr = false
						function var210() -- Line 95
							--[[ Upvalues[11]:
								[1]: pairs_result2_upvr (readonly)
								[2]: tbl_5_upvr (copied, readonly)
								[3]: tbl_8_upvr (copied, readonly)
								[4]: const_number_upvr_4 (readonly)
								[5]: var209_upvr (readonly)
								[6]: pairs_result3_upvw (read and write)
								[7]: Utils_upvr (copied, readonly)
								[8]: RunService_upvr (copied, readonly)
								[9]: const_number_upvr_3 (readonly)
								[10]: var213_upvr (readonly)
								[11]: tbl_6_upvr (copied, readonly)
							]]
							local class_Humanoid_5 = pairs_result2_upvr:FindFirstChildOfClass("Humanoid")
							local HumanoidRootPart_4 = pairs_result2_upvr:FindFirstChild("HumanoidRootPart")
							local var220
							if not class_Humanoid_5 or not HumanoidRootPart_4 then
							else
								local Name_upvr_3 = pairs_result2_upvr.Name
								local var222 = pairs_result2_upvr
								if var222 then
									var220 = tbl_5_upvr
									if var220[var222.Name] then
										var220 = tbl_5_upvr
										var220 = true
										var220[var222.Name]._cancelled = var220
									end
								end
								local tbl_10 = {}
								var220 = pairs_result2_upvr
								tbl_10.NPC = var220
								var220 = false
								tbl_10._cancelled = var220
								tbl_5_upvr[Name_upvr_3] = tbl_10
								local var224_upvr = tbl_5_upvr[Name_upvr_3]
								var220 = tbl_8_upvr
								var220 = var220.WalkSpeed
								class_Humanoid_5.WalkSpeed = var220 or 10
								local Animate = pairs_result2_upvr:FindFirstChild("Animate")
								if Animate then
									var220 = Animate:Destroy
									var220()
								end
								var220 = class_Humanoid_5:FindFirstChildOfClass("Animator")
								if not var220 then
									var220 = Instance.new("Animator")
									var220.Parent = class_Humanoid_5
								end
								if typeof(const_number_upvr_4) == "number" and var209_upvr then
									pairs_result3_upvw += (var209_upvr.CFrame.RightVector) * (math.random(-const_number_upvr_4 * 100, const_number_upvr_4 * 100) / 100)
								end
								local Animation_7 = Instance.new("Animation")
								Animation_7.Name = "WalkAnimation"
								Animation_7.AnimationId = "rbxassetid://180426354"
								local any_LoadAnimation_result1 = var220:LoadAnimation(Animation_7)
								var224_upvr.walkTrack = any_LoadAnimation_result1
								any_LoadAnimation_result1.Name = "WalkTrack"
								any_LoadAnimation_result1.Looped = true
								any_LoadAnimation_result1:Play()
								pairs_result3_upvw = Vector3.new(pairs_result3_upvw.X, 6.046, pairs_result3_upvw.Z)
								local Unit_2 = (pairs_result3_upvw - HumanoidRootPart_4.Position).Unit
								HumanoidRootPart_4.CFrame = CFrame.lookAt(HumanoidRootPart_4.Position, HumanoidRootPart_4.Position + Unit_2)
								local var229 = (HumanoidRootPart_4.Position - pairs_result3_upvw).Magnitude / (tbl_8_upvr.WalkSpeed or 10)
								local var230_upvw = false
								var224_upvr.movementTween = Utils_upvr.Animation(HumanoidRootPart_4, {
									CFrame = CFrame.lookAt(Vector3.new(pairs_result3_upvw.X, 6.046, pairs_result3_upvw.Z), Vector3.new(pairs_result3_upvw.X, 6.046, pairs_result3_upvw.Z) + Unit_2);
								}, var229, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 148
									--[[ Upvalues[1]:
										[1]: var230_upvw (read and write)
									]]
									var230_upvw = true
								end)
								while tick() < tick() + var229 + 1 do
									if var224_upvr._cancelled then return end
									if (HumanoidRootPart_4.Position - pairs_result3_upvw).Magnitude < 0.25 then break end
									if var230_upvw then break end
									RunService_upvr.Heartbeat:Wait()
								end
								if any_LoadAnimation_result1 then
									any_LoadAnimation_result1:Stop()
									any_LoadAnimation_result1:Destroy()
								end
								for _, v_5 in ipairs(var220:GetPlayingAnimationTracks()) do
									v_5:Stop()
								end
								local Animation = Instance.new("Animation")
								Animation.Name = "IdleAnimation"
								Animation.AnimationId = "rbxassetid://180435571"
								local any_LoadAnimation_result1_3 = var220:LoadAnimation(Animation)
								any_LoadAnimation_result1_3.Name = "IdleTrack"
								any_LoadAnimation_result1_3.Looped = true
								any_LoadAnimation_result1_3:Play()
								if var209_upvr then
									if var209_upvr:IsA("BasePart") then
										Utils_upvr.Animation(HumanoidRootPart_4, {
											CFrame = CFrame.new(Vector3.new(HumanoidRootPart_4.Position.X, 6.046, HumanoidRootPart_4.Position.Z), Vector3.new(HumanoidRootPart_4.Position.X, 6.046, HumanoidRootPart_4.Position.Z) + var209_upvr.CFrame.LookVector);
										}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
									end
								end
								task.delay(const_number_upvr_3 or 5, function() -- Line 192
									--[[ Upvalues[6]:
										[1]: tbl_5_upvr (copied, readonly)
										[2]: Name_upvr_3 (readonly)
										[3]: var224_upvr (readonly)
										[4]: pairs_result2_upvr (copied, readonly)
										[5]: var213_upvr (copied, readonly)
										[6]: tbl_6_upvr (copied, readonly)
									]]
									if tbl_5_upvr[Name_upvr_3] == var224_upvr and not var224_upvr._cancelled then
										pairs_result2_upvr:Destroy()
										tbl_5_upvr[Name_upvr_3] = nil
										if not var213_upvr then
											table.remove(tbl_6_upvr, table.find(tbl_6_upvr, Name_upvr_3))
										end
									end
								end)
							end
						end
						i_2(var210)
						i_2 = var209_upvr.Position
						pairs_result2_upvr = var208_upvw.HumanoidRootPart.Position - i_2
						pairs_result2_upvr = pairs_result2_upvr.Magnitude
						i_2 = tbl_8_upvr
						i_2 = i_2.WalkSpeed
						i_2 = task.delay
						var210 = pairs_result2_upvr / i_2
						i_2(var210, function() -- Line 294
							--[[ Upvalues[2]:
								[1]: ReplicatedStorage_upvr (copied, readonly)
								[2]: var208_upvw (read and write)
							]]
							ReplicatedStorage_upvr.Remotes.Server.Consumer:FireServer("AtShop", {var208_upvw.Name})
						end)
						var210 = tbl_6_upvr
						i_2 = table.insert
						i_2(var210, var208_upvw.Name)
					end
				end
			end
		end
	end
end)
local ipairs_result1_2, ipairs_result2, ipairs_result3 = ipairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [124] 91. Error Block 4 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [124] 91. Error Block 4 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [116] 86. Error Block 2 start (CF ANALYSIS FAILED)
-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [124.24]
-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [124.2147483650]
-- KONSTANTERROR: [116] 86. Error Block 2 end (CF ANALYSIS FAILED)