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
local PLACEHOLDER = TP:MakeTab({
    Name = "---------------",
    Icon = " ",
    PremiumOnly = true
})

local pos = {
    ["Pop It Trading ✨"] = {
        ["MainAccept"] = {213, 20, -241},
        ["AltAccept"] = {229, 20, -207},
        ["AltDecline"] = {213, 20, -208}
    },
    ["🍕Work at a Pizza Place"] = {
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
        ["Freefall"] = {0, 100, 0}
    }
}
for key, value in pairs(pos) do
    local RANDOMTABMAN = TP:MakeTab({
        Name = key,
        Icon = " ",
        PremiumOnly = false
    })
    for keyV, valueV in pairs(pos[key]) do
        RANDOMTABMAN:AddButton({
            Name = keyV,
            Callback = function()
                Teleport(key, keyV)
            end
        })
    end
end
local fastpos = {
    ["🍕Work at a Pizza Place"] = {
        ["Pizzeria"] = {65, 4, -17}
    },
    ["The Chosen One"] = {
        ["Freefall 500"] = {0, 500, 0}
    }
}
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local opt = {}

if not pos[GameName] == nil then
    for key, value in pairs(pos[GameName]) do
        table.insert(opt, key)
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

if not fastpos[GameName] == nil then
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
                Teleport(GameName, key)
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
if not pos[GameName] == nil then
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
tab:AddButton({
    Name = "Print CFrame",
    Callback = function()
        print(f3())
    end
})