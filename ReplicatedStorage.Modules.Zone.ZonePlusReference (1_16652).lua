-- Name: ZonePlusReference
-- Path: game:GetService("ReplicatedStorage").Modules.Zone.ZonePlusReference
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.545068600000377 seconds

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
-- Decompiled on 2026-04-10 16:50:51
-- Luau version 6, Types version 3
-- Time taken: 0.002470 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
return {
	addToReplicatedStorage = function() -- Line 9, Named "addToReplicatedStorage"
		--[[ Upvalues[1]:
			[1]: ReplicatedStorage_upvr (readonly)
		]]
		if ReplicatedStorage_upvr:FindFirstChild(script.Name) then
			return false
		end
		local ObjectValue = Instance.new("ObjectValue")
		ObjectValue.Name = script.Name
		ObjectValue.Value = script.Parent
		ObjectValue.Parent = ReplicatedStorage_upvr
		local var4 = "BoolValue"
		local any = Instance.new(var4)
		if game:GetService("RunService"):IsClient() then
			var4 = "Client"
		else
			var4 = "Server"
		end
		any.Name = var4
		any.Value = true
		any.Parent = ObjectValue
		return ObjectValue
	end;
	getObject = function() -- Line 25, Named "getObject"
		--[[ Upvalues[1]:
			[1]: ReplicatedStorage_upvr (readonly)
		]]
		local SOME = ReplicatedStorage_upvr:FindFirstChild(script.Name)
		if SOME then
			return SOME
		end
		return false
	end;
}