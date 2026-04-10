-- Name: CraftItems
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.CraftItems
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.555034599999999 seconds

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
-- Decompiled on 2026-04-10 16:49:45
-- Luau version 6, Types version 3
-- Time taken: 0.008074 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local UIController_upvr = require(script.Parent.Parent.UIController)
local CraftItems_upvr = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").Centre.CraftItems
local Items_upvr = CraftItems_upvr.Items
local Recipe_upvr = CraftItems_upvr.Recipe
local Ingredients_upvr = Recipe_upvr.Ingredients
local Item_upvr = Recipe_upvr.Item
local CraftItem_upvr = ReplicatedStorage.Resources.Templates.CraftItem
local var10_upvw
local function _(arg1, arg2) -- Line 73, Named "getItemPropertiesByName"
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	for _, v in Library_upvr.Items[arg2] do
		if v.Name == arg1 then
			return v
		end
	end
end
local Baits_upvr = ReplicatedStorage.Resources.Templates.Baits
local Cages_upvr = ReplicatedStorage.Resources.Templates.Cages
local function showItem_upvr(arg1, arg2) -- Line 79, Named "showItem"
	--[[ Upvalues[3]:
		[1]: Library_upvr (readonly)
		[2]: Baits_upvr (readonly)
		[3]: Cages_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [16.9]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [16.2]
	if nil == arg2.Name then
		-- KONSTANTWARNING: GOTO [19] #14
	end
	-- KONSTANTERROR: [10] 8. Error Block 27 end (CF ANALYSIS FAILED)
end
local function clearIngredients_upvr() -- Line 98, Named "clearIngredients"
	--[[ Upvalues[1]:
		[1]: Ingredients_upvr (readonly)
	]]
	for _, v_2 in Ingredients_upvr:GetChildren() do
		if v_2:IsA("TextButton") then
			v_2:Destroy()
		end
	end
end
local Ingredient_upvr = ReplicatedStorage.Resources.Templates.Ingredient
local function showIngredients_upvr(arg1) -- Line 104, Named "showIngredients"
	--[[ Upvalues[4]:
		[1]: clearIngredients_upvr (readonly)
		[2]: Ingredient_upvr (readonly)
		[3]: showItem_upvr (readonly)
		[4]: Ingredients_upvr (readonly)
	]]
	clearIngredients_upvr()
	for _, v_3 in arg1 do
		for _ = 1, v_3.Amount do
			local clone_3 = Ingredient_upvr:Clone()
			showItem_upvr(clone_3, v_3)
			clone_3.Parent = Ingredients_upvr
		end
	end
end
local function _(arg1, arg2) -- Line 119, Named "showRecipe"
	--[[ Upvalues[4]:
		[1]: showItem_upvr (readonly)
		[2]: Item_upvr (readonly)
		[3]: showIngredients_upvr (readonly)
		[4]: Recipe_upvr (readonly)
	]]
	showItem_upvr(Item_upvr, arg2)
	showIngredients_upvr(arg2.Recipe)
	Recipe_upvr.Visible = true
end
local function _(arg1, arg2) -- Line 127, Named "setItem"
	--[[ Upvalues[7]:
		[1]: CraftItem_upvr (readonly)
		[2]: showItem_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: Recipe_upvr (readonly)
		[5]: Item_upvr (readonly)
		[6]: showIngredients_upvr (readonly)
		[7]: Items_upvr (readonly)
	]]
	local clone_2 = CraftItem_upvr:Clone()
	showItem_upvr(clone_2, arg2)
	clone_2.MouseButton1Click:Connect(function() -- Line 131
		--[[ Upvalues[7]:
			[1]: var10_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: Recipe_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: showItem_upvr (copied, readonly)
			[6]: Item_upvr (copied, readonly)
			[7]: showIngredients_upvr (copied, readonly)
		]]
		if var10_upvw and var10_upvw.Id == arg1 then
			Recipe_upvr.Visible = false
			var10_upvw = nil
		else
			local tbl = {}
			tbl.Id = arg1
			tbl.Info = arg2
			var10_upvw = tbl
			local var28 = arg2
			showItem_upvr(Item_upvr, var28)
			showIngredients_upvr(var28.Recipe)
			Recipe_upvr.Visible = true
		end
	end)
	clone_2.LayoutOrder = arg1
	clone_2.Parent = Items_upvr
end
local Craft_upvr = Recipe_upvr.Craft
local Server_upvr = ReplicatedStorage.Remotes.Server
local any_new_result1 = require(ReplicatedStorage.Modules.Zone).new(workspace.CraftingZone)
any_new_result1.localPlayerEntered:Connect(function() -- Line 161
	--[[ Upvalues[2]:
		[1]: CraftItems_upvr (readonly)
		[2]: UIController_upvr (readonly)
	]]
	if not CraftItems_upvr.Visible then
		UIController_upvr.toggleFrame(CraftItems_upvr)
	end
end)
any_new_result1.localPlayerExited:Connect(function() -- Line 167
	--[[ Upvalues[2]:
		[1]: CraftItems_upvr (readonly)
		[2]: UIController_upvr (readonly)
	]]
	if CraftItems_upvr.Visible then
		UIController_upvr.toggleFrame(CraftItems_upvr)
	end
end)
UIController_upvr.bindButton(CraftItems_upvr.Header.Exit, true, {function() -- Line 177
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: CraftItems_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(CraftItems_upvr)
end})
;(function() -- Line 149, Named "init"
	--[[ Upvalues[10]:
		[1]: Library_upvr (readonly)
		[2]: CraftItem_upvr (readonly)
		[3]: showItem_upvr (readonly)
		[4]: var10_upvw (read and write)
		[5]: Recipe_upvr (readonly)
		[6]: Item_upvr (readonly)
		[7]: showIngredients_upvr (readonly)
		[8]: Items_upvr (readonly)
		[9]: Craft_upvr (readonly)
		[10]: Server_upvr (readonly)
	]]
	for i_5_upvr, v_4_upvr in Library_upvr.CraftingItems do
		local clone = CraftItem_upvr:Clone()
		showItem_upvr(clone, v_4_upvr)
		clone.MouseButton1Click:Connect(function() -- Line 131
			--[[ Upvalues[7]:
				[1]: var10_upvw (copied, read and write)
				[2]: i_5_upvr (readonly)
				[3]: Recipe_upvr (copied, readonly)
				[4]: v_4_upvr (readonly)
				[5]: showItem_upvr (copied, readonly)
				[6]: Item_upvr (copied, readonly)
				[7]: showIngredients_upvr (copied, readonly)
			]]
			if var10_upvw and var10_upvw.Id == i_5_upvr then
				Recipe_upvr.Visible = false
				var10_upvw = nil
			else
				var10_upvw = {
					Id = i_5_upvr;
					Info = v_4_upvr;
				}
				local var36 = v_4_upvr
				showItem_upvr(Item_upvr, var36)
				showIngredients_upvr(var36.Recipe)
				Recipe_upvr.Visible = true
			end
		end)
		clone.LayoutOrder = i_5_upvr
		clone.Parent = Items_upvr
	end
	Craft_upvr.MouseButton1Click:Connect(function() -- Line 152
		--[[ Upvalues[2]:
			[1]: var10_upvw (copied, read and write)
			[2]: Server_upvr (copied, readonly)
		]]
		if not var10_upvw then
		else
			Server_upvr.requestCraft:FireServer(var10_upvw.Id)
		end
	end)
end)()
return {}