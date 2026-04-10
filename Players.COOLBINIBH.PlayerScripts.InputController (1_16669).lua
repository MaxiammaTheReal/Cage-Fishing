-- Name: InputController
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.InputController
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5484049000006053 seconds

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
-- Decompiled on 2026-04-10 16:49:12
-- Luau version 6, Types version 3
-- Time taken: 0.003434 seconds

local module = {}
local Services_upvr = require(game:GetService("ReplicatedStorage").Modules.Services)
local tbl_upvr_2 = {}
local tbl_upvr = {}
local var5_upvw
function module.Bind(arg1, arg2) -- Line 22
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: Services_upvr (readonly)
	]]
	if typeof(arg1) == "EnumItem" then
		if arg1.EnumType == Enum.KeyCode then
			tbl_upvr_2[arg1] = arg2
			return
		end
		if arg1 == Enum.UserInputType.Touch then
			tbl_upvr[Enum.UserInputType.Touch] = function(arg1_2) -- Line 28
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: var5_upvw (copied, read and write)
					[3]: Services_upvr (copied, readonly)
				]]
				local tick_result1_upvr = tick()
				local Position_upvr = arg1_2.Position
				if var5_upvw then
					var5_upvw:Disconnect()
				end
				var5_upvw = Services_upvr.UserInputService.InputEnded:Connect(function(arg1_3) -- Line 32, Named "onEnded"
					--[[ Upvalues[4]:
						[1]: tick_result1_upvr (readonly)
						[2]: Position_upvr (readonly)
						[3]: arg2 (copied, readonly)
						[4]: var5_upvw (copied, read and write)
					]]
					if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
					else
						if tick() - tick_result1_upvr <= 0.3 and (arg1_3.Position - Position_upvr).magnitude <= 20 then
							arg2(arg1_3)
						end
						if var5_upvw then
							var5_upvw:Disconnect()
							var5_upvw = nil
						end
					end
				end)
			end
			return
		end
		if arg1.EnumType == Enum.UserInputType then
			tbl_upvr[arg1] = arg2
		end
	end
end
function module.Unbind(arg1) -- Line 63
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if typeof(arg1) == "EnumItem" then
		if arg1.EnumType == Enum.KeyCode then
			tbl_upvr_2[arg1] = nil
			return
		end
		if arg1.EnumType == Enum.UserInputType then
			tbl_upvr[arg1] = nil
		end
	end
end
Services_upvr.UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 77
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg2 then
	else
		if tbl_upvr_2[arg1.KeyCode] then
			tbl_upvr_2[arg1.KeyCode](arg1)
			return
		end
		if tbl_upvr[arg1.UserInputType] then
			tbl_upvr[arg1.UserInputType](arg1)
		end
	end
end)
return module