local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local sections = Instance.new("Folder")
local Info = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Dupe = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Tscam = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Tscam_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local info = Instance.new("Folder")
local TextLabel2 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel3 = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel4 = Instance.new("TextLabel")
local TextLabel5 = Instance.new("TextLabel")
local dupe = Instance.new("Folder")
local dupeee = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local dupeee4 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local tscam = Instance.new("Folder")
local TextLabel_3 = Instance.new("TextLabel")
local RPETS = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local APETS = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.315706372, 0, 0.290085673, 0)
Frame.Size = UDim2.new(0, 423, 0, 248)
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Frame_2.Position = UDim2.new(0.0260047279, 0, 0.0403225794, 0)
Frame_2.Size = UDim2.new(0, 402, 0, 229)

UICorner_2.Parent = Frame_2

sections.Name = "sections"
sections.Parent = Frame_2

Info.Name = "Info"
Info.Parent = sections
Info.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Info.Position = UDim2.new(0.0223880596, 0, 0.270742357, 0)
Info.Size = UDim2.new(0, 78, 0, 33)
Info.Font = Enum.Font.FredokaOne
Info.Text = "Info"
Info.TextColor3 = Color3.fromRGB(0, 0, 0)
Info.TextScaled = true
Info.TextSize = 14.000
Info.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = Info

Dupe.Name = "Dupe"
Dupe.Parent = sections
Dupe.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Dupe.Position = UDim2.new(0.0223880596, 0, 0.454148471, 0)
Dupe.Size = UDim2.new(0, 78, 0, 33)
Dupe.Font = Enum.Font.FredokaOne
Dupe.Text = "Dupe"
Dupe.TextColor3 = Color3.fromRGB(0, 0, 0)
Dupe.TextScaled = true
Dupe.TextSize = 14.000
Dupe.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 16)
UICorner_4.Parent = Dupe

Tscam.Name = "Tscam"
Tscam.Parent = sections
Tscam.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Tscam.Position = UDim2.new(0.0223880596, 0, 0.633187771, 0)
Tscam.Size = UDim2.new(0, 78, 0, 33)
Tscam.Font = Enum.Font.FredokaOne
Tscam.Text = "Trade-Scam"
Tscam.TextColor3 = Color3.fromRGB(0, 0, 0)
Tscam.TextScaled = true
Tscam.TextSize = 14.000
Tscam.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 16)
UICorner_5.Parent = Tscam


UICorner_6.CornerRadius = UDim.new(0, 16)
UICorner_6.Parent = Tscam_2

info.Name = "info"
info.Parent = Frame_2

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = info
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.BackgroundTransparency = 1.000
TextLabel2.Position = UDim2.new(0.238805965, 0, 0.270742357, 0)
TextLabel2.Size = UDim2.new(0, 305, 0, 30)
TextLabel2.Font = Enum.Font.GothamBlack
TextLabel2.Text = "Welcome to SnowyHub V2!"
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14.000
TextLabel2.TextWrapped = true

TextLabel.Parent = info
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.238805965, 0, 0.399713367, 0)
TextLabel.Size = UDim2.new(0, 189, 0, 22)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Dupe supported for:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = info
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.BackgroundTransparency = 1.000
TextLabel3.Position = UDim2.new(0.238805965, 0, 0.749158263, 0)
TextLabel3.Size = UDim2.new(0, 164, 0, 32)
TextLabel3.Font = Enum.Font.GothamBlack
TextLabel3.Text = "DUPE STATUS: "
TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14.000
TextLabel3.TextWrapped = true

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = info
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1.000
TextLabel1.Position = UDim2.new(0.6470173, 0, 0.749158263, 0)
TextLabel1.Size = UDim2.new(0, 122, 0, 32)
TextLabel1.Font = Enum.Font.GothamBlack
TextLabel1.Text = "WORKING"
TextLabel1.TextColor3 = Color3.fromRGB(34, 186, 10)
TextLabel1.TextScaled = true
TextLabel1.TextSize = 14.000
TextLabel1.TextWrapped = true

