-- Name: Player
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Player
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5449485999997705 seconds

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
-- Decompiled on 2026-04-10 16:49:32
-- Luau version 6, Types version 3
-- Time taken: 0.001695 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module = {
	isDataLoaded = function() -- Line 16, Named "isDataLoaded"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		return LocalPlayer_upvr:GetAttribute("ProfileSet")
	end;
	waitForDataLoad = function() -- Line 17, Named "waitForDataLoad"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		LocalPlayer_upvr:GetAttributeChangedSignal("ProfileSet"):Wait()
	end;
	isLoaded = function() -- Line 19, Named "isLoaded"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		return LocalPlayer_upvr:GetAttribute("ServerSet")
	end;
	waitForLoad = function() -- Line 20, Named "waitForLoad"
		--[[ Upvalues[1]:
			[1]: LocalPlayer_upvr (readonly)
		]]
		LocalPlayer_upvr:GetAttributeChangedSignal("ServerSet"):Wait()
	end;
}
local ClientResolver_upvr = require(game:GetService("ReplicatedStorage").Modules.ClientResolver)
function module.getPlotId() -- Line 22
	--[[ Upvalues[2]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	for i, v in ClientResolver_upvr.Resolve("SCache", "Plots"), nil do
		if v.Player == LocalPlayer_upvr.UserId then
			return i
		end
	end
end
return module