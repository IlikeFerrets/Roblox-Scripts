wait(5)

-- You can use this in Auto execute, but beware that until now i've found no way to limit the script to starscape, because of the different places.
-- Starscape Anomaly Finder.
-- Only works in the system you are in, you still have to use probe to find the anomaly location.
-- Use the minus key " - " to open and close the gui

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local anamolies = Instance.new("Frame")
local _1 = Instance.new("TextLabel")
local _2 = Instance.new("TextLabel")
local _3 = Instance.new("TextLabel")
local _4 = Instance.new("TextLabel")
local _5 = Instance.new("TextLabel")
local _6 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

anamolies.Name = "anamolies"
anamolies.Parent = ScreenGui
anamolies.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
anamolies.BackgroundTransparency = 1.000
anamolies.Position = UDim2.new(0.576219499, 0, 0, 0)
anamolies.Size = UDim2.new(0, 300, 0, 100)

_1.Name = "1"
_1.Parent = anamolies
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BackgroundTransparency = 1.000
_1.Size = UDim2.new(0, 100, 0, 50)
_1.Font = Enum.Font.SourceSans
_1.Text = "-"
_1.TextColor3 = Color3.fromRGB(85, 255, 127)
_1.TextScaled = true
_1.TextSize = 14.000
_1.TextWrapped = true

_2.Name = "2"
_2.Parent = anamolies
_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2.BackgroundTransparency = 1.000
_2.Position = UDim2.new(0, 0, 0.5, 0)
_2.Size = UDim2.new(0, 100, 0, 50)
_2.Font = Enum.Font.SourceSans
_2.Text = "-"
_2.TextColor3 = Color3.fromRGB(85, 255, 127)
_2.TextScaled = true
_2.TextSize = 14.000
_2.TextWrapped = true

_3.Name = "3"
_3.Parent = anamolies
_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_3.BackgroundTransparency = 1.000
_3.Position = UDim2.new(0.333333313, 0, 0.5, 0)
_3.Size = UDim2.new(0, 100, 0, 50)
_3.Font = Enum.Font.SourceSans
_3.Text = "-"
_3.TextColor3 = Color3.fromRGB(85, 255, 127)
_3.TextScaled = true
_3.TextSize = 14.000
_3.TextWrapped = true

_4.Name = "4"
_4.Parent = anamolies
_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_4.BackgroundTransparency = 1.000
_4.Position = UDim2.new(0.333333313, 0, 0, 0)
_4.Size = UDim2.new(0, 100, 0, 50)
_4.Font = Enum.Font.SourceSans
_4.Text = "-"
_4.TextColor3 = Color3.fromRGB(85, 255, 127)
_4.TextScaled = true
_4.TextSize = 14.000
_4.TextWrapped = true

_5.Name = "5"
_5.Parent = anamolies
_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_5.BackgroundTransparency = 1.000
_5.Position = UDim2.new(0.666666627, 0, 0, 0)
_5.Size = UDim2.new(0, 100, 0, 50)
_5.Font = Enum.Font.SourceSans
_5.Text = "-"
_5.TextColor3 = Color3.fromRGB(85, 255, 127)
_5.TextScaled = true
_5.TextSize = 14.000
_5.TextWrapped = true

_6.Name = "6"
_6.Parent = anamolies
_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_6.BackgroundTransparency = 1.000
_6.Position = UDim2.new(0.666666627, 0, 0.5, 0)
_6.Size = UDim2.new(0, 100, 0, 50)
_6.Font = Enum.Font.SourceSans
_6.Text = "-"
_6.TextColor3 = Color3.fromRGB(85, 255, 127)
_6.TextScaled = true
_6.TextSize = 14.000
_6.TextWrapped = true

-- Scripts:

local function VIVAQ_fake_script() -- anamolies.anomFinder 
	local script = Instance.new('LocalScript', anamolies)

	local aFolder = game:GetService("Workspace").Objects.Anomalies -- a stands for Anomalies
	local Anomalies = aFolder:GetChildren()
	local frame = script.Parent
	
	for i = 1, #Anomalies do
		
		local anom = Anomalies[i]
		print(anom.Name)
		frame[i].Text = anom.Name
		if i>6 then
			return
		end
	
	end
	
end
coroutine.wrap(VIVAQ_fake_script)()
local function QTNX_fake_script() -- anamolies.togglescript 
	local script = Instance.new('LocalScript', anamolies)

	
	local frame = script.Parent
	local UserInputService = game:GetService("UserInputService")
	
	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.Minus then
			if frame.Visible == false then
				frame.Visible = true
			else
				frame.Visible = false
			end
		end
	end)
	
	
end
coroutine.wrap(QTNX_fake_script)()

