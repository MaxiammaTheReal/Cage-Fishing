-- Name: ServerLuck
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.ServerLuck
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5606246999996074 seconds

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
-- Decompiled on 2026-04-10 16:49:46
-- Luau version 6, Types version 3
-- Time taken: 0.003078 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = {}
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local var4_upvw
local ServerLuck_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").Bottom.Potions.Timers.ServerLuck
function module.setTimer(arg1) -- Line 24
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: ServerLuck_upvr (readonly)
	]]
	if var4_upvw then
		task.cancel(var4_upvw)
	end
	local any_Resolve_result1_upvr = ClientResolver_upvr.Resolve("SCache", "Admin/ServerLuckMultiplier")
	var4_upvw = task.spawn(function() -- Line 28
		--[[ Upvalues[3]:
			[1]: ServerLuck_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_Resolve_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		ServerLuck_upvr.Visible = true
		for i = arg1, 0, -1 do
			local var12 = i
			local var13 = var12 // 60
			local var14 = var12 % 60
			local var15
			if var13 < 10 then
				var15 = '0'
			else
				var15 = ""
			end
			if var14 < 10 then
			else
			end
			ServerLuck_upvr.Text = `{any_Resolve_result1_upvr}x Server Luck: {var15}{var13}:{""}{var14}`
			task.wait(1)
		end
		ServerLuck_upvr.Visible = false
	end)
end
ReplicatedStorage.Remotes.Client.setServerLuckTimer.OnClientEvent:Connect(module.setTimer)
return module