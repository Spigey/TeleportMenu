local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local TP = Orion:MakeWindow({Name = "Teleports", HidePremium = false, SaveConfig = true, ConfigFolder = "ScripHub1", IntroEnabled = false})

local tab = TP:MakeTab({
    Name = "Teleports",
    Icon = " ",
    PremiumOnly = false
})

local fast = TP:MakeTab({
    Name = "Fast Teleports",
    Icon = " ",
    PremiumOnly = false
})
local GameTP = TP:MakeTab({
    Name = "Game Switcher",
    Icon = " ",
    PremiumOnly = false
})
local PLACEHOLDER = TP:MakeTab({
    Name = "------------------",
    Icon = " ",
    PremiumOnly = true
})
PLACEHOLDER:AddButton({
    Name = "DON'T CLICK ME",
    Callback = function()
        local gui = Instance.new("ScreenGui")
        gui.Name = "ExampleGui"
        gui.Parent = game.Players.LocalPlayer.PlayerGui

        local frame = Instance.new("Frame")
        frame.Name = "ExampleFrame"
        frame.Parent = gui
        frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        frame.BackgroundTransparency = 0
        frame.BorderColor3 = Color3.fromRGB(6, 6, 6)
        frame.BorderSizePixel = 3
        frame.LayoutOrder = 40
        frame.Position = UDim2.new(-100, -100, -100, -100)
        frame.Size = UDim2.new(1000, 1000, 1000, 1000)

        local yesButton = Instance.new("TextButton")
        yesButton.Name = "YesButton"
        yesButton.Parent = gui
        yesButton.BackgroundColor3 = Color3.fromRGB(40, 63, 79)
        yesButton.BackgroundTransparency = 1
        yesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        yesButton.Position = UDim2.new(0, 0, 0, 0)
        yesButton.Size = UDim2.new(0, 145, 0, 32)
        yesButton.ZIndex = 41
        yesButton.Font = Enum.Font.SourceSans
        yesButton.Text = "You're blind now"
        yesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        yesButton.TextSize = 40.000

        local function onYesButtonClicked()
            gui:Destroy()
        end
        
        yesButton.MouseButton1Click:Connect(onYesButtonClicked)
    end
})

local pos = {
    ["Pop It Trading ✨"] = {
        ["ID"] = 7346416636,
        ["Secret Board"] = {141, 19, -41},
        ["Group Board"] = {21, 19, -226},
        ["Spawn"] = {61, 19, -266}
    },
    ["🍕Work at a Pizza Place"] = {
        ["ID"] = 192800,
        ["C1"] = {-197, 7, -444},
        ["C2"] = {-197, 7, -624},
        ["C3"] = {-200, 7, -800},
        ["B1"] = {-36, 7, -432},
        ["B2"] = {41, 7, -484},
        ["B3"] = {-36, 7, -615},
        ["B4"] = {39, 7, -652},
        ["B5"] = {-35, 7, -804},
        ["B6"] = {40, 7, -836},
        ["A1"] = {204, 7, -464},
        ["A2"] = {199, 7, -624},
        ["A3"] = {204, 7, -824},
        ["Pizzeria"] = {65, 4, -17}
    },
    ["The Chosen One"] = {
        ["ID"] = 11137575513,
        ["Freefall"] = {0, 100, 0}
    },
    ["(UPD)🏆 Easy Stud Jumps Obby🏆"] = {
        ["ID"] = 11166344460,
        ["Stage 60"] = {199, 1267, -872},
        ["End"] = {199, 1267, -989},
        ["VIP Room"] = {200, -4, 250},
        ["Spawn"] = {200, -4, 210}
    },
    ["Standard roblox obby, but it's realistic"] = {
        ["ID"] = 11302741543,
        ["End"] = {38, 17, 48}
    },
    ["Cook Burgers"] = {
        ["ID"] = 2971329387,
        ["Kitchen"] = {-1, 86, -363},
        ["Lab"] = {-55, 66, -845},
        ["Secret Room"] = {127, 86, -122}
    }
}
for key, value in pairs(pos) do
    local RANDOMTABMAN = TP:MakeTab({
        Name = key,
        Icon = " ",
        PremiumOnly = false
    })
    RANDOMTABMAN:AddLabel(key)
    for keyV, valueV in pairs(pos[key]) do
        if keyV ~= "ID" then
            RANDOMTABMAN:AddButton({
                Name = keyV,
                Callback = function()
                    Teleport(key, keyV)
                end
            })
        end
    end
end
local fastpos = {
    ["🍕Work at a Pizza Place"] = {
        ["Pizzeria"] = {65, 4, -17}
    },
    ["The Chosen One"] = {
        ["Freefall 500"] = {0, 500, 0}
    },
    ["(UPD)🏆 Easy Stud Jumps Obby🏆"] = {
        ["Stage 60"] = {199, 1267, -872},
        ["End"] = {199, 1267, -989}
    }
}
function SwitchGamesGUI(GAME)
    local gui = Instance.new("ScreenGui")
