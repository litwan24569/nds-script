local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "NDS GUI",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "Wait a little bit",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "Hello"
	}
})
local Tab = Window:CreateTab("Main", 4034483344) -- Title, Image
local Section = Tab:CreateSection("Teleport to:")
local Button = Tab:CreateButton({
	Name = "Spawn",
	Callback = function() local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-308.9913330078125, 179.59996032714844, 311.3014831542969); -- Change x,y,z to the coordinates you got

		-- The function that takes place when the button is pressed
	end,
})
local Button = Tab:CreateButton({
	Name = "Map",
	Callback = function()
	local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(0.1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-124.25569915771484, 47.39999008178711, 2.0680651664733887); -- Change x,y,z to the coordinates you got
		-- The function that takes place when the button is pressed
	end,
})
local Section = Tab:CreateSection("Player")
local Slider = Tab:CreateSlider({
	Name = "Walkspeed",
	Range = {0, 132},
	Increment = 1,
	Suffix = "",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		-- The function that takes place when the slider changes
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})
local Slider = Tab:CreateSlider({
	Name = "Jump Power",
	Range = {0, 132},
	Increment = 1,
	Suffix = "",
	CurrentValue = 50,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		-- The function that takes place when the slider changes
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})
local Button = Tab:CreateButton({
	Name = "Disable Fall Damage",
	Callback = function()
	game.Players.LocalPlayer.Character.FallDamageScript:Remove()
	end,
})
local Section = Tab:CreateSection("Disasters")
local Button = Tab:CreateButton({
	Name = "Next Disaster",
	Callback = function()
    local dis = game.Workspace[game.Players.LocalPlayer.Name].SurvivalTag.Value
    game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Warning!", -- Required
	Text = (dis), -- Required
	Icon = "rbxthumb://type=Asset&id=1171174601&w=150&h=150",
	Duration = 5,
	Button1 = "OK";
})
		-- The function that takes place when the button is pressed
	end,
})
local Button = Tab:CreateButton({
	Name = "Remove Blizzard Screen",
	Callback = function()
	game:GetService("Players").Pupok_Obambl228.PlayerGui.BlizzardGui.Enabled = false
	game:GetService("Workspace").Structure.Cloud:Remove()
		-- The function that takes place when the button is pressed
	end,
})
local Button = Tab:CreateButton({
	Name = "Remove Storm Cloud",
	Callback = function()
	game:GetService("Workspace").Structure.Cloud:Remove()
		-- The function that takes place when the button is pressed
	end,
})
local Button = Tab:CreateButton({
	Name = "Remove Sandstorm Screen",
	Callback = function()
	game.Players.LocalPlayer.Character.PlayerGui.SandStormGui:Remove()
	game:GetService("Workspace").Structure.Cloud:Remove()
		-- The function that takes place when the button is pressed
	end,
})
local Button = Tab:CreateButton({
	Name = "Remove Infection",
	Callback = function()
	game.Players.LocalPlayer.Character.InfectedTag:Remove()
		-- The function that takes place when the button is pressed
	end,
})
local Section = Tab:CreateSection("Tools")
local Button = Tab:CreateButton({
	Name = "Get Balloon*",
	Callback = function()
	if game.Workspace:FindFirstChild("GreenBalloon", true) then -- Check for stealable GreenBalloon 
	balloonClone = game.Workspace:FindFirstChild("GreenBalloon", true):Clone() -- clone it 
	balloonClone.Parent = game:GetService("Players").LocalPlayer.Backpack
end

		-- The function that takes place when the button is pressed
	end,
})
local Label = Tab:CreateLabel("* - Will only work if someone on the server has a balloon")
local Section = Tab:CreateSection("Other")
local Button = Tab:CreateButton({
	Name = "Island Collisions",
	Callback = function()
	local children=Workspace.Island:GetChildren()
	for index, value in pairs(children) do
	if value:IsA("BasePart") then --make sure we are editing a part!
	value.CanCollide=true
	end
	end
		-- The function that takes place when the button is pressed
	end,
})