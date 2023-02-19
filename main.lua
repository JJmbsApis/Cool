-- Gui to Lua
-- Version: 3.2

-- Instances:

local Turioasaid = Instance.new("ScreenGui")
local Other = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")

--Properties:

Turioasaid.Name = "Turioasaid"
Turioasaid.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Turioasaid.ResetOnSpawn = false

Other.Name = "Other"
Other.Parent = Turioasaid
Other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Other.BackgroundTransparency = 1.000
Other.Position = UDim2.new(0.118990384, 0, 0.0424592383, 0)
Other.Size = UDim2.new(0, 125, 0, 179)
Other.Image = "rbxassetid://3570695787"
Other.ImageColor3 = Color3.fromRGB(34, 34, 34)
Other.ScaleType = Enum.ScaleType.Slice
Other.SliceCenter = Rect.new(100, 100, 100, 100)
Other.SliceScale = 0.120

TextButton.Parent = Other
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0, 0, 0.17318435, 0)
TextButton.Size = UDim2.new(0, 125, 0, 50)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "AutoFarm: OFF"
TextButton.TextColor3 = Color3.fromRGB(136, 255, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Frame.Parent = Turioasaid
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.118990384, 0, 0.0424592383, 0)
Frame.Size = UDim2.new(0, 125, 0, 25)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 102, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "RandomHub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.815999985, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 23, 0, 25)
ImageButton.Image = "http://www.roblox.com/asset/?id=11560341824"

-- Scripts:

local function MIFM_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "AutoFarm: OFF" then
			script.Parent.Text = "AutoFarm: ON"
			repeat
				game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(28.635387420654297, 204.80914306640625, -39.55120849609375))
				wait(5)
				game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-999373.03125, -195.43666076660156, -41.42085266113281))
				wait(5)
				game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1500373.03125, -195.43666076660156, -41.42085266113281))
				wait(2)
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
				wait(6)
			until script.Parent.Text == "AutoFarm: OFF"
		else
			script.Parent.Text = "AutoFarm: OFF"
		end
	end)
end
coroutine.wrap(MIFM_fake_script)()
local function IBHRC_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Other.Visible = not script.Parent.Parent.Parent.Other.Visible
	end)
end
coroutine.wrap(IBHRC_fake_script)()