gui.Name = "ExampleGui"
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Name = "ExampleFrame"
frame.Parent = gui
frame.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
frame.BackgroundTransparency = 0.100
frame.BorderColor3 = Color3.fromRGB(6, 6, 6)
frame.BorderSizePixel = 3
frame.LayoutOrder = -4
frame.Position = UDim2.new(0.410509884, 0, 0.44148019, 0)
frame.Size = UDim2.new(0, 410, 0, 136)

local textLabel = Instance.new("TextLabel")
textLabel.Name = "ExampleLabel"
textLabel.Parent = gui
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1.000
textLabel.Position = UDim2.new(0.430801243, 20, 0.441480219, 0)
textLabel.Size = UDim2.new(0, 266, 0, 74)
textLabel.ZIndex = 5
textLabel.Font = Enum.Font.SourceSans
textLabel.Text = "Are you sure you want to switch Games?"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextSize = 25.000

local yesButton = Instance.new("TextButton")
yesButton.Name = "YesButton"
yesButton.Parent = gui
yesButton.BackgroundColor3 = Color3.fromRGB(40, 63, 79)
yesButton.BackgroundTransparency = 0.250
yesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
yesButton.Position = UDim2.new(0.421956301, 0, 0.50516355, 0)
yesButton.Size = UDim2.new(0, 145, 0, 32)
yesButton.ZIndex = 5
yesButton.Font = Enum.Font.SourceSans
yesButton.Text = "Yes"
yesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
yesButton.TextSize = 19.000

local noButton = Instance.new("TextButton")
noButton.Name = "NoButton"
noButton.Parent = gui
noButton.BackgroundColor3 = Color3.fromRGB(40, 63, 79)
noButton.BackgroundTransparency = 0.250
noButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
noButton.Position = UDim2.new(0.504162312, 0, 0.50516355, 0)
noButton.Size = UDim2.new(0, 145, 0, 32)
noButton.ZIndex = 5
noButton.Font = Enum.Font.SourceSans
noButton.Text = "No"
noButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noButton.TextSize = 19.000

local function onYesButtonClicked()
    gui:Destroy()
    local gameId = pos[GAME]["ID"]
    function ServerHop(ID)
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
        module:Teleport(ID)
    end
    ServerHop(gameId)
end

local function onNoButtonClicked()
    gui:Destroy()
end

yesButton.MouseButton1Click:Connect(onYesButtonClicked)
noButton.MouseButton1Click:Connect(onNoButtonClicked)
end

for key, value in pairs(pos) do 
    GameTP:AddButton({
        Name = key,
        Callback = function()
            SwitchGamesGUI(key)
        end
    })
end


local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local opt = {}

if pos[GameName] ~= nil then
    for key, value in pairs(pos[GameName]) do
        if key ~= "ID" then
            table.insert(opt, key)
        end
    end
else
    warn("No positions found")
    tab:AddLabel("No positions found!")
end

function Teleport(Game, position)
    local character = game:GetService("Players").LocalPlayer.Character
    local teleportCFrame = CFrame.new(Vector3.new(pos[Game][position][1], pos[Game][position][2], pos[Game][position][3]))
    character:WaitForChild("HumanoidRootPart").CFrame = teleportCFrame
end
function FastTeleport(Game, position)
    local character = game:GetService("Players").LocalPlayer.Character
    local teleportCFrame = CFrame.new(Vector3.new(fastpos[Game][position][1], fastpos[Game][position][2], fastpos[Game][position][3]))
    character:WaitForChild("HumanoidRootPart").CFrame = teleportCFrame
end

if fastpos[GameName] ~= nil then
    fast:AddTextbox({
        Name = "Name TP",
        Default = " ",
        TextDisappear = false,
        Callback = function(value)
            Teleport(GameName, value)
        end
    })

    for key, value in pairs(fastpos[GameName]) do
        fast:AddButton({
            Name = key,
            Callback = function()
                FastTeleport(GameName, key)
            end
        })
    end
else
    fast:AddLabel("No FastPositions Found!")
end

function f3()
    local character = game:GetService("Players").LocalPlayer.Character
    local torsoCFrame = character:WaitForChild("HumanoidRootPart").CFrame

    local roundedX = math.round(torsoCFrame.X)
    local roundedY = math.round(torsoCFrame.Y)
    local roundedZ = math.round(torsoCFrame.Z)

    return Vector3.new(roundedX, roundedY, roundedZ)
end





local tel = ""
if pos[GameName] ~= nil then
    tab:AddLabel("Teleport Names:")
    local Teleports = tab:AddDropdown({
    	Name = "Position",
	    Default = "undefined",
	    Options = opt,
	    Callback = function(val)
            tel = val
            Teleport(GameName, tel)
	    end	  
    })
    tab:AddButton({
        Name = "Teleport Again",
        Callback = function()
            Teleport(GameName, tel)
        end
    })
end
local POSPOS = tab:AddLabel(tostring(f3()))

tab:AddButton({
    Name = "Copy CFrame",
    Callback = function()
        setclipboard(tostring(f3()))
    end
})
while wait(0.3) do
    POSPOS:Set(tostring(f3()))
end