TextLabel4.Name = "TextLabel4"
TextLabel4.Parent = info
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.BackgroundTransparency = 1.000
TextLabel4.Position = UDim2.new(0.238805965, 0, 0.49578324, 0)
TextLabel4.Size = UDim2.new(0, 130, 0, 23)
TextLabel4.Font = Enum.Font.GothamBlack
TextLabel4.Text = "any executer"
TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.TextScaled = true
TextLabel4.TextSize = 14.000
TextLabel4.TextWrapped = true

TextLabel5.Name = "TextLabel5"
TextLabel5.Parent = info
TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.BackgroundTransparency = 1.000
TextLabel5.Position = UDim2.new(0.238805965, 0, 0.596219897, 0)
TextLabel5.Size = UDim2.new(0, 92, 0, 23)
TextLabel5.Font = Enum.Font.GothamBlack
TextLabel5.Text = "Beta Script!"
TextLabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.TextScaled = true
TextLabel5.TextSize = 14.000
TextLabel5.TextWrapped = true

dupe.Name = "dupe"
dupe.Parent = Frame_2

dupeee.Name = "dupeee"
dupeee.Parent = dupe
dupeee.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
dupeee.Position = UDim2.new(0.353233844, 0, 0.305676848, 0)
dupeee.Size = UDim2.new(0, 82, 0, 46)
dupeee.Visible = false
dupeee.Font = Enum.Font.FredokaOne
dupeee.Text = "Duplicate Weapons 2x"
dupeee.TextColor3 = Color3.fromRGB(0, 0, 0)
dupeee.TextScaled = true
dupeee.TextSize = 14.000
dupeee.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 16)
UICorner_7.Parent = dupeee

dupeee4.Name = "dupeee4"
dupeee4.Parent = dupe
dupeee4.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
dupeee4.Position = UDim2.new(0.639303505, 0, 0.305676848, 0)
dupeee4.Size = UDim2.new(0, 82, 0, 46)
dupeee4.Visible = false
dupeee4.Font = Enum.Font.FredokaOne
dupeee4.Text = "instant dupe "
dupeee4.TextColor3 = Color3.fromRGB(0, 0, 0)
dupeee4.TextScaled = true
dupeee4.TextSize = 14.000
dupeee4.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 16)
UICorner_8.Parent = dupeee4

tscam.Name = "tscam"
tscam.Parent = Frame_2

TextLabel_3.Parent = tscam
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.238805965, 0, 0.264442146, 0)
TextLabel_3.Size = UDim2.new(0, 292, 0, 43)
TextLabel_3.Visible = false
TextLabel_3.Font = Enum.Font.GothamBlack
TextLabel_3.Text = "NEW BETA, please report bugs to Snowy!"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

RPETS.Name = "RPETS"
RPETS.Parent = tscam
RPETS.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
RPETS.Position = UDim2.new(0.320895523, 0, 0.497816592, 0)
RPETS.Size = UDim2.new(0, 95, 0, 45)
RPETS.Visible = false
RPETS.Font = Enum.Font.FredokaOne
RPETS.Text = "ON"
RPETS.TextColor3 = Color3.fromRGB(0, 0, 0)
RPETS.TextScaled = true
RPETS.TextSize = 14.000
RPETS.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 16)
UICorner_9.Parent = RPETS

APETS.Name = "APETS"
APETS.Parent = tscam
APETS.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
APETS.Position = UDim2.new(0.624378085, 0, 0.497816592, 0)
APETS.Size = UDim2.new(0, 95, 0, 45)
APETS.Visible = false
APETS.Font = Enum.Font.FredokaOne
APETS.Text = "OFF"
APETS.TextColor3 = Color3.fromRGB(0, 0, 0)
APETS.TextScaled = true
APETS.TextSize = 14.000
APETS.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 16)
UICorner_10.Parent = APETS

