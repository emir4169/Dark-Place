local Lib = {}

function Lib:init()
    print("Loaded the Questline library by AcousticJamm.")
end

function Lib:onKeyPressed(key)
    if key == "q" then
		Assets.newSound("dimbox"):play()
		Game.world:openMenu(QuestMenu())
	end
end

function Lib:postInit(new_file)
	if not Game:getFlag("quest_name", nil) then
		Game:setFlag("quest_name", {"Mainline"})
		Game:setFlag("quest_id", {"mainline"})
		Game:setFlag("quest_desc", {"This is the Mainline quest. This is hardcoded into the library for the main story of your mod. The ID for this quest is 'mainline', so you can change the description."})
		Game:setFlag("quest_progress", {0})
		Game:setFlag("quest_progress_max", {0})
		Game:setFlag("quest_completed", {false})
	end
end

function Lib:createQuest(name, id, desc, progress_max)
	if not name then
		error("Quest must have name.")
	end
	if type(name) ~= "string" then
		error("Quest name must be a string (expected string, got " .. type(desc) .. ")")
	end
	if not id then
		error("Quest must have ID.")
	end
	if type(id) ~= "string" then
		error("Quest ID must be a string (expected string, got " .. type(id) .. ")")
	end
	local hasvalue = function (tab, val)
		for index, value in ipairs(tab) do
			if value == val then
				return true
			end
		end

		return false
	end
	if hasvalue(Game:getFlag("quest_id"), id) then
		error("Quest ID " .. id .. " already exists.")
	end
	if not desc then
		error("Quest must have description. (You can make it blank if you want!)")
	end
	if type(desc) ~= "string" then
		error("Quest description must be a string (expected string, got " .. type(desc) .. ")")
	end
	
	table.insert(Game:getFlag("quest_name"), name)
	table.insert(Game:getFlag("quest_id"), id)
	table.insert(Game:getFlag("quest_desc"), desc)
	table.insert(Game:getFlag("quest_progress"), 0)
	table.insert(Game:getFlag("quest_completed"), false)
	
	if progress_max then
		table.insert(Game:getFlag("quest_progress_max"), progress_max)
	else
		table.insert(Game:getFlag("quest_progress_max"), 0)
	end
end

function Lib:printQuest(id)
	locate = function( table, value )
		for i = 1, #table do
			if table[i] == value then return i end
		end
		return false
	end
	
	index = locate(Game:getFlag("quest_id"), id)
	
	if index then
		if Game:getFlag("quest_progress_max")[index] > 0 then
			Kristal.Console:log("Quest \"" .. Game:getFlag("quest_name")[index] .. "\". Progress: " .. Game:getFlag("quest_progress")[index] .. "/" .. Game:getFlag("quest_progress_max")[index])
		else
			Kristal.Console:log("Quest \"" .. Game:getFlag("quest_name")[index] .. "\". Completion: " .. tostring(Game:getFlag("quest_completed")[index]))
		end
	else
		Kristal.Console:log("Quest not found!")
	end
end

function Lib:completeQuest(id, complete)
	locate = function( table, value )
		for i = 1, #table do
			if table[i] == value then return i end
		end
		return false
	end
	
	index = locate(Game:getFlag("quest_id"), id)
	
	if not index then
		error("Quest " .. id .. " doesn't exist.")
	end
	
	if complete == false then
		Game:getFlag("quest_completed")[index] = false
	else
		Game:getFlag("quest_completed")[index] = true
	end
end

function Lib:setQuestProgress(id, progress)
	locate = function( table, value )
		for i = 1, #table do
			if table[i] == value then return i end
		end
		return false
	end
	
	if type(progress) ~= "number" then
		error("Progress must be a number (expected number, got " .. type(progress) .. ")")
	end
	
	index = locate(Game:getFlag("quest_id"), id)
	
	if not index then
		error("Quest " .. id .. " doesn't exist.")
	end
	
	if Game:getFlag("quest_progress_max")[index] <= 0 then
		error("Quest " .. id .. " isn't a progress quest.")
	end
	
	Game:getFlag("quest_progress")[index] = progress
	
	if Game:getFlag("quest_progress")[index] >= Game:getFlag("quest_progress_max")[index] then
		self:completeQuest(id)
	end
end

function Lib:addQuestProgress(id, progress)
	locate = function( table, value )
		for i = 1, #table do
			if table[i] == value then return i end
		end
		return false
	end
	
	if type(progress) ~= "number" then
		error("Progress must be a number (expected number, got " .. type(progress) .. ")")
	end
	
	index = locate(Game:getFlag("quest_id"), id)
	
	if not index then
		error("Quest " .. id .. " doesn't exist.")
	end
	
	if Game:getFlag("quest_progress_max")[index] <= 0 then
		error("Quest " .. id .. " isn't a progress quest.")
	end
	
	new_progress = Game:getFlag("quest_progress")[index] + progress
	
	self:setQuestProgress(id, new_progress)
end

function Lib:setDesc(id, desc)
	locate = function( table, value )
		for i = 1, #table do
			if table[i] == value then return i end
		end
		return false
	end
	
	if type(desc) ~= "string" then
		error("Quest description must be a string (expected string, got " .. type(desc) .. ")")
	end
	
	index = locate(Game:getFlag("quest_id"), id)
	
	if not index then
		error("Quest " .. id .. " doesn't exist.")
	end
	
	Game:getFlag("quest_desc")[index] = desc
end

return Lib