-- Name: ToolBehaviour
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory.ToolBehaviour
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5362190999985614 seconds

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
-- Decompiled on 2026-04-10 16:49:15
-- Luau version 6, Types version 3
-- Time taken: 0.001463 seconds

for _, v in ipairs(script:GetChildren()) do
	if v:IsA("ModuleScript") then
		local pcall_result1_2, pcall_result2_2 = pcall(require, v)
		if pcall_result1_2 and type(pcall_result2_2) == "table" and pcall_result2_2.Type then
			({})[pcall_result2_2.Type] = pcall_result2_2
		end
	end
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
return {}