TextLabel_4.Parent = Frame_2
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(0, 402, 0, 52)
TextLabel_4.Font = Enum.Font.GothamBlack
TextLabel_4.Text = "Venex Hub - v2"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Frame_2
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.238805965, 0, 0.890829682, 0)
TextLabel_5.Size = UDim2.new(0, 305, 0, 25)
TextLabel_5.Font = Enum.Font.GothamBlack
TextLabel_5.Text = "made by Snowy"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

-- Scripts:

local function EODYNV_fake_script() -- Info.LocalScript 
	local script = Instance.new('LocalScript', Info)

	local frame = script.Parent.Parent.Parent

	script.Parent.MouseButton1Down:connect(function()
		frame.info.TextLabel.Visible = true
		frame.info.TextLabel1.Visible = true
		frame.info.TextLabel2.Visible = true
		frame.info.TextLabel3.Visible = true
		frame.info.TextLabel4.Visible = true
		frame.info.TextLabel5.Visible = true

		frame.tscam.TextLabel.Visible = false
		frame.tscam.RPETS.Visible = false
		frame.tscam.APETS.Visible = false

		frame.dupe.dupeee.Visible = false
		frame.dupe.dupeee4.Visible = false
		frame.dupe.TextLabel.Visible = false
	end)
end
coroutine.wrap(EODYNV_fake_script)()
local function EEJKFSX_fake_script() -- Dupe.LocalScript 
	local script = Instance.new('LocalScript', Dupe)

	local frame = script.Parent.Parent.Parent

	script.Parent.MouseButton1Down:connect(function()
		frame.info.TextLabel.Visible = false
		frame.info.TextLabel1.Visible = false
		frame.info.TextLabel2.Visible = false
		frame.info.TextLabel3.Visible = false
		frame.info.TextLabel4.Visible = false
		frame.info.TextLabel5.Visible = false

		frame.tscam.TextLabel.Visible = false
		frame.tscam.RPETS.Visible = false
		frame.tscam.APETS.Visible = false

		frame.dupe.dupeee.Visible = true
		frame.dupe.TextLabel.Visible = true
		frame.dupe.dupeee4.Visible = true
	end)
end
coroutine.wrap(EEJKFSX_fake_script)()
local function QBBE_fake_script() -- Tscam.LocalScript 
	local script = Instance.new('LocalScript', Tscam)

	local frame = script.Parent.Parent.Parent

	script.Parent.MouseButton1Down:connect(function()
		frame.info.TextLabel.Visible = false
		frame.info.TextLabel1.Visible = false
		frame.info.TextLabel2.Visible = false
		frame.info.TextLabel3.Visible = false
		frame.info.TextLabel4.Visible = false
		frame.info.TextLabel5.Visible = false

		frame.tscam.TextLabel.Visible = true
		frame.tscam.RPETS.Visible = true
		frame.tscam.APETS.Visible = true

		frame.dupe.dupeee.Visible = false
		frame.dupe.TextLabel.Visible = false
		frame.dupe.dupeee4.Visible = false
	end)
end
coroutine.wrap(QBBE_fake_script)()
local function FKRP_fake_script() -- Tscam_2.LocalScript 
	local script = Instance.new('LocalScript', Tscam_2)

	local frame = script.Parent.Parent.Parent

	script.Parent.MouseButton1Down:connect(function()
		frame.info.TextLabel.Visible = false
		frame.info.TextLabel1.Visible = false
		frame.info.TextLabel2.Visible = false
		frame.info.TextLabel3.Visible = false
		frame.info.TextLabel4.Visible = false
		frame.info.TextLabel5.Visible = false

		frame.tscam.TextLabel.Visible = true
		frame.tscam.RPETS.Visible = true
		frame.tscam.APETS.Visible = true

		frame.dupe.dupeee.Visible = false
		frame.dupe.TextLabel.Visible = false
		frame.dupe.dupeee4.Visible = false
	end)
end
coroutine.wrap(FKRP_fake_script)